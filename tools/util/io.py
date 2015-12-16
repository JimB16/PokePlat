
import struct
from six import StringIO

__all__ = ['BinaryIO']

NUL = chr(0)


class StructReaders:
    """Cached built structs
    """
    int8 = struct.Struct('b')
    uint8 = struct.Struct('B')
    int16 = struct.Struct('h')
    uint16 = struct.Struct('H')
    int32 = struct.Struct('i')
    uint32 = struct.Struct('I')


class SeekReturn(object):
    """Context for returning to a position after seeking to it

    Example
    -------
    >>> writer = BinaryIO()
    >>> writer.writeUInt32(0)
    >>> writer.writeUInt32(0)
    >>> with writer.seek(0):
    ...     writer.writeUInt8(0xFF)
    ...
    >>> writer.writeUInt8(0xEE)
    >>> writer.getvalue()
    '\xff\x00\x00\x00\x00\x00\x00\x00\xee'
    """
    def __init__(self, handle, position):
        self.handle = handle
        self.position = position

    def __enter__(self):
        pass

    def __exit__(self, type_, value, traceback):
        self.handle.seek(self.position)


class BinaryIO(StringIO):
    """Reader and Writer for binary data.

    This provides useful methods for reading and writing specific binary
    types.

    To use a file handle, use BinaryIO.adapter(handle)

    Parameters
    ----------
    data : string
        Binary string to be used
    """
    def __init__(self, data=''):
        StringIO.__init__(self, data)

    def readUInt8(self):
        return StructReaders.uint8.unpack(self.read(1))[0]

    def writeUInt8(self, value):
        self.write(StructReaders.uint8.pack(value))

    def readInt8(self):
        return StructReaders.int8.unpack(self.read(1))[0]

    def writeInt8(self, value):
        self.write(StructReaders.int8.pack(value))

    def readUInt16(self):
        return StructReaders.uint16.unpack(self.read(2))[0]

    def writeUInt16(self, value):
        self.write(StructReaders.uint16.pack(value))

    def readInt16(self):
        return StructReaders.int16.unpack(self.read(2))[0]

    def writeInt16(self, value):
        self.write(StructReaders.int16.pack(value))

    def readUInt32(self):
        return StructReaders.uint32.unpack(self.read(4))[0]

    def writeUInt32(self, value):
        self.write(StructReaders.uint32.pack(value))

    def readInt32(self):
        return StructReaders.int32.unpack(self.read(4))[0]

    def writeInt32(self, value):
        self.write(StructReaders.int32.pack(value))

    def writeAlign(self, alignment=4, char='\x00'):
        """Writes char multiple times to align the writer

        Parameters
        ----------
        alignment : int
            Positive number to align with. The write buffer will
            be filled until it is divisible by this number exactly
        char : string
            String that will be written to the space. If multiple
            characters, it will get truncated the last time.
        """
        position = self.tell()
        offset = position+((-position) % alignment)
        self.writePadding(offset, char)

    def writePadding(self, offset, char='\x00'):
        """Writes char multiple times until offset is met

        Parameters
        ----------
        offset : int
            Destination offset. The buffer will be here upon
            completion of the write.
        char : string
            String that will be written to the space. If multiple
            characters, it will get truncated the last time.
        """
        position = self.tell()
        if offset <= position:
            return
        data = char*((offset-position)/len(char)+1)
        self.write(data[:offset-position])

    def readString(self):
        """Read a null terminated string

        Returns
        -------
        chars : string
            String with no nul character
        """
        chars = ''
        while True:
            char = self.read(1)
            if char == NUL:
                break
            chars += char
        return chars

    def writeString(self, chars):
        """Write a null terminated string. If the input has a null byte in
        it, it will not write past that byte. Null bytes will be added if
        not provided.

        Parameters
        ----------
        chars : string
            String to write
        """
        nullidx = chars.find(NUL)
        if nullidx == -1:
            self.write(chars)
            self.write(NUL)
        else:
            self.write(chars[:nullidx+1])

    def seek(self, offset, whence=0):
        """Seeks to the given offset

        If used in a with statement, it returns to the previous position
        after the context exits.
        """
        position = self.tell()
        StringIO.seek(self, offset, whence)
        return SeekReturn(self, position)

    def peek(self):
        """Returns a seek context to its current position. When the context
        exists, it will return back to its original position.

        Returns
        -------
        SeekReturn
        """
        return self.seek(self.tell())

    @staticmethod
    def adapter(handle):
        """Create a BinaryIOAdapter around a file handle"""
        return BinaryIOAdapter(handle)

    @staticmethod
    def reader(target):
        """Creates a new reader for appropriate type

        Parameters
        ----------
        target : unknown
            Reader available

        Returns
        -------
        reader : BinaryIO
        """
        if isinstance(target, BinaryIO):
            return target
        elif hasattr(target, 'read'):
            return BinaryIO.adapter(target)
        elif not target:
            return BinaryIO()
        else:
            return BinaryIO(target)
    writer = reader


class BinaryIOAdapter(BinaryIO):
    """Adapter for file handles

    Allows all of the BinaryIO methods to be used without a stringio object
    """
    def __init__(self, handle):
        BinaryIO.__init__(self)
        self.handle = handle

    def read(self, size=-1):
        return self.handle.read(size)

    def write(self, value):
        self.handle.write(value)

    def readline(self):
        # Faster to use underlying method
        return self.handle.readline()

    def seek(self, offset, whence=0):
        position = self.tell()
        self.handle.seek(offset, whence)
        return SeekReturn(self, position)

    def tell(self):
        return self.handle.tell()


class BoundIO(object):
    """Binds a binary_io to an object so that all of its functions use obj
    directly"""
    def __init__(self, obj, binary_io):
        self.handle = binary_io
        self.obj = obj

    def __getattr__(self, name):
        attr = super(BoundIO, self).__getattr__(name)
        if name[:4] == 'read':
            def bound_read_wrapper(target, *args, **kwargs):
                setattr(self.obj, target, attr(*args, **kwargs))
            return bound_read_wrapper
        elif name[:5] == 'write':
            def bound_write_wrapper(target, *args, **kwargs):
                attr(getattr(self.obj, target), *args, **kwargs)
            return bound_write_wrapper
        else:
            return attr
