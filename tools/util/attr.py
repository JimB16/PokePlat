
__all__ = ['temporary_attr']


class TemporaryAttr(object):
    def __init__(self, inst, attr, value, skip_magic=False):
        self.inst = inst
        self.attr = attr
        self.value = value
        self.old = None
        if skip_magic:
            self.setattr = object.__setattr__
            self.getattr = object.__getattribute__
        else:
            self.setattr = setattr
            self.getattr = getattr

    def __enter__(self):
        self.old = self.getattr(self.inst, self.attr)
        self.setattr(self.inst, self.attr, self.value)

    def __exit__(self, type_, value, traceback):
        self.setattr(self.inst, self.attr, self.old)


temporary_attr = TemporaryAttr  # Export as function


def getattr_override(target, name):
    return object.__getattribute__(target, name)


def setattr_override(target, name, value):
    return object.__setattr__(target, name, value)


def detattr_override(target, name):
    return object.__delattr__(target, name)


def de_attr(*args, **kwargs):
    raise AttributeError


class AttrClone(object):
    """Wrapper that serves as a modifiable copy of an existing valence

    It will get any attribute not set to it specifically from its base

    It will set any attribute on itself.
    """
    def __init__(self, base):
        setattr_override(self, '_base_copy', base)
        setattr_override(self, '__repr__', de_attr)
        setattr_override(self, '__str__', de_attr)

    def __getattr__(self, name):
        return getattr(getattr_override(self, '_base_copy'), name)

    def __setattr__(self, name, value):
        return getattr(getattr_override(self, '_base_copy'), name, value)


class AttrDict(dict):
    def __init__(self, *args, **kwargs):
        super(AttrDict, self).__init__(*args, **kwargs)
        self.__dict__ = self
