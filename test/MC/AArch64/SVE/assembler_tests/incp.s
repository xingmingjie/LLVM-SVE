// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
incp    z0.d, p0  // 00100101-11101100-10000000-00000000
// CHECK: incp    z0.d, p0 // encoding: [0x00,0x80,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000000-00000000
INCP    Z0.D, P0  // 00100101-11101100-10000000-00000000
// CHECK: incp    z0.d, p0 // encoding: [0x00,0x80,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000000-00000000
incp    x0, p0.s  // 00100101-10101100-10001000-00000000
// CHECK: incp    x0, p0.s // encoding: [0x00,0x88,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001000-00000000
INCP    X0, P0.S  // 00100101-10101100-10001000-00000000
// CHECK: incp    x0, p0.s // encoding: [0x00,0x88,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001000-00000000
incp    x0, p0.b  // 00100101-00101100-10001000-00000000
// CHECK: incp    x0, p0.b // encoding: [0x00,0x88,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001000-00000000
INCP    X0, P0.B  // 00100101-00101100-10001000-00000000
// CHECK: incp    x0, p0.b // encoding: [0x00,0x88,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001000-00000000
incp    z23.d, p13  // 00100101-11101100-10000001-10110111
// CHECK: incp    z23.d, p13 // encoding: [0xb7,0x81,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000001-10110111
INCP    Z23.D, P13  // 00100101-11101100-10000001-10110111
// CHECK: incp    z23.d, p13 // encoding: [0xb7,0x81,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000001-10110111
incp    z31.h, p15  // 00100101-01101100-10000001-11111111
// CHECK: incp    z31.h, p15 // encoding: [0xff,0x81,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000001-11111111
INCP    Z31.H, P15  // 00100101-01101100-10000001-11111111
// CHECK: incp    z31.h, p15 // encoding: [0xff,0x81,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000001-11111111
incp    xzr, p15.h  // 00100101-01101100-10001001-11111111
// CHECK: incp    xzr, p15.h // encoding: [0xff,0x89,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001001-11111111
INCP    XZR, P15.H  // 00100101-01101100-10001001-11111111
// CHECK: incp    xzr, p15.h // encoding: [0xff,0x89,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001001-11111111
incp    x0, p0.h  // 00100101-01101100-10001000-00000000
// CHECK: incp    x0, p0.h // encoding: [0x00,0x88,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001000-00000000
INCP    X0, P0.H  // 00100101-01101100-10001000-00000000
// CHECK: incp    x0, p0.h // encoding: [0x00,0x88,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001000-00000000
incp    x21, p10.h  // 00100101-01101100-10001001-01010101
// CHECK: incp    x21, p10.h // encoding: [0x55,0x89,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001001-01010101
INCP    X21, P10.H  // 00100101-01101100-10001001-01010101
// CHECK: incp    x21, p10.h // encoding: [0x55,0x89,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001001-01010101
incp    z31.s, p15  // 00100101-10101100-10000001-11111111
// CHECK: incp    z31.s, p15 // encoding: [0xff,0x81,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000001-11111111
INCP    Z31.S, P15  // 00100101-10101100-10000001-11111111
// CHECK: incp    z31.s, p15 // encoding: [0xff,0x81,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000001-11111111
incp    x0, p0.d  // 00100101-11101100-10001000-00000000
// CHECK: incp    x0, p0.d // encoding: [0x00,0x88,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001000-00000000
INCP    X0, P0.D  // 00100101-11101100-10001000-00000000
// CHECK: incp    x0, p0.d // encoding: [0x00,0x88,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001000-00000000
incp    x23, p13.b  // 00100101-00101100-10001001-10110111
// CHECK: incp    x23, p13.b // encoding: [0xb7,0x89,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001001-10110111
INCP    X23, P13.B  // 00100101-00101100-10001001-10110111
// CHECK: incp    x23, p13.b // encoding: [0xb7,0x89,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001001-10110111
incp    z21.s, p10  // 00100101-10101100-10000001-01010101
// CHECK: incp    z21.s, p10 // encoding: [0x55,0x81,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000001-01010101
INCP    Z21.S, P10  // 00100101-10101100-10000001-01010101
// CHECK: incp    z21.s, p10 // encoding: [0x55,0x81,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000001-01010101
incp    x23, p13.s  // 00100101-10101100-10001001-10110111
// CHECK: incp    x23, p13.s // encoding: [0xb7,0x89,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001001-10110111
INCP    X23, P13.S  // 00100101-10101100-10001001-10110111
// CHECK: incp    x23, p13.s // encoding: [0xb7,0x89,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001001-10110111
incp    x21, p10.b  // 00100101-00101100-10001001-01010101
// CHECK: incp    x21, p10.b // encoding: [0x55,0x89,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001001-01010101
INCP    X21, P10.B  // 00100101-00101100-10001001-01010101
// CHECK: incp    x21, p10.b // encoding: [0x55,0x89,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001001-01010101
incp    x21, p10.s  // 00100101-10101100-10001001-01010101
// CHECK: incp    x21, p10.s // encoding: [0x55,0x89,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001001-01010101
INCP    X21, P10.S  // 00100101-10101100-10001001-01010101
// CHECK: incp    x21, p10.s // encoding: [0x55,0x89,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001001-01010101
incp    z21.h, p10  // 00100101-01101100-10000001-01010101
// CHECK: incp    z21.h, p10 // encoding: [0x55,0x81,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000001-01010101
INCP    Z21.H, P10  // 00100101-01101100-10000001-01010101
// CHECK: incp    z21.h, p10 // encoding: [0x55,0x81,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000001-01010101
incp    xzr, p15.d  // 00100101-11101100-10001001-11111111
// CHECK: incp    xzr, p15.d // encoding: [0xff,0x89,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001001-11111111
INCP    XZR, P15.D  // 00100101-11101100-10001001-11111111
// CHECK: incp    xzr, p15.d // encoding: [0xff,0x89,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001001-11111111
incp    xzr, p15.b  // 00100101-00101100-10001001-11111111
// CHECK: incp    xzr, p15.b // encoding: [0xff,0x89,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001001-11111111
INCP    XZR, P15.B  // 00100101-00101100-10001001-11111111
// CHECK: incp    xzr, p15.b // encoding: [0xff,0x89,0x2c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101100-10001001-11111111
incp    z23.s, p13  // 00100101-10101100-10000001-10110111
// CHECK: incp    z23.s, p13 // encoding: [0xb7,0x81,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000001-10110111
INCP    Z23.S, P13  // 00100101-10101100-10000001-10110111
// CHECK: incp    z23.s, p13 // encoding: [0xb7,0x81,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000001-10110111
incp    z0.h, p0  // 00100101-01101100-10000000-00000000
// CHECK: incp    z0.h, p0 // encoding: [0x00,0x80,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000000-00000000
INCP    Z0.H, P0  // 00100101-01101100-10000000-00000000
// CHECK: incp    z0.h, p0 // encoding: [0x00,0x80,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000000-00000000
incp    z31.d, p15  // 00100101-11101100-10000001-11111111
// CHECK: incp    z31.d, p15 // encoding: [0xff,0x81,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000001-11111111
INCP    Z31.D, P15  // 00100101-11101100-10000001-11111111
// CHECK: incp    z31.d, p15 // encoding: [0xff,0x81,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000001-11111111
incp    x23, p13.d  // 00100101-11101100-10001001-10110111
// CHECK: incp    x23, p13.d // encoding: [0xb7,0x89,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001001-10110111
INCP    X23, P13.D  // 00100101-11101100-10001001-10110111
// CHECK: incp    x23, p13.d // encoding: [0xb7,0x89,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001001-10110111
incp    z23.h, p13  // 00100101-01101100-10000001-10110111
// CHECK: incp    z23.h, p13 // encoding: [0xb7,0x81,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000001-10110111
INCP    Z23.H, P13  // 00100101-01101100-10000001-10110111
// CHECK: incp    z23.h, p13 // encoding: [0xb7,0x81,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10000001-10110111
incp    x21, p10.d  // 00100101-11101100-10001001-01010101
// CHECK: incp    x21, p10.d // encoding: [0x55,0x89,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001001-01010101
INCP    X21, P10.D  // 00100101-11101100-10001001-01010101
// CHECK: incp    x21, p10.d // encoding: [0x55,0x89,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10001001-01010101
incp    x23, p13.h  // 00100101-01101100-10001001-10110111
// CHECK: incp    x23, p13.h // encoding: [0xb7,0x89,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001001-10110111
INCP    X23, P13.H  // 00100101-01101100-10001001-10110111
// CHECK: incp    x23, p13.h // encoding: [0xb7,0x89,0x6c,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101100-10001001-10110111
incp    xzr, p15.s  // 00100101-10101100-10001001-11111111
// CHECK: incp    xzr, p15.s // encoding: [0xff,0x89,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001001-11111111
INCP    XZR, P15.S  // 00100101-10101100-10001001-11111111
// CHECK: incp    xzr, p15.s // encoding: [0xff,0x89,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10001001-11111111
incp    z21.d, p10  // 00100101-11101100-10000001-01010101
// CHECK: incp    z21.d, p10 // encoding: [0x55,0x81,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000001-01010101
INCP    Z21.D, P10  // 00100101-11101100-10000001-01010101
// CHECK: incp    z21.d, p10 // encoding: [0x55,0x81,0xec,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101100-10000001-01010101
incp    z0.s, p0  // 00100101-10101100-10000000-00000000
// CHECK: incp    z0.s, p0 // encoding: [0x00,0x80,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000000-00000000
INCP    Z0.S, P0  // 00100101-10101100-10000000-00000000
// CHECK: incp    z0.s, p0 // encoding: [0x00,0x80,0xac,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101100-10000000-00000000
