// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fabd    z0.d, p0/m, z0.d, z0.d  // 01100101-11001000-10000000-00000000
// CHECK: fabd    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10000000-00000000
FABD    Z0.D, P0/M, Z0.D, Z0.D  // 01100101-11001000-10000000-00000000
// CHECK: fabd    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10000000-00000000
fabd    z23.s, p3/m, z23.s, z13.s  // 01100101-10001000-10001101-10110111
// CHECK: fabd    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10001101-10110111
FABD    Z23.S, P3/M, Z23.S, Z13.S  // 01100101-10001000-10001101-10110111
// CHECK: fabd    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10001101-10110111
fabd    z31.s, p7/m, z31.s, z31.s  // 01100101-10001000-10011111-11111111
// CHECK: fabd    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10011111-11111111
FABD    Z31.S, P7/M, Z31.S, Z31.S  // 01100101-10001000-10011111-11111111
// CHECK: fabd    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10011111-11111111
fabd    z21.s, p5/m, z21.s, z10.s  // 01100101-10001000-10010101-01010101
// CHECK: fabd    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10010101-01010101
FABD    Z21.S, P5/M, Z21.S, Z10.S  // 01100101-10001000-10010101-01010101
// CHECK: fabd    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10010101-01010101
fabd    z21.h, p5/m, z21.h, z10.h  // 01100101-01001000-10010101-01010101
// CHECK: fabd    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10010101-01010101
FABD    Z21.H, P5/M, Z21.H, Z10.H  // 01100101-01001000-10010101-01010101
// CHECK: fabd    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10010101-01010101
fabd    z31.h, p7/m, z31.h, z31.h  // 01100101-01001000-10011111-11111111
// CHECK: fabd    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10011111-11111111
FABD    Z31.H, P7/M, Z31.H, Z31.H  // 01100101-01001000-10011111-11111111
// CHECK: fabd    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10011111-11111111
fabd    z0.s, p0/m, z0.s, z0.s  // 01100101-10001000-10000000-00000000
// CHECK: fabd    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10000000-00000000
FABD    Z0.S, P0/M, Z0.S, Z0.S  // 01100101-10001000-10000000-00000000
// CHECK: fabd    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-10000000-00000000
fabd    z23.d, p3/m, z23.d, z13.d  // 01100101-11001000-10001101-10110111
// CHECK: fabd    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10001101-10110111
FABD    Z23.D, P3/M, Z23.D, Z13.D  // 01100101-11001000-10001101-10110111
// CHECK: fabd    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10001101-10110111
fabd    z31.d, p7/m, z31.d, z31.d  // 01100101-11001000-10011111-11111111
// CHECK: fabd    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10011111-11111111
FABD    Z31.D, P7/M, Z31.D, Z31.D  // 01100101-11001000-10011111-11111111
// CHECK: fabd    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10011111-11111111
fabd    z21.d, p5/m, z21.d, z10.d  // 01100101-11001000-10010101-01010101
// CHECK: fabd    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10010101-01010101
FABD    Z21.D, P5/M, Z21.D, Z10.D  // 01100101-11001000-10010101-01010101
// CHECK: fabd    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-10010101-01010101
fabd    z0.h, p0/m, z0.h, z0.h  // 01100101-01001000-10000000-00000000
// CHECK: fabd    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10000000-00000000
FABD    Z0.H, P0/M, Z0.H, Z0.H  // 01100101-01001000-10000000-00000000
// CHECK: fabd    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10000000-00000000
fabd    z23.h, p3/m, z23.h, z13.h  // 01100101-01001000-10001101-10110111
// CHECK: fabd    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10001101-10110111
FABD    Z23.H, P3/M, Z23.H, Z13.H  // 01100101-01001000-10001101-10110111
// CHECK: fabd    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-10001101-10110111
