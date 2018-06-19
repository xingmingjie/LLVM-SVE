# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xcd,0x08,0x24
# CHECK: cmphi   p7.b, p3/z, z13.b, z8.d // encoding: [0xb7,0xcd,0x08,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0xdf,0x24
# CHECK: cmphi   p15.d, p7/z, z31.d, z31.d // encoding: [0xff,0x1f,0xdf,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0x40,0x24
# CHECK: cmphi   p0.h, p0/z, z0.h, z0.h // encoding: [0x10,0x00,0x40,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0x20,0x24
# CHECK: cmphi   p0.b, p0/z, z0.b, #0 // encoding: [0x10,0x00,0x20,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0xc0,0x00,0x24
# CHECK: cmphi   p0.b, p0/z, z0.b, z0.d // encoding: [0x10,0xc0,0x00,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0xd5,0x24
# CHECK: cmphi   p5.d, p5/z, z10.d, z21.d // encoding: [0x55,0x15,0xd5,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0xf5,0x24
# CHECK: cmphi   p5.d, p5/z, z10.d, #85 // encoding: [0x55,0x55,0xf5,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x88,0x24
# CHECK: cmphi   p7.s, p3/z, z13.s, z8.d // encoding: [0xb7,0xcd,0x88,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0x60,0x24
# CHECK: cmphi   p0.h, p0/z, z0.h, #0 // encoding: [0x10,0x00,0x60,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0x75,0x24
# CHECK: cmphi   p5.h, p5/z, z10.h, #85 // encoding: [0x55,0x55,0x75,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x1f,0x24
# CHECK: cmphi   p15.b, p7/z, z31.b, z31.b // encoding: [0xff,0x1f,0x1f,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x3f,0x24
# CHECK: cmphi   p15.b, p7/z, z31.b, #127 // encoding: [0xff,0xdf,0x3f,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0xc0,0x80,0x24
# CHECK: cmphi   p0.s, p0/z, z0.s, z0.d // encoding: [0x10,0xc0,0x80,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x95,0x24
# CHECK: cmphi   p5.s, p5/z, z10.s, z21.d // encoding: [0x55,0xd5,0x95,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x7f,0x24
# CHECK: cmphi   p15.h, p7/z, z31.h, #127 // encoding: [0xff,0xdf,0x7f,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0x00,0x24
# CHECK: cmphi   p0.b, p0/z, z0.b, z0.b // encoding: [0x10,0x00,0x00,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0xa8,0x24
# CHECK: cmphi   p7.s, p3/z, z13.s, #35 // encoding: [0xb7,0xcd,0xa8,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x48,0x24
# CHECK: cmphi   p7.h, p3/z, z13.h, z8.d // encoding: [0xb7,0xcd,0x48,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x55,0x24
# CHECK: cmphi   p5.h, p5/z, z10.h, z21.h // encoding: [0x55,0x15,0x55,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0xc0,0x24
# CHECK: cmphi   p0.d, p0/z, z0.d, z0.d // encoding: [0x10,0x00,0xc0,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0xc8,0x24
# CHECK: cmphi   p7.d, p3/z, z13.d, z8.d // encoding: [0xb7,0x0d,0xc8,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0x80,0x24
# CHECK: cmphi   p0.s, p0/z, z0.s, z0.s // encoding: [0x10,0x00,0x80,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x28,0x24
# CHECK: cmphi   p7.b, p3/z, z13.b, #35 // encoding: [0xb7,0xcd,0x28,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x15,0x24
# CHECK: cmphi   p5.b, p5/z, z10.b, z21.d // encoding: [0x55,0xd5,0x15,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x55,0x24
# CHECK: cmphi   p5.h, p5/z, z10.h, z21.d // encoding: [0x55,0xd5,0x55,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x9f,0x24
# CHECK: cmphi   p15.s, p7/z, z31.s, z31.s // encoding: [0xff,0x1f,0x9f,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x15,0x24
# CHECK: cmphi   p5.b, p5/z, z10.b, z21.b // encoding: [0x55,0x15,0x15,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x08,0x24
# CHECK: cmphi   p7.b, p3/z, z13.b, z8.b // encoding: [0xb7,0x0d,0x08,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0x35,0x24
# CHECK: cmphi   p5.b, p5/z, z10.b, #85 // encoding: [0x55,0x55,0x35,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x95,0x24
# CHECK: cmphi   p5.s, p5/z, z10.s, z21.s // encoding: [0x55,0x15,0x95,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x5f,0x24
# CHECK: cmphi   p15.h, p7/z, z31.h, z31.d // encoding: [0xff,0xdf,0x5f,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x88,0x24
# CHECK: cmphi   p7.s, p3/z, z13.s, z8.s // encoding: [0xb7,0x0d,0x88,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0xc0,0x40,0x24
# CHECK: cmphi   p0.h, p0/z, z0.h, z0.d // encoding: [0x10,0xc0,0x40,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0xa0,0x24
# CHECK: cmphi   p0.s, p0/z, z0.s, #0 // encoding: [0x10,0x00,0xa0,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x9f,0x24
# CHECK: cmphi   p15.s, p7/z, z31.s, z31.d // encoding: [0xff,0xdf,0x9f,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0xe8,0x24
# CHECK: cmphi   p7.d, p3/z, z13.d, #35 // encoding: [0xb7,0xcd,0xe8,0x24]
# CHECK-ERROR: invalid instruction encoding
0x10,0x00,0xe0,0x24
# CHECK: cmphi   p0.d, p0/z, z0.d, #0 // encoding: [0x10,0x00,0xe0,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x1f,0x24
# CHECK: cmphi   p15.b, p7/z, z31.b, z31.d // encoding: [0xff,0xdf,0x1f,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x68,0x24
# CHECK: cmphi   p7.h, p3/z, z13.h, #35 // encoding: [0xb7,0xcd,0x68,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x5f,0x24
# CHECK: cmphi   p15.h, p7/z, z31.h, z31.h // encoding: [0xff,0x1f,0x5f,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0xff,0x24
# CHECK: cmphi   p15.d, p7/z, z31.d, #127 // encoding: [0xff,0xdf,0xff,0x24]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0xbf,0x24
# CHECK: cmphi   p15.s, p7/z, z31.s, #127 // encoding: [0xff,0xdf,0xbf,0x24]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x48,0x24
# CHECK: cmphi   p7.h, p3/z, z13.h, z8.h // encoding: [0xb7,0x0d,0x48,0x24]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0xb5,0x24
# CHECK: cmphi   p5.s, p5/z, z10.s, #85 // encoding: [0x55,0x55,0xb5,0x24]
# CHECK-ERROR: invalid instruction encoding
