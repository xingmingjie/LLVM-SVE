# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0xf9,0x75,0x04
# CHECK: sqdech  x21, vl32, mul #6 // encoding: [0x55,0xf9,0x75,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xfb,0x7f,0x04
# CHECK: sqdech  xzr, all, mul #16 // encoding: [0xff,0xfb,0x7f,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf9,0x65,0x04
# CHECK: sqdech  x21, w21, vl32, mul #6 // encoding: [0x55,0xf9,0x65,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xcb,0x6f,0x04
# CHECK: sqdech  z31.h, all, mul #16 // encoding: [0xff,0xcb,0x6f,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc8,0x60,0x04
# CHECK: sqdech  z0.h, pow2 // encoding: [0x00,0xc8,0x60,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xf8,0x70,0x04
# CHECK: sqdech  x0, pow2 // encoding: [0x00,0xf8,0x70,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xc9,0x68,0x04
# CHECK: sqdech  z23.h, vl256, mul #9 // encoding: [0xb7,0xc9,0x68,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xc9,0x65,0x04
# CHECK: sqdech  z21.h, vl32, mul #6 // encoding: [0x55,0xc9,0x65,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xf9,0x68,0x04
# CHECK: sqdech  x23, w23, vl256, mul #9 // encoding: [0xb7,0xf9,0x68,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xfb,0x6f,0x04
# CHECK: sqdech  xzr, wzr, all, mul #16 // encoding: [0xff,0xfb,0x6f,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xf8,0x60,0x04
# CHECK: sqdech  x0, w0, pow2 // encoding: [0x00,0xf8,0x60,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xf9,0x78,0x04
# CHECK: sqdech  x23, vl256, mul #9 // encoding: [0xb7,0xf9,0x78,0x04]
# CHECK-ERROR: invalid instruction encoding
0xf5,0xf9,0x60,0x04
# CHECK: sqdech  x21, w21, #15 // encoding: [0xf5,0xf9,0x60,0x04]
# CHECK-ERROR: invalid instruction encoding
0xf6,0xfa,0x62,0x04
# CHECK: sqdech  x22, w22, #23, mul #3 // encoding: [0xf6,0xfa,0x62,0x04]
# CHECK-ERROR: invalid instruction encoding
