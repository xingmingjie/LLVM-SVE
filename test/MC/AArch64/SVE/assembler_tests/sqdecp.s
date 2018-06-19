// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
sqdecp  x21, p10.s, w21  // 00100101-10101010-10001001-01010101
// CHECK: sqdecp  x21, p10.s, w21 // encoding: [0x55,0x89,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001001-01010101
SQDECP  X21, P10.S, W21  // 00100101-10101010-10001001-01010101
// CHECK: sqdecp  x21, p10.s, w21 // encoding: [0x55,0x89,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001001-01010101
sqdecp  x0, p0.b, w0  // 00100101-00101010-10001000-00000000
// CHECK: sqdecp  x0, p0.b, w0 // encoding: [0x00,0x88,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001000-00000000
SQDECP  X0, P0.B, W0  // 00100101-00101010-10001000-00000000
// CHECK: sqdecp  x0, p0.b, w0 // encoding: [0x00,0x88,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001000-00000000
sqdecp  z0.h, p0  // 00100101-01101010-10000000-00000000
// CHECK: sqdecp  z0.h, p0 // encoding: [0x00,0x80,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000000-00000000
SQDECP  Z0.H, P0  // 00100101-01101010-10000000-00000000
// CHECK: sqdecp  z0.h, p0 // encoding: [0x00,0x80,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000000-00000000
sqdecp  xzr, p15.d  // 00100101-11101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.d // encoding: [0xff,0x8d,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001101-11111111
SQDECP  XZR, P15.D  // 00100101-11101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.d // encoding: [0xff,0x8d,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001101-11111111
sqdecp  z31.h, p15  // 00100101-01101010-10000001-11111111
// CHECK: sqdecp  z31.h, p15 // encoding: [0xff,0x81,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-11111111
SQDECP  Z31.H, P15  // 00100101-01101010-10000001-11111111
// CHECK: sqdecp  z31.h, p15 // encoding: [0xff,0x81,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-11111111
sqdecp  x23, p13.h  // 00100101-01101010-10001101-10110111
// CHECK: sqdecp  x23, p13.h // encoding: [0xb7,0x8d,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001101-10110111
SQDECP  X23, P13.H  // 00100101-01101010-10001101-10110111
// CHECK: sqdecp  x23, p13.h // encoding: [0xb7,0x8d,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001101-10110111
sqdecp  z31.d, p15  // 00100101-11101010-10000001-11111111
// CHECK: sqdecp  z31.d, p15 // encoding: [0xff,0x81,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000001-11111111
SQDECP  Z31.D, P15  // 00100101-11101010-10000001-11111111
// CHECK: sqdecp  z31.d, p15 // encoding: [0xff,0x81,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000001-11111111
sqdecp  z31.s, p15  // 00100101-10101010-10000001-11111111
// CHECK: sqdecp  z31.s, p15 // encoding: [0xff,0x81,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000001-11111111
SQDECP  Z31.S, P15  // 00100101-10101010-10000001-11111111
// CHECK: sqdecp  z31.s, p15 // encoding: [0xff,0x81,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000001-11111111
sqdecp  z21.d, p10  // 00100101-11101010-10000001-01010101
// CHECK: sqdecp  z21.d, p10 // encoding: [0x55,0x81,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000001-01010101
SQDECP  Z21.D, P10  // 00100101-11101010-10000001-01010101
// CHECK: sqdecp  z21.d, p10 // encoding: [0x55,0x81,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000001-01010101
sqdecp  x21, p10.d  // 00100101-11101010-10001101-01010101
// CHECK: sqdecp  x21, p10.d // encoding: [0x55,0x8d,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001101-01010101
SQDECP  X21, P10.D  // 00100101-11101010-10001101-01010101
// CHECK: sqdecp  x21, p10.d // encoding: [0x55,0x8d,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001101-01010101
sqdecp  z23.s, p13  // 00100101-10101010-10000001-10110111
// CHECK: sqdecp  z23.s, p13 // encoding: [0xb7,0x81,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000001-10110111
SQDECP  Z23.S, P13  // 00100101-10101010-10000001-10110111
// CHECK: sqdecp  z23.s, p13 // encoding: [0xb7,0x81,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000001-10110111
sqdecp  x21, p10.b, w21  // 00100101-00101010-10001001-01010101
// CHECK: sqdecp  x21, p10.b, w21 // encoding: [0x55,0x89,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001001-01010101
SQDECP  X21, P10.B, W21  // 00100101-00101010-10001001-01010101
// CHECK: sqdecp  x21, p10.b, w21 // encoding: [0x55,0x89,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001001-01010101
sqdecp  x0, p0.s, w0  // 00100101-10101010-10001000-00000000
// CHECK: sqdecp  x0, p0.s, w0 // encoding: [0x00,0x88,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001000-00000000
SQDECP  X0, P0.S, W0  // 00100101-10101010-10001000-00000000
// CHECK: sqdecp  x0, p0.s, w0 // encoding: [0x00,0x88,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001000-00000000
sqdecp  x0, p0.s  // 00100101-10101010-10001100-00000000
// CHECK: sqdecp  x0, p0.s // encoding: [0x00,0x8c,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001100-00000000
SQDECP  X0, P0.S  // 00100101-10101010-10001100-00000000
// CHECK: sqdecp  x0, p0.s // encoding: [0x00,0x8c,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001100-00000000
sqdecp  z0.s, p0  // 00100101-10101010-10000000-00000000
// CHECK: sqdecp  z0.s, p0 // encoding: [0x00,0x80,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000000-00000000
SQDECP  Z0.S, P0  // 00100101-10101010-10000000-00000000
// CHECK: sqdecp  z0.s, p0 // encoding: [0x00,0x80,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000000-00000000
sqdecp  xzr, p15.s  // 00100101-10101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.s // encoding: [0xff,0x8d,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001101-11111111
SQDECP  XZR, P15.S  // 00100101-10101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.s // encoding: [0xff,0x8d,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001101-11111111
sqdecp  z21.s, p10  // 00100101-10101010-10000001-01010101
// CHECK: sqdecp  z21.s, p10 // encoding: [0x55,0x81,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000001-01010101
SQDECP  Z21.S, P10  // 00100101-10101010-10000001-01010101
// CHECK: sqdecp  z21.s, p10 // encoding: [0x55,0x81,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10000001-01010101
sqdecp  x23, p13.d  // 00100101-11101010-10001101-10110111
// CHECK: sqdecp  x23, p13.d // encoding: [0xb7,0x8d,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001101-10110111
SQDECP  X23, P13.D  // 00100101-11101010-10001101-10110111
// CHECK: sqdecp  x23, p13.d // encoding: [0xb7,0x8d,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001101-10110111
sqdecp  x23, p13.b  // 00100101-00101010-10001101-10110111
// CHECK: sqdecp  x23, p13.b // encoding: [0xb7,0x8d,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001101-10110111
SQDECP  X23, P13.B  // 00100101-00101010-10001101-10110111
// CHECK: sqdecp  x23, p13.b // encoding: [0xb7,0x8d,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001101-10110111
sqdecp  x21, p10.h, w21  // 00100101-01101010-10001001-01010101
// CHECK: sqdecp  x21, p10.h, w21 // encoding: [0x55,0x89,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001001-01010101
SQDECP  X21, P10.H, W21  // 00100101-01101010-10001001-01010101
// CHECK: sqdecp  x21, p10.h, w21 // encoding: [0x55,0x89,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001001-01010101
sqdecp  x23, p13.b, w23  // 00100101-00101010-10001001-10110111
// CHECK: sqdecp  x23, p13.b, w23 // encoding: [0xb7,0x89,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001001-10110111
SQDECP  X23, P13.B, W23  // 00100101-00101010-10001001-10110111
// CHECK: sqdecp  x23, p13.b, w23 // encoding: [0xb7,0x89,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001001-10110111
sqdecp  x0, p0.d  // 00100101-11101010-10001100-00000000
// CHECK: sqdecp  x0, p0.d // encoding: [0x00,0x8c,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001100-00000000
SQDECP  X0, P0.D  // 00100101-11101010-10001100-00000000
// CHECK: sqdecp  x0, p0.d // encoding: [0x00,0x8c,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001100-00000000
sqdecp  x23, p13.d, w23  // 00100101-11101010-10001001-10110111
// CHECK: sqdecp  x23, p13.d, w23 // encoding: [0xb7,0x89,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001001-10110111
SQDECP  X23, P13.D, W23  // 00100101-11101010-10001001-10110111
// CHECK: sqdecp  x23, p13.d, w23 // encoding: [0xb7,0x89,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001001-10110111
sqdecp  x23, p13.s, w23  // 00100101-10101010-10001001-10110111
// CHECK: sqdecp  x23, p13.s, w23 // encoding: [0xb7,0x89,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001001-10110111
SQDECP  X23, P13.S, W23  // 00100101-10101010-10001001-10110111
// CHECK: sqdecp  x23, p13.s, w23 // encoding: [0xb7,0x89,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001001-10110111
sqdecp  x0, p0.d, w0  // 00100101-11101010-10001000-00000000
// CHECK: sqdecp  x0, p0.d, w0 // encoding: [0x00,0x88,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001000-00000000
SQDECP  X0, P0.D, W0  // 00100101-11101010-10001000-00000000
// CHECK: sqdecp  x0, p0.d, w0 // encoding: [0x00,0x88,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001000-00000000
sqdecp  z0.d, p0  // 00100101-11101010-10000000-00000000
// CHECK: sqdecp  z0.d, p0 // encoding: [0x00,0x80,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000000-00000000
SQDECP  Z0.D, P0  // 00100101-11101010-10000000-00000000
// CHECK: sqdecp  z0.d, p0 // encoding: [0x00,0x80,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000000-00000000
sqdecp  z23.h, p13  // 00100101-01101010-10000001-10110111
// CHECK: sqdecp  z23.h, p13 // encoding: [0xb7,0x81,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-10110111
SQDECP  Z23.H, P13  // 00100101-01101010-10000001-10110111
// CHECK: sqdecp  z23.h, p13 // encoding: [0xb7,0x81,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-10110111
sqdecp  x21, p10.b  // 00100101-00101010-10001101-01010101
// CHECK: sqdecp  x21, p10.b // encoding: [0x55,0x8d,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001101-01010101
SQDECP  X21, P10.B  // 00100101-00101010-10001101-01010101
// CHECK: sqdecp  x21, p10.b // encoding: [0x55,0x8d,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001101-01010101
sqdecp  z21.h, p10  // 00100101-01101010-10000001-01010101
// CHECK: sqdecp  z21.h, p10 // encoding: [0x55,0x81,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-01010101
SQDECP  Z21.H, P10  // 00100101-01101010-10000001-01010101
// CHECK: sqdecp  z21.h, p10 // encoding: [0x55,0x81,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-01010101
sqdecp  x23, p13.h, w23  // 00100101-01101010-10001001-10110111
// CHECK: sqdecp  x23, p13.h, w23 // encoding: [0xb7,0x89,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001001-10110111
SQDECP  X23, P13.H, W23  // 00100101-01101010-10001001-10110111
// CHECK: sqdecp  x23, p13.h, w23 // encoding: [0xb7,0x89,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001001-10110111
sqdecp  xzr, p15.h  // 00100101-01101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.h // encoding: [0xff,0x8d,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001101-11111111
SQDECP  XZR, P15.H  // 00100101-01101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.h // encoding: [0xff,0x8d,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001101-11111111
sqdecp  x21, p10.s  // 00100101-10101010-10001101-01010101
// CHECK: sqdecp  x21, p10.s // encoding: [0x55,0x8d,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001101-01010101
SQDECP  X21, P10.S  // 00100101-10101010-10001101-01010101
// CHECK: sqdecp  x21, p10.s // encoding: [0x55,0x8d,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001101-01010101
sqdecp  x23, p13.s  // 00100101-10101010-10001101-10110111
// CHECK: sqdecp  x23, p13.s // encoding: [0xb7,0x8d,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001101-10110111
SQDECP  X23, P13.S  // 00100101-10101010-10001101-10110111
// CHECK: sqdecp  x23, p13.s // encoding: [0xb7,0x8d,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001101-10110111
sqdecp  x21, p10.h  // 00100101-01101010-10001101-01010101
// CHECK: sqdecp  x21, p10.h // encoding: [0x55,0x8d,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001101-01010101
SQDECP  X21, P10.H  // 00100101-01101010-10001101-01010101
// CHECK: sqdecp  x21, p10.h // encoding: [0x55,0x8d,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001101-01010101
sqdecp  z23.d, p13  // 00100101-11101010-10000001-10110111
// CHECK: sqdecp  z23.d, p13 // encoding: [0xb7,0x81,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000001-10110111
SQDECP  Z23.D, P13  // 00100101-11101010-10000001-10110111
// CHECK: sqdecp  z23.d, p13 // encoding: [0xb7,0x81,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10000001-10110111
sqdecp  x0, p0.h  // 00100101-01101010-10001100-00000000
// CHECK: sqdecp  x0, p0.h // encoding: [0x00,0x8c,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001100-00000000
SQDECP  X0, P0.H  // 00100101-01101010-10001100-00000000
// CHECK: sqdecp  x0, p0.h // encoding: [0x00,0x8c,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001100-00000000
sqdecp  xzr, p15.b, wzr  // 00100101-00101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.b, wzr // encoding: [0xff,0x89,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001001-11111111
SQDECP  XZR, P15.B, WZR  // 00100101-00101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.b, wzr // encoding: [0xff,0x89,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001001-11111111
sqdecp  xzr, p15.s, wzr  // 00100101-10101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.s, wzr // encoding: [0xff,0x89,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001001-11111111
SQDECP  XZR, P15.S, WZR  // 00100101-10101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.s, wzr // encoding: [0xff,0x89,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-10001001-11111111
sqdecp  xzr, p15.d, wzr  // 00100101-11101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.d, wzr // encoding: [0xff,0x89,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001001-11111111
SQDECP  XZR, P15.D, WZR  // 00100101-11101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.d, wzr // encoding: [0xff,0x89,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001001-11111111
sqdecp  x0, p0.b  // 00100101-00101010-10001100-00000000
// CHECK: sqdecp  x0, p0.b // encoding: [0x00,0x8c,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001100-00000000
SQDECP  X0, P0.B  // 00100101-00101010-10001100-00000000
// CHECK: sqdecp  x0, p0.b // encoding: [0x00,0x8c,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001100-00000000
sqdecp  x0, p0.h, w0  // 00100101-01101010-10001000-00000000
// CHECK: sqdecp  x0, p0.h, w0 // encoding: [0x00,0x88,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001000-00000000
SQDECP  X0, P0.H, W0  // 00100101-01101010-10001000-00000000
// CHECK: sqdecp  x0, p0.h, w0 // encoding: [0x00,0x88,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001000-00000000
sqdecp  xzr, p15.b  // 00100101-00101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.b // encoding: [0xff,0x8d,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001101-11111111
SQDECP  XZR, P15.B  // 00100101-00101010-10001101-11111111
// CHECK: sqdecp  xzr, p15.b // encoding: [0xff,0x8d,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-10001101-11111111
sqdecp  x21, p10.d, w21  // 00100101-11101010-10001001-01010101
// CHECK: sqdecp  x21, p10.d, w21 // encoding: [0x55,0x89,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001001-01010101
SQDECP  X21, P10.D, W21  // 00100101-11101010-10001001-01010101
// CHECK: sqdecp  x21, p10.d, w21 // encoding: [0x55,0x89,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-10001001-01010101
sqdecp  xzr, p15.h, wzr  // 00100101-01101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.h, wzr // encoding: [0xff,0x89,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001001-11111111
SQDECP  XZR, P15.H, WZR  // 00100101-01101010-10001001-11111111
// CHECK: sqdecp  xzr, p15.h, wzr // encoding: [0xff,0x89,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-10001001-11111111
