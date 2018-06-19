# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xfc,0xe0,0x04
# CHECK: uqdecd  w0, pow2 // encoding: [0x00,0xfc,0xe0,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xfd,0xe5,0x04
# CHECK: uqdecd  w21, vl32, mul #6 // encoding: [0x55,0xfd,0xe5,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xfd,0xe8,0x04
# CHECK: uqdecd  w23, vl256, mul #9 // encoding: [0xb7,0xfd,0xe8,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xcf,0xef,0x04
# CHECK: uqdecd  z31.d, all, mul #16 // encoding: [0xff,0xcf,0xef,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0xef,0x04
# CHECK: uqdecd  wzr, all, mul #16 // encoding: [0xff,0xff,0xef,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xfd,0xf5,0x04
# CHECK: uqdecd  x21, vl32, mul #6 // encoding: [0x55,0xfd,0xf5,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xfc,0xf0,0x04
# CHECK: uqdecd  x0, pow2 // encoding: [0x00,0xfc,0xf0,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xcd,0xe5,0x04
# CHECK: uqdecd  z21.d, vl32, mul #6 // encoding: [0x55,0xcd,0xe5,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xfd,0xf8,0x04
# CHECK: uqdecd  x23, vl256, mul #9 // encoding: [0xb7,0xfd,0xf8,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0xe8,0x04
# CHECK: uqdecd  z23.d, vl256, mul #9 // encoding: [0xb7,0xcd,0xe8,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0xff,0x04
# CHECK: uqdecd  xzr, all, mul #16 // encoding: [0xff,0xff,0xff,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xcc,0xe0,0x04
# CHECK: uqdecd  z0.d, pow2 // encoding: [0x00,0xcc,0xe0,0x04]
# CHECK-ERROR: invalid instruction encoding
