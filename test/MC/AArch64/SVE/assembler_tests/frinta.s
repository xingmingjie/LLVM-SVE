// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
frinta  z0.d, p0/m, z0.d  // 01100101-11000100-10100000-00000000
// CHECK: frinta  z0.d, p0/m, z0.d // encoding: [0x00,0xa0,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10100000-00000000
FRINTA  Z0.D, P0/M, Z0.D  // 01100101-11000100-10100000-00000000
// CHECK: frinta  z0.d, p0/m, z0.d // encoding: [0x00,0xa0,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10100000-00000000
frinta  z31.s, p7/m, z31.s  // 01100101-10000100-10111111-11111111
// CHECK: frinta  z31.s, p7/m, z31.s // encoding: [0xff,0xbf,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10111111-11111111
FRINTA  Z31.S, P7/M, Z31.S  // 01100101-10000100-10111111-11111111
// CHECK: frinta  z31.s, p7/m, z31.s // encoding: [0xff,0xbf,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10111111-11111111
frinta  z31.h, p7/m, z31.h  // 01100101-01000100-10111111-11111111
// CHECK: frinta  z31.h, p7/m, z31.h // encoding: [0xff,0xbf,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10111111-11111111
FRINTA  Z31.H, P7/M, Z31.H  // 01100101-01000100-10111111-11111111
// CHECK: frinta  z31.h, p7/m, z31.h // encoding: [0xff,0xbf,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10111111-11111111
frinta  z21.d, p5/m, z10.d  // 01100101-11000100-10110101-01010101
// CHECK: frinta  z21.d, p5/m, z10.d // encoding: [0x55,0xb5,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10110101-01010101
FRINTA  Z21.D, P5/M, Z10.D  // 01100101-11000100-10110101-01010101
// CHECK: frinta  z21.d, p5/m, z10.d // encoding: [0x55,0xb5,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10110101-01010101
frinta  z21.s, p5/m, z10.s  // 01100101-10000100-10110101-01010101
// CHECK: frinta  z21.s, p5/m, z10.s // encoding: [0x55,0xb5,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10110101-01010101
FRINTA  Z21.S, P5/M, Z10.S  // 01100101-10000100-10110101-01010101
// CHECK: frinta  z21.s, p5/m, z10.s // encoding: [0x55,0xb5,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10110101-01010101
frinta  z31.d, p7/m, z31.d  // 01100101-11000100-10111111-11111111
// CHECK: frinta  z31.d, p7/m, z31.d // encoding: [0xff,0xbf,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10111111-11111111
FRINTA  Z31.D, P7/M, Z31.D  // 01100101-11000100-10111111-11111111
// CHECK: frinta  z31.d, p7/m, z31.d // encoding: [0xff,0xbf,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10111111-11111111
frinta  z0.s, p0/m, z0.s  // 01100101-10000100-10100000-00000000
// CHECK: frinta  z0.s, p0/m, z0.s // encoding: [0x00,0xa0,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10100000-00000000
FRINTA  Z0.S, P0/M, Z0.S  // 01100101-10000100-10100000-00000000
// CHECK: frinta  z0.s, p0/m, z0.s // encoding: [0x00,0xa0,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10100000-00000000
frinta  z23.s, p3/m, z13.s  // 01100101-10000100-10101101-10110111
// CHECK: frinta  z23.s, p3/m, z13.s // encoding: [0xb7,0xad,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10101101-10110111
FRINTA  Z23.S, P3/M, Z13.S  // 01100101-10000100-10101101-10110111
// CHECK: frinta  z23.s, p3/m, z13.s // encoding: [0xb7,0xad,0x84,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000100-10101101-10110111
frinta  z0.h, p0/m, z0.h  // 01100101-01000100-10100000-00000000
// CHECK: frinta  z0.h, p0/m, z0.h // encoding: [0x00,0xa0,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10100000-00000000
FRINTA  Z0.H, P0/M, Z0.H  // 01100101-01000100-10100000-00000000
// CHECK: frinta  z0.h, p0/m, z0.h // encoding: [0x00,0xa0,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10100000-00000000
frinta  z23.h, p3/m, z13.h  // 01100101-01000100-10101101-10110111
// CHECK: frinta  z23.h, p3/m, z13.h // encoding: [0xb7,0xad,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10101101-10110111
FRINTA  Z23.H, P3/M, Z13.H  // 01100101-01000100-10101101-10110111
// CHECK: frinta  z23.h, p3/m, z13.h // encoding: [0xb7,0xad,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10101101-10110111
frinta  z21.h, p5/m, z10.h  // 01100101-01000100-10110101-01010101
// CHECK: frinta  z21.h, p5/m, z10.h // encoding: [0x55,0xb5,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10110101-01010101
FRINTA  Z21.H, P5/M, Z10.H  // 01100101-01000100-10110101-01010101
// CHECK: frinta  z21.h, p5/m, z10.h // encoding: [0x55,0xb5,0x44,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000100-10110101-01010101
frinta  z23.d, p3/m, z13.d  // 01100101-11000100-10101101-10110111
// CHECK: frinta  z23.d, p3/m, z13.d // encoding: [0xb7,0xad,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10101101-10110111
FRINTA  Z23.D, P3/M, Z13.D  // 01100101-11000100-10101101-10110111
// CHECK: frinta  z23.d, p3/m, z13.d // encoding: [0xb7,0xad,0xc4,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000100-10101101-10110111
