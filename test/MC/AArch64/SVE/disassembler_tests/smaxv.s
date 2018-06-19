# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0x3f,0xc8,0x04
# CHECK: smaxv   d31, p7, z31.d // encoding: [0xff,0x3f,0xc8,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x20,0x08,0x04
# CHECK: smaxv   b0, p0, z0.b // encoding: [0x00,0x20,0x08,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x35,0xc8,0x04
# CHECK: smaxv   d21, p5, z10.d // encoding: [0x55,0x35,0xc8,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x35,0x48,0x04
# CHECK: smaxv   h21, p5, z10.h // encoding: [0x55,0x35,0x48,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x2d,0x88,0x04
# CHECK: smaxv   s23, p3, z13.s // encoding: [0xb7,0x2d,0x88,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x35,0x08,0x04
# CHECK: smaxv   b21, p5, z10.b // encoding: [0x55,0x35,0x08,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x3f,0x88,0x04
# CHECK: smaxv   s31, p7, z31.s // encoding: [0xff,0x3f,0x88,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x35,0x88,0x04
# CHECK: smaxv   s21, p5, z10.s // encoding: [0x55,0x35,0x88,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x20,0x48,0x04
# CHECK: smaxv   h0, p0, z0.h // encoding: [0x00,0x20,0x48,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x2d,0x08,0x04
# CHECK: smaxv   b23, p3, z13.b // encoding: [0xb7,0x2d,0x08,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x20,0xc8,0x04
# CHECK: smaxv   d0, p0, z0.d // encoding: [0x00,0x20,0xc8,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x2d,0x48,0x04
# CHECK: smaxv   h23, p3, z13.h // encoding: [0xb7,0x2d,0x48,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x2d,0xc8,0x04
# CHECK: smaxv   d23, p3, z13.d // encoding: [0xb7,0x2d,0xc8,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x3f,0x08,0x04
# CHECK: smaxv   b31, p7, z31.b // encoding: [0xff,0x3f,0x08,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x20,0x88,0x04
# CHECK: smaxv   s0, p0, z0.s // encoding: [0x00,0x20,0x88,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x3f,0x48,0x04
# CHECK: smaxv   h31, p7, z31.h // encoding: [0xff,0x3f,0x48,0x04]
# CHECK-ERROR: invalid instruction encoding
