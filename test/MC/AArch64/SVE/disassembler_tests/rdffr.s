# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xf0,0x19,0x25
# CHECK: rdffr   p0.b // encoding: [0x00,0xf0,0x19,0x25]
# CHECK-ERROR: invalid instruction encoding
0xef,0xf1,0x18,0x25
# CHECK: rdffr   p15.b, p15/z // encoding: [0xef,0xf1,0x18,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0xf0,0x18,0x25
# CHECK: rdffr   p0.b, p0/z // encoding: [0x00,0xf0,0x18,0x25]
# CHECK-ERROR: invalid instruction encoding
0x05,0xf0,0x19,0x25
# CHECK: rdffr   p5.b // encoding: [0x05,0xf0,0x19,0x25]
# CHECK-ERROR: invalid instruction encoding
0xa7,0xf1,0x18,0x25
# CHECK: rdffr   p7.b, p13/z // encoding: [0xa7,0xf1,0x18,0x25]
# CHECK-ERROR: invalid instruction encoding
0x0f,0xf0,0x19,0x25
# CHECK: rdffr   p15.b // encoding: [0x0f,0xf0,0x19,0x25]
# CHECK-ERROR: invalid instruction encoding
0x45,0xf1,0x18,0x25
# CHECK: rdffr   p5.b, p10/z // encoding: [0x45,0xf1,0x18,0x25]
# CHECK-ERROR: invalid instruction encoding
0x07,0xf0,0x19,0x25
# CHECK: rdffr   p7.b // encoding: [0x07,0xf0,0x19,0x25]
# CHECK-ERROR: invalid instruction encoding
