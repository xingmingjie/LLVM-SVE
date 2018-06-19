# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0x9f,0x1f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, z31.d, uxtw] // encoding: [0xff,0x9f,0x1f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x55,0xe5
# CHECK: st1w    {z21.s}, p5, [x10, z21.s, sxtw] // encoding: [0x55,0xd5,0x55,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf5,0x45,0xe5
# CHECK: st1w    {z21.s}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0x45,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x1f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, z31.d, sxtw] // encoding: [0xff,0xdf,0x1f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x75,0xe5
# CHECK: st1w    {z21.s}, p5, [z10.s, #84] // encoding: [0x55,0xb5,0x75,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x55,0xe5
# CHECK: st1w    {z21.s}, p5, [x10, z21.s, uxtw] // encoding: [0x55,0x95,0x55,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x20,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, z0.d, sxtw #2] // encoding: [0x00,0xc0,0x20,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x00,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, z0.d, uxtw] // encoding: [0x00,0x80,0x00,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x15,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, z21.d] // encoding: [0x55,0xb5,0x15,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x3f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, z31.d, lsl #2] // encoding: [0xff,0xbf,0x3f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x60,0xe5
# CHECK: st1w    {z0.s}, p0, [x0, z0.s, sxtw #2] // encoding: [0x00,0xc0,0x60,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x1f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, z31.d] // encoding: [0xff,0xbf,0x1f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x68,0xe5
# CHECK: st1w    {z23.s}, p3, [z13.s, #32] // encoding: [0xb7,0xad,0x68,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x48,0xe5
# CHECK: st1w    {z23.d}, p3, [z13.d, #32] // encoding: [0xb7,0xad,0x48,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x40,0xe5
# CHECK: st1w    {z0.s}, p0, [x0, z0.s, uxtw] // encoding: [0x00,0x80,0x40,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x20,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, z0.d, lsl #2] // encoding: [0x00,0xa0,0x20,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x60,0xe5
# CHECK: st1w    {z0.s}, p0, [x0, z0.s, uxtw #2] // encoding: [0x00,0x80,0x60,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x4d,0x48,0xe5
# CHECK: st1w    {z23.s}, p3, [x13, x8, lsl #2] // encoding: [0xb7,0x4d,0x48,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x5f,0xe5
# CHECK: st1w    {z31.s}, p7, [sp, z31.s, uxtw] // encoding: [0xff,0x9f,0x5f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x08,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, z8.d, sxtw] // encoding: [0xb7,0xcd,0x08,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x20,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, z0.d, uxtw #2] // encoding: [0x00,0x80,0x20,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x40,0xe5
# CHECK: st1w    {z0.s}, p0, [x0, z0.s, sxtw] // encoding: [0x00,0xc0,0x40,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x35,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, z21.d, sxtw #2] // encoding: [0x55,0xd5,0x35,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x4d,0x68,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, x8, lsl #2] // encoding: [0xb7,0x4d,0x68,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0x75,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, x21, lsl #2] // encoding: [0x55,0x55,0x75,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x60,0xe5
# CHECK: st1w    {z0.s}, p0, [z0.s] // encoding: [0x00,0xa0,0x60,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x55,0xe5
# CHECK: st1w    {z21.d}, p5, [z10.d, #84] // encoding: [0x55,0xb5,0x55,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x68,0xe5
# CHECK: st1w    {z23.s}, p3, [x13, z8.s, sxtw #2] // encoding: [0xb7,0xcd,0x68,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x5f,0xe5
# CHECK: st1w    {z31.d}, p7, [z31.d, #124] // encoding: [0xff,0xbf,0x5f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x7f,0xe5
# CHECK: st1w    {z31.s}, p7, [sp, z31.s, sxtw #2] // encoding: [0xff,0xdf,0x7f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x25,0x4e,0x50,0xe5
# CHECK: st1w    {z5.s}, p3, [x17, x16, lsl #2] // encoding: [0x25,0x4e,0x50,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x3f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, z31.d, uxtw #2] // encoding: [0xff,0x9f,0x3f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0x55,0xe5
# CHECK: st1w    {z21.s}, p5, [x10, x21, lsl #2] // encoding: [0x55,0x55,0x55,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x48,0xe5
# CHECK: st1w    {z23.s}, p3, [x13, z8.s, uxtw] // encoding: [0xb7,0x8d,0x48,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0x4f,0xe5
# CHECK: st1w    {z31.s}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0x4f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0x68,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0x68,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x00,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, z0.d] // encoding: [0x00,0xa0,0x00,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x7f,0xe5
# CHECK: st1w    {z31.s}, p7, [sp, z31.s, uxtw #2] // encoding: [0xff,0x9f,0x7f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x75,0xe5
# CHECK: st1w    {z21.s}, p5, [x10, z21.s, sxtw #2] // encoding: [0x55,0xd5,0x75,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x68,0xe5
# CHECK: st1w    {z23.s}, p3, [x13, z8.s, uxtw #2] // encoding: [0xb7,0x8d,0x68,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x08,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, z8.d] // encoding: [0xb7,0xad,0x08,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x5f,0xe5
# CHECK: st1w    {z31.s}, p7, [sp, z31.s, sxtw] // encoding: [0xff,0xdf,0x5f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf5,0x65,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0x65,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x40,0x40,0xe5
# CHECK: st1w    {z0.s}, p0, [x0, x0, lsl #2] // encoding: [0x00,0x40,0x40,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x08,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, z8.d, uxtw] // encoding: [0xb7,0x8d,0x08,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x3f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, z31.d, sxtw #2] // encoding: [0xff,0xdf,0x3f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0x48,0xe5
# CHECK: st1w    {z23.s}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0x48,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x35,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, z21.d, uxtw #2] // encoding: [0x55,0x95,0x35,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x15,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, z21.d, uxtw] // encoding: [0x55,0x95,0x15,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x15,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, z21.d, sxtw] // encoding: [0x55,0xd5,0x15,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x28,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, z8.d, uxtw #2] // encoding: [0xb7,0x8d,0x28,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x75,0xe5
# CHECK: st1w    {z21.s}, p5, [x10, z21.s, uxtw #2] // encoding: [0x55,0x95,0x75,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x28,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, z8.d, lsl #2] // encoding: [0xb7,0xad,0x28,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x7f,0xe5
# CHECK: st1w    {z31.s}, p7, [z31.s, #124] // encoding: [0xff,0xbf,0x7f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x35,0xe5
# CHECK: st1w    {z21.d}, p5, [x10, z21.d, lsl #2] // encoding: [0x55,0xb5,0x35,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x40,0xe5
# CHECK: st1w    {z0.d}, p0, [z0.d] // encoding: [0x00,0xa0,0x40,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xe0,0x60,0xe5
# CHECK: st1w    {z0.d}, p0, [x0] // encoding: [0x00,0xe0,0x60,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x00,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, z0.d, sxtw] // encoding: [0x00,0xc0,0x00,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x25,0x4e,0x70,0xe5
# CHECK: st1w    {z5.d}, p3, [x17, x16, lsl #2] // encoding: [0x25,0x4e,0x70,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x28,0xe5
# CHECK: st1w    {z23.d}, p3, [x13, z8.d, sxtw #2] // encoding: [0xb7,0xcd,0x28,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x40,0x60,0xe5
# CHECK: st1w    {z0.d}, p0, [x0, x0, lsl #2] // encoding: [0x00,0x40,0x60,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x48,0xe5
# CHECK: st1w    {z23.s}, p3, [x13, z8.s, sxtw] // encoding: [0xb7,0xcd,0x48,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xe0,0x40,0xe5
# CHECK: st1w    {z0.s}, p0, [x0] // encoding: [0x00,0xe0,0x40,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0x6f,0xe5
# CHECK: st1w    {z31.d}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0x6f,0xe5]
# CHECK-ERROR: invalid instruction encoding
