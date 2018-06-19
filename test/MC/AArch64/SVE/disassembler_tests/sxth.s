# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xad,0x92,0x04
# CHECK: sxth    z23.s, p3/m, z13.s // encoding: [0xb7,0xad,0x92,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0xd2,0x04
# CHECK: sxth    z31.d, p7/m, z31.d // encoding: [0xff,0xbf,0xd2,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0xd2,0x04
# CHECK: sxth    z23.d, p3/m, z13.d // encoding: [0xb7,0xad,0xd2,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0xd2,0x04
# CHECK: sxth    z0.d, p0/m, z0.d // encoding: [0x00,0xa0,0xd2,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x92,0x04
# CHECK: sxth    z21.s, p5/m, z10.s // encoding: [0x55,0xb5,0x92,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x92,0x04
# CHECK: sxth    z31.s, p7/m, z31.s // encoding: [0xff,0xbf,0x92,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0xd2,0x04
# CHECK: sxth    z21.d, p5/m, z10.d // encoding: [0x55,0xb5,0xd2,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x92,0x04
# CHECK: sxth    z0.s, p0/m, z0.s // encoding: [0x00,0xa0,0x92,0x04]
# CHECK-ERROR: invalid instruction encoding
