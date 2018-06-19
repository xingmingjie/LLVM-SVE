# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x80,0xcd,0x65
# CHECK: fdiv    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xcd,0x65]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0xcd,0x65
# CHECK: fdiv    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xcd,0x65]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x8d,0x65
# CHECK: fdiv    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x8d,0x65]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x4d,0x65
# CHECK: fdiv    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x4d,0x65]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x8d,0x65
# CHECK: fdiv    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x8d,0x65]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x4d,0x65
# CHECK: fdiv    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x4d,0x65]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x4d,0x65
# CHECK: fdiv    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x4d,0x65]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0xcd,0x65
# CHECK: fdiv    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xcd,0x65]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0xcd,0x65
# CHECK: fdiv    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xcd,0x65]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x8d,0x65
# CHECK: fdiv    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x8d,0x65]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x4d,0x65
# CHECK: fdiv    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x4d,0x65]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x8d,0x65
# CHECK: fdiv    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x8d,0x65]
# CHECK-ERROR: invalid instruction encoding
