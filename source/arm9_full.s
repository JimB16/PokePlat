

@.include "source/arm9.s"
.align 9, 0xff

@.incbin "./baserom/y9.bin"
/*ARM9 and ARM7 Overlay Tables (OVT) (base/size defined in cart header)
Somehow related to Nintendo's compiler, allows to assign compiler Overlay IDs to filesystem File IDs, and to define additional information such like load addresses.

  Addr Size Expl.
  00h  4    Overlay ID
  04h  4    RAM Address ;Point at which to load
  08h  4    RAM Size    ;Amount to load
  0Ch  4    BSS Size    ;Size of BSS data region
  10h  4    Static initialiser start address
  14h  4    Static initialiser end address
  18h  4    File ID  (0000h..EFFFh)
  1Ch  4    Reserved (zero)*/
.word 0, 0x21d0d80, 0x20, 0x0, 0x21d0d80, 0x21d0d84, 0, 0
.word 1, 0x21d0d80, 0x20, 0x20, 0x21d0d90, 0x21d0d98, 1, 0
.word 2, 0x21d0dc0, 0x20, 0x0, 0x21d0dc0, 0x21d0dc4, 2, 0
.word 3, 0x1ff8660, 0x20, 0x0, 0x1ff8660, 0x1ff8664, 3, 0
.word 4, 0x21d0d80, 0x49680, 0x5400, 0x2215e70, 0x2215e74, 4, 0
.word 5, 0x21d0d80, 0x313a0, 0x3c020, 0x2201d18, 0x2201d1c, 5, 0
.word 6, 0x223e140, 0xb800, 0x20, 0x2249858, 0x224985c, 6, 0
.word 7, 0x2249960, 0x5c40, 0x20, 0x224f4a8, 0x224f4ac, 7, 0
.word 8, 0x2249960, 0x4e20, 0x0, 0x224e73c, 0x224e740, 8, 0
.word 9, 0x2249960, 0xa380, 0x0, 0x2253af0, 0x2253af4, 9, 0
.word 10, 0x221f800, 0x3aa0, 0x0, 0x2223284, 0x2223288, 10, 0
.word 11, 0x221f800, 0x420, 0x0, 0x221fc18, 0x221fc1c, 11, 0
.word 12, 0x221fc20, 0x1b520, 0x0, 0x223b100, 0x223b104, 12, 0
.word 13, 0x221fc20, 0xa200, 0x0, 0x2229e1c, 0x2229e20, 13, 0
.word 14, 0x221fc20, 0xf460, 0x0, 0x222f060, 0x222f064, 14, 0
.word 15, 0x21d0d80, 0x20, 0x0, 0x21d0d80, 0x21d0d84, 15, 0
.word 16, 0x223b140, 0x35a80, 0x0, 0x2270b0c, 0x2270b14, 16, 0
.word 17, 0x223b140, 0x19ca0, 0x0, 0x2254dd0, 0x2254dd8, 17, 0
.word 18, 0x221f800, 0x2ba60, 0x81e0, 0x2249740, 0x2249744, 18, 0
.word 19, 0x21d0d80, 0xf860, 0x1a0, 0x21e05ac, 0x21e05b0, 19, 0
.word 20, 0x21d0d80, 0x46c0, 0x0, 0x21d5430, 0x21d5434, 20, 0
.word 21, 0x21d0d80, 0x19200, 0x0, 0x21e9f68, 0x21e9f6c, 21, 0
.word 22, 0x2254de0, 0x70a0, 0x0, 0x225be78, 0x225be7c, 22, 0
.word 23, 0x223e140, 0x19600, 0x80, 0x2256bc4, 0x2256bc8, 23, 0
.word 24, 0x2253ce0, 0x100, 0x0, 0x2253dd4, 0x2253dd8, 24, 0
.word 25, 0x2253ce0, 0x24e0, 0x0, 0x22561a4, 0x22561a8, 25, 0
.word 26, 0x22561c0, 0x5e0, 0x0, 0x2256780, 0x2256788, 26, 0
.word 27, 0x22561c0, 0xf00, 0x0, 0x22570b0, 0x22570b8, 27, 0
.word 28, 0x22561c0, 0x1900, 0x0, 0x2257aa8, 0x2257ab0, 28, 0
.word 29, 0x22561c0, 0xa60, 0x0, 0x2256c04, 0x2256c0c, 29, 0
.word 30, 0x22561c0, 0x560, 0x0, 0x2256700, 0x2256708, 30, 0
.word 31, 0x22561c0, 0x800, 0x0, 0x22569a0, 0x22569a8, 31, 0
.word 32, 0x22561c0, 0xba0, 0x0, 0x2256d48, 0x2256d50, 32, 0
.word 33, 0x22561c0, 0x17a0, 0x0, 0x225789c, 0x22578a4, 33, 0
.word 34, 0x22561c0, 0x900, 0x0, 0x2256aac, 0x2256ab4, 34, 0
.word 35, 0x22561c0, 0x600, 0x0, 0x22567a8, 0x22567b0, 35, 0
.word 36, 0x22561c0, 0x600, 0x0, 0x22567a0, 0x22567a8, 36, 0
.word 37, 0x22561c0, 0x4a0, 0x0, 0x2256644, 0x225664c, 37, 0
.word 38, 0x22561c0, 0x320, 0x0, 0x22564c0, 0x22564c8, 38, 0
.word 39, 0x22561c0, 0x4c0, 0x0, 0x2256678, 0x2256680, 39, 0
.word 40, 0x22561c0, 0x9a0, 0x0, 0x2256b40, 0x2256b48, 40, 0
.word 41, 0x22561c0, 0xcc0, 0x0, 0x2256e78, 0x2256e80, 41, 0
.word 42, 0x22561c0, 0x560, 0x20, 0x2256710, 0x2256718, 42, 0
.word 43, 0x22561c0, 0xb40, 0x0, 0x2256cdc, 0x2256ce4, 43, 0
.word 44, 0x22561c0, 0xce0, 0x0, 0x2256e98, 0x2256ea0, 44, 0
.word 45, 0x22561c0, 0xc60, 0x0, 0x2256e04, 0x2256e0c, 45, 0
.word 46, 0x22561c0, 0x1140, 0x0, 0x22572f4, 0x22572fc, 46, 0
.word 47, 0x22561c0, 0x900, 0x0, 0x2256a9c, 0x2256aa4, 47, 0
.word 48, 0x22561c0, 0x9c0, 0x0, 0x2256b70, 0x2256b78, 48, 0
.word 49, 0x22561c0, 0x4a0, 0x0, 0x225663c, 0x2256644, 49, 0
.word 50, 0x22561c0, 0x940, 0x0, 0x2256af0, 0x2256af8, 50, 0
.word 51, 0x22561c0, 0x320, 0x0, 0x22564c0, 0x22564c8, 51, 0
.word 52, 0x22561c0, 0xca0, 0x0, 0x2256e50, 0x2256e58, 52, 0
.word 53, 0x22561c0, 0x8a0, 0x0, 0x2256a50, 0x2256a58, 53, 0
.word 54, 0x22561c0, 0x660, 0x0, 0x2256810, 0x2256818, 54, 0
.word 55, 0x22561c0, 0x320, 0x0, 0x22564d0, 0x22564d8, 55, 0
.word 56, 0x22561c0, 0x1140, 0x0, 0x22572f0, 0x22572f4, 56, 0
.word 57, 0x21d0d80, 0x400, 0x0, 0x21d1178, 0x21d117c, 57, 0
.word 58, 0x21d0d80, 0x24c0, 0x0, 0x21d3174, 0x21d3178, 58, 0
.word 59, 0x21d0d80, 0x2780, 0x0, 0x21d3474, 0x21d3478, 59, 0
.word 60, 0x221f800, 0xa620, 0x1040, 0x2228e24, 0x2228e28, 60, 0
.word 61, 0x222ae60, 0x3900, 0xb60, 0x222e5e0, 0x222e5e4, 61, 0
.word 62, 0x222f2c0, 0x1a6e0, 0x0, 0x22497a0, 0x22497a4, 62, 0
.word 63, 0x222ae60, 0x2e80, 0x0, 0x222dcd0, 0x222dcd4, 63, 0
.word 64, 0x222dce0, 0x4840, 0x0, 0x223243c, 0x2232440, 64, 0
.word 65, 0x222dce0, 0xc180, 0x20, 0x2239c18, 0x2239c1c, 65, 0
.word 66, 0x222dce0, 0x2d9e0, 0x1040, 0x2258d08, 0x2258d0c, 66, 0
.word 67, 0x225c700, 0xda0, 0x0, 0x225d48c, 0x225d490, 67, 0
.word 68, 0x225c700, 0x17c0, 0x0, 0x225de88, 0x225de8c, 68, 0
.word 69, 0x225c700, 0x2d40, 0x0, 0x225f420, 0x225f424, 69, 0
.word 70, 0x225c700, 0x120c0, 0x0, 0x226e7b0, 0x226e7b4, 70, 0
.word 71, 0x223b140, 0x2660, 0x0, 0x223d78c, 0x223d790, 71, 0
.word 72, 0x223d7a0, 0x15c0, 0x0, 0x223ed30, 0x223ed34, 72, 0
.word 73, 0x21d0d80, 0x2d80, 0x0, 0x21d3ae8, 0x21d3aec, 73, 0
.word 74, 0x21d0d80, 0xfa0, 0x0, 0x21d1d10, 0x21d1d14, 74, 0
.word 75, 0x21d0d80, 0x10c0, 0x0, 0x21d1e24, 0x21d1e28, 75, 0
.word 76, 0x223b140, 0x3e40, 0x0, 0x223ef64, 0x223ef6c, 76, 0
.word 77, 0x21d0d80, 0x6c80, 0x0, 0x21d7994, 0x21d7998, 77, 0
.word 78, 0x21d0d80, 0x1c80, 0x0, 0x21d29e8, 0x21d29ec, 78, 0
.word 79, 0x21d0d80, 0x3020, 0x0, 0x21d3cf8, 0x21d3cfc, 79, 0
.word 80, 0x21d0d80, 0x26a0, 0x0, 0x21d3368, 0x21d336c, 80, 0
.word 81, 0x21d0d80, 0x27c0, 0x0, 0x21d3528, 0x21d352c, 81, 0
.word 82, 0x223b140, 0x460, 0x0, 0x223b584, 0x223b588, 82, 0
.word 83, 0x223b5a0, 0x5060, 0x0, 0x22405a4, 0x22405a8, 83, 0
.word 84, 0x223b5a0, 0x5ea0, 0x0, 0x2241420, 0x2241424, 84, 0
.word 85, 0x2241440, 0x1620, 0x0, 0x2242a58, 0x2242a5c, 85, 0
.word 86, 0x223b140, 0x2420, 0x20, 0x223d520, 0x223d524, 86, 0
.word 87, 0x21d0d80, 0xe40, 0x0, 0x21d1b88, 0x21d1b8c, 87, 0
.word 88, 0x223b140, 0x40c0, 0x0, 0x223f1f8, 0x223f1fc, 88, 0
.word 89, 0x21d0d80, 0x20, 0x0, 0x21d0d80, 0x21d0d84, 89, 0
.word 90, 0x21d0d80, 0x1240, 0x0, 0x21d1f20, 0x21d1f24, 90, 0
.word 91, 0x21d0d80, 0x1e40, 0x0, 0x21d2ba0, 0x21d2ba4, 91, 0
.word 92, 0x21d0d80, 0x1d40, 0x0, 0x21d2aa0, 0x21d2aa4, 92, 0
.word 93, 0x21d0d80, 0x880, 0x0, 0x21d1594, 0x21d1598, 93, 0
.word 94, 0x223b140, 0xb980, 0x160, 0x22463ec, 0x22463f0, 94, 0
.word 95, 0x2246c20, 0x56c0, 0xa0, 0x224c2a4, 0x224c2a8, 95, 0
.word 96, 0x223b140, 0x2ca0, 0x120, 0x223db40, 0x223db44, 96, 0
.word 97, 0x222ae60, 0x14320, 0x1980, 0x223df38, 0x223df3c, 97, 0
.word 98, 0x2246c20, 0x3200, 0x20, 0x2249d54, 0x2249d58, 98, 0
.word 99, 0x21d0d80, 0x4760, 0x0, 0x21d54dc, 0x21d54e0, 99, 0
.word 100, 0x21d0d80, 0x47c0, 0x0, 0x21d5490, 0x21d5494, 100, 0
.word 101, 0x21d0d80, 0x9100, 0x0, 0x21d9e44, 0x21d9e48, 101, 0
.word 102, 0x21d0d80, 0x820, 0x0, 0x21d1584, 0x21d1588, 102, 0
.word 103, 0x222dce0, 0x20, 0x0, 0x222dce0, 0x222dce4, 103, 0
.word 104, 0x222dce0, 0x13de0, 0x20, 0x2241990, 0x2241994, 104, 0
.word 105, 0x2241ae0, 0x49e0, 0x0, 0x22464a8, 0x22464ac, 105, 0
.word 106, 0x2241ae0, 0x1dc0, 0x0, 0x2243880, 0x2243884, 106, 0
.word 107, 0x2241ae0, 0x8840, 0x0, 0x224a318, 0x224a31c, 107, 0
.word 108, 0x2241ae0, 0x1cc0, 0x20, 0x2243784, 0x2243788, 108, 0
.word 109, 0x21d0d80, 0x51e0, 0x0, 0x21d5f1c, 0x21d5f20, 109, 0
.word 110, 0x21d0d80, 0x15c0, 0x0, 0x21d2320, 0x21d2324, 110, 0
.word 111, 0x21d0d80, 0x2be0, 0x0, 0x21d3938, 0x21d393c, 111, 0
.word 112, 0x225c700, 0x1280, 0x0, 0x225d94c, 0x225d950, 112, 0
.word 113, 0x225c700, 0x4e80, 0x0, 0x2261560, 0x2261564, 113, 0
.word 114, 0x225c700, 0x3d40, 0x0, 0x2260420, 0x2260424, 114, 0
.word 115, 0x2260440, 0x6280, 0x40, 0x22666ac, 0x22666b0, 115, 0
.word 116, 0x2260440, 0x7c20, 0x0, 0x2267f0c, 0x2267f10, 116, 0
.word 117, 0x2260440, 0x6c00, 0x0, 0x2267034, 0x2267038, 117, 0
.word 118, 0x21d0d80, 0x440, 0x0, 0x21d11a0, 0x21d11a4, 118, 0
.word 119, 0x21d0d80, 0x1940, 0x0, 0x21d26b4, 0x21d26b8, 119, 0
.word 120, 0x21d0d80, 0x4c0, 0x0, 0x21d1238, 0x21d123c, 120, 0
.word 121, 0x21d0d80, 0x640, 0x0, 0x21d13a8, 0x21d13ac, 121, 0


.align 9, 0xff

@.section iwram0
.incbin "./baserom/overlay/overlay_0000.bin"
.align 9, 0xff

.incbin "./baserom/overlay/overlay_0001.bin"
.align 9, 0xff

.incbin "./baserom/overlay/overlay_0002.bin"
.align 9, 0xff

.incbin "./baserom/overlay/overlay_0003.bin"
.align 9, 0xff
/*
.incbin "./baserom/overlay/overlay_0004.bin"
.align 9, 0xff

@.incbin "./baserom/overlay/overlay_0005.bin"
.include "source/overlay_0005.s"
.align 9, 0xff

.section iwram1
.incbin "./baserom/overlay/overlay_0006.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0007.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0008.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0009.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0010.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0011.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0012.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0013.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0014.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0015.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0016.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0017.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0018.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0019.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0020.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0021.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0022.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0023.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0024.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0025.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0026.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0027.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0028.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0029.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0030.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0031.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0032.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0033.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0034.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0035.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0036.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0037.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0038.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0039.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0040.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0041.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0042.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0043.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0044.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0045.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0046.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0047.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0048.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0049.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0050.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0051.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0052.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0053.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0054.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0055.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0056.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0057.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0058.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0059.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0060.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0061.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0062.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0063.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0064.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0065.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0066.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0067.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0068.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0069.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0070.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0071.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0072.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0073.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0074.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0075.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0076.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0077.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0078.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0079.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0080.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0081.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0082.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0083.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0084.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0085.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0086.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0087.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0088.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0089.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0090.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0091.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0092.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0093.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0094.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0095.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0096.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0097.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0098.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0099.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0100.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0101.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0102.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0103.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0104.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0105.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0106.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0107.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0108.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0109.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0110.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0111.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0112.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0113.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0114.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0115.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0116.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0117.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0118.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0119.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0120.bin"

.align 9, 0xff
.incbin "./baserom/overlay/overlay_0121.bin"

.align 9, 0xff

*/