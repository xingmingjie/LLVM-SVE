// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
clasta  d0, p0, d0, z0.d  // 00000101-11101010-10000000-00000000
// CHECK: clasta  d0, p0, d0, z0.d // encoding: [0x00,0x80,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10000000-00000000
CLASTA  D0, P0, D0, Z0.D  // 00000101-11101010-10000000-00000000
// CHECK: clasta  d0, p0, d0, z0.d // encoding: [0x00,0x80,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10000000-00000000
clasta  z0.b, p0, z0.b, z0.b  // 00000101-00101000-10000000-00000000
// CHECK: clasta  z0.b, p0, z0.b, z0.b // encoding: [0x00,0x80,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10000000-00000000
CLASTA  Z0.B, P0, Z0.B, Z0.B  // 00000101-00101000-10000000-00000000
// CHECK: clasta  z0.b, p0, z0.b, z0.b // encoding: [0x00,0x80,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10000000-00000000
clasta  z23.s, p3, z23.s, z13.s  // 00000101-10101000-10001101-10110111
// CHECK: clasta  z23.s, p3, z23.s, z13.s // encoding: [0xb7,0x8d,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10001101-10110111
CLASTA  Z23.S, P3, Z23.S, Z13.S  // 00000101-10101000-10001101-10110111
// CHECK: clasta  z23.s, p3, z23.s, z13.s // encoding: [0xb7,0x8d,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10001101-10110111
clasta  w21, p5, w21, z10.h  // 00000101-01110000-10110101-01010101
// CHECK: clasta  w21, p5, w21, z10.h // encoding: [0x55,0xb5,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10110101-01010101
CLASTA  W21, P5, W21, Z10.H  // 00000101-01110000-10110101-01010101
// CHECK: clasta  w21, p5, w21, z10.h // encoding: [0x55,0xb5,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10110101-01010101
clasta  wzr, p7, wzr, z31.b  // 00000101-00110000-10111111-11111111
// CHECK: clasta  wzr, p7, wzr, z31.b // encoding: [0xff,0xbf,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10111111-11111111
CLASTA  WZR, P7, WZR, Z31.B  // 00000101-00110000-10111111-11111111
// CHECK: clasta  wzr, p7, wzr, z31.b // encoding: [0xff,0xbf,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10111111-11111111
clasta  d23, p3, d23, z13.d  // 00000101-11101010-10001101-10110111
// CHECK: clasta  d23, p3, d23, z13.d // encoding: [0xb7,0x8d,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10001101-10110111
CLASTA  D23, P3, D23, Z13.D  // 00000101-11101010-10001101-10110111
// CHECK: clasta  d23, p3, d23, z13.d // encoding: [0xb7,0x8d,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10001101-10110111
clasta  h31, p7, h31, z31.h  // 00000101-01101010-10011111-11111111
// CHECK: clasta  h31, p7, h31, z31.h // encoding: [0xff,0x9f,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10011111-11111111
CLASTA  H31, P7, H31, Z31.H  // 00000101-01101010-10011111-11111111
// CHECK: clasta  h31, p7, h31, z31.h // encoding: [0xff,0x9f,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10011111-11111111
clasta  z31.h, p7, z31.h, z31.h  // 00000101-01101000-10011111-11111111
// CHECK: clasta  z31.h, p7, z31.h, z31.h // encoding: [0xff,0x9f,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10011111-11111111
CLASTA  Z31.H, P7, Z31.H, Z31.H  // 00000101-01101000-10011111-11111111
// CHECK: clasta  z31.h, p7, z31.h, z31.h // encoding: [0xff,0x9f,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10011111-11111111
clasta  x23, p3, x23, z13.d  // 00000101-11110000-10101101-10110111
// CHECK: clasta  x23, p3, x23, z13.d // encoding: [0xb7,0xad,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10101101-10110111
CLASTA  X23, P3, X23, Z13.D  // 00000101-11110000-10101101-10110111
// CHECK: clasta  x23, p3, x23, z13.d // encoding: [0xb7,0xad,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10101101-10110111
clasta  z23.h, p3, z23.h, z13.h  // 00000101-01101000-10001101-10110111
// CHECK: clasta  z23.h, p3, z23.h, z13.h // encoding: [0xb7,0x8d,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10001101-10110111
CLASTA  Z23.H, P3, Z23.H, Z13.H  // 00000101-01101000-10001101-10110111
// CHECK: clasta  z23.h, p3, z23.h, z13.h // encoding: [0xb7,0x8d,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10001101-10110111
clasta  w23, p3, w23, z13.h  // 00000101-01110000-10101101-10110111
// CHECK: clasta  w23, p3, w23, z13.h // encoding: [0xb7,0xad,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10101101-10110111
CLASTA  W23, P3, W23, Z13.H  // 00000101-01110000-10101101-10110111
// CHECK: clasta  w23, p3, w23, z13.h // encoding: [0xb7,0xad,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10101101-10110111
clasta  z21.s, p5, z21.s, z10.s  // 00000101-10101000-10010101-01010101
// CHECK: clasta  z21.s, p5, z21.s, z10.s // encoding: [0x55,0x95,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10010101-01010101
CLASTA  Z21.S, P5, Z21.S, Z10.S  // 00000101-10101000-10010101-01010101
// CHECK: clasta  z21.s, p5, z21.s, z10.s // encoding: [0x55,0x95,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10010101-01010101
clasta  z31.b, p7, z31.b, z31.b  // 00000101-00101000-10011111-11111111
// CHECK: clasta  z31.b, p7, z31.b, z31.b // encoding: [0xff,0x9f,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10011111-11111111
CLASTA  Z31.B, P7, Z31.B, Z31.B  // 00000101-00101000-10011111-11111111
// CHECK: clasta  z31.b, p7, z31.b, z31.b // encoding: [0xff,0x9f,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10011111-11111111
clasta  z31.s, p7, z31.s, z31.s  // 00000101-10101000-10011111-11111111
// CHECK: clasta  z31.s, p7, z31.s, z31.s // encoding: [0xff,0x9f,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10011111-11111111
CLASTA  Z31.S, P7, Z31.S, Z31.S  // 00000101-10101000-10011111-11111111
// CHECK: clasta  z31.s, p7, z31.s, z31.s // encoding: [0xff,0x9f,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10011111-11111111
clasta  d21, p5, d21, z10.d  // 00000101-11101010-10010101-01010101
// CHECK: clasta  d21, p5, d21, z10.d // encoding: [0x55,0x95,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10010101-01010101
CLASTA  D21, P5, D21, Z10.D  // 00000101-11101010-10010101-01010101
// CHECK: clasta  d21, p5, d21, z10.d // encoding: [0x55,0x95,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10010101-01010101
clasta  s23, p3, s23, z13.s  // 00000101-10101010-10001101-10110111
// CHECK: clasta  s23, p3, s23, z13.s // encoding: [0xb7,0x8d,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10001101-10110111
CLASTA  S23, P3, S23, Z13.S  // 00000101-10101010-10001101-10110111
// CHECK: clasta  s23, p3, s23, z13.s // encoding: [0xb7,0x8d,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10001101-10110111
clasta  z23.d, p3, z23.d, z13.d  // 00000101-11101000-10001101-10110111
// CHECK: clasta  z23.d, p3, z23.d, z13.d // encoding: [0xb7,0x8d,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10001101-10110111
CLASTA  Z23.D, P3, Z23.D, Z13.D  // 00000101-11101000-10001101-10110111
// CHECK: clasta  z23.d, p3, z23.d, z13.d // encoding: [0xb7,0x8d,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10001101-10110111
clasta  b21, p5, b21, z10.b  // 00000101-00101010-10010101-01010101
// CHECK: clasta  b21, p5, b21, z10.b // encoding: [0x55,0x95,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10010101-01010101
CLASTA  B21, P5, B21, Z10.B  // 00000101-00101010-10010101-01010101
// CHECK: clasta  b21, p5, b21, z10.b // encoding: [0x55,0x95,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10010101-01010101
clasta  w0, p0, w0, z0.b  // 00000101-00110000-10100000-00000000
// CHECK: clasta  w0, p0, w0, z0.b // encoding: [0x00,0xa0,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10100000-00000000
CLASTA  W0, P0, W0, Z0.B  // 00000101-00110000-10100000-00000000
// CHECK: clasta  w0, p0, w0, z0.b // encoding: [0x00,0xa0,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10100000-00000000
clasta  z21.h, p5, z21.h, z10.h  // 00000101-01101000-10010101-01010101
// CHECK: clasta  z21.h, p5, z21.h, z10.h // encoding: [0x55,0x95,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10010101-01010101
CLASTA  Z21.H, P5, Z21.H, Z10.H  // 00000101-01101000-10010101-01010101
// CHECK: clasta  z21.h, p5, z21.h, z10.h // encoding: [0x55,0x95,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10010101-01010101
clasta  z23.b, p3, z23.b, z13.b  // 00000101-00101000-10001101-10110111
// CHECK: clasta  z23.b, p3, z23.b, z13.b // encoding: [0xb7,0x8d,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10001101-10110111
CLASTA  Z23.B, P3, Z23.B, Z13.B  // 00000101-00101000-10001101-10110111
// CHECK: clasta  z23.b, p3, z23.b, z13.b // encoding: [0xb7,0x8d,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10001101-10110111
clasta  wzr, p7, wzr, z31.s  // 00000101-10110000-10111111-11111111
// CHECK: clasta  wzr, p7, wzr, z31.s // encoding: [0xff,0xbf,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10111111-11111111
CLASTA  WZR, P7, WZR, Z31.S  // 00000101-10110000-10111111-11111111
// CHECK: clasta  wzr, p7, wzr, z31.s // encoding: [0xff,0xbf,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10111111-11111111
clasta  wzr, p7, wzr, z31.h  // 00000101-01110000-10111111-11111111
// CHECK: clasta  wzr, p7, wzr, z31.h // encoding: [0xff,0xbf,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10111111-11111111
CLASTA  WZR, P7, WZR, Z31.H  // 00000101-01110000-10111111-11111111
// CHECK: clasta  wzr, p7, wzr, z31.h // encoding: [0xff,0xbf,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10111111-11111111
clasta  w21, p5, w21, z10.s  // 00000101-10110000-10110101-01010101
// CHECK: clasta  w21, p5, w21, z10.s // encoding: [0x55,0xb5,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10110101-01010101
CLASTA  W21, P5, W21, Z10.S  // 00000101-10110000-10110101-01010101
// CHECK: clasta  w21, p5, w21, z10.s // encoding: [0x55,0xb5,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10110101-01010101
clasta  w23, p3, w23, z13.b  // 00000101-00110000-10101101-10110111
// CHECK: clasta  w23, p3, w23, z13.b // encoding: [0xb7,0xad,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10101101-10110111
CLASTA  W23, P3, W23, Z13.B  // 00000101-00110000-10101101-10110111
// CHECK: clasta  w23, p3, w23, z13.b // encoding: [0xb7,0xad,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10101101-10110111
clasta  w21, p5, w21, z10.b  // 00000101-00110000-10110101-01010101
// CHECK: clasta  w21, p5, w21, z10.b // encoding: [0x55,0xb5,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10110101-01010101
CLASTA  W21, P5, W21, Z10.B  // 00000101-00110000-10110101-01010101
// CHECK: clasta  w21, p5, w21, z10.b // encoding: [0x55,0xb5,0x30,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00110000-10110101-01010101
clasta  w0, p0, w0, z0.h  // 00000101-01110000-10100000-00000000
// CHECK: clasta  w0, p0, w0, z0.h // encoding: [0x00,0xa0,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10100000-00000000
CLASTA  W0, P0, W0, Z0.H  // 00000101-01110000-10100000-00000000
// CHECK: clasta  w0, p0, w0, z0.h // encoding: [0x00,0xa0,0x70,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01110000-10100000-00000000
clasta  b0, p0, b0, z0.b  // 00000101-00101010-10000000-00000000
// CHECK: clasta  b0, p0, b0, z0.b // encoding: [0x00,0x80,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10000000-00000000
CLASTA  B0, P0, B0, Z0.B  // 00000101-00101010-10000000-00000000
// CHECK: clasta  b0, p0, b0, z0.b // encoding: [0x00,0x80,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10000000-00000000
clasta  z21.d, p5, z21.d, z10.d  // 00000101-11101000-10010101-01010101
// CHECK: clasta  z21.d, p5, z21.d, z10.d // encoding: [0x55,0x95,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10010101-01010101
CLASTA  Z21.D, P5, Z21.D, Z10.D  // 00000101-11101000-10010101-01010101
// CHECK: clasta  z21.d, p5, z21.d, z10.d // encoding: [0x55,0x95,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10010101-01010101
clasta  z0.s, p0, z0.s, z0.s  // 00000101-10101000-10000000-00000000
// CHECK: clasta  z0.s, p0, z0.s, z0.s // encoding: [0x00,0x80,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10000000-00000000
CLASTA  Z0.S, P0, Z0.S, Z0.S  // 00000101-10101000-10000000-00000000
// CHECK: clasta  z0.s, p0, z0.s, z0.s // encoding: [0x00,0x80,0xa8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101000-10000000-00000000
clasta  b23, p3, b23, z13.b  // 00000101-00101010-10001101-10110111
// CHECK: clasta  b23, p3, b23, z13.b // encoding: [0xb7,0x8d,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10001101-10110111
CLASTA  B23, P3, B23, Z13.B  // 00000101-00101010-10001101-10110111
// CHECK: clasta  b23, p3, b23, z13.b // encoding: [0xb7,0x8d,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10001101-10110111
clasta  z31.d, p7, z31.d, z31.d  // 00000101-11101000-10011111-11111111
// CHECK: clasta  z31.d, p7, z31.d, z31.d // encoding: [0xff,0x9f,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10011111-11111111
CLASTA  Z31.D, P7, Z31.D, Z31.D  // 00000101-11101000-10011111-11111111
// CHECK: clasta  z31.d, p7, z31.d, z31.d // encoding: [0xff,0x9f,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10011111-11111111
clasta  x0, p0, x0, z0.d  // 00000101-11110000-10100000-00000000
// CHECK: clasta  x0, p0, x0, z0.d // encoding: [0x00,0xa0,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10100000-00000000
CLASTA  X0, P0, X0, Z0.D  // 00000101-11110000-10100000-00000000
// CHECK: clasta  x0, p0, x0, z0.d // encoding: [0x00,0xa0,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10100000-00000000
clasta  z0.d, p0, z0.d, z0.d  // 00000101-11101000-10000000-00000000
// CHECK: clasta  z0.d, p0, z0.d, z0.d // encoding: [0x00,0x80,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10000000-00000000
CLASTA  Z0.D, P0, Z0.D, Z0.D  // 00000101-11101000-10000000-00000000
// CHECK: clasta  z0.d, p0, z0.d, z0.d // encoding: [0x00,0x80,0xe8,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101000-10000000-00000000
clasta  s0, p0, s0, z0.s  // 00000101-10101010-10000000-00000000
// CHECK: clasta  s0, p0, s0, z0.s // encoding: [0x00,0x80,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10000000-00000000
CLASTA  S0, P0, S0, Z0.S  // 00000101-10101010-10000000-00000000
// CHECK: clasta  s0, p0, s0, z0.s // encoding: [0x00,0x80,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10000000-00000000
clasta  xzr, p7, xzr, z31.d  // 00000101-11110000-10111111-11111111
// CHECK: clasta  xzr, p7, xzr, z31.d // encoding: [0xff,0xbf,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10111111-11111111
CLASTA  XZR, P7, XZR, Z31.D  // 00000101-11110000-10111111-11111111
// CHECK: clasta  xzr, p7, xzr, z31.d // encoding: [0xff,0xbf,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10111111-11111111
clasta  h23, p3, h23, z13.h  // 00000101-01101010-10001101-10110111
// CHECK: clasta  h23, p3, h23, z13.h // encoding: [0xb7,0x8d,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10001101-10110111
CLASTA  H23, P3, H23, Z13.H  // 00000101-01101010-10001101-10110111
// CHECK: clasta  h23, p3, h23, z13.h // encoding: [0xb7,0x8d,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10001101-10110111
clasta  s21, p5, s21, z10.s  // 00000101-10101010-10010101-01010101
// CHECK: clasta  s21, p5, s21, z10.s // encoding: [0x55,0x95,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10010101-01010101
CLASTA  S21, P5, S21, Z10.S  // 00000101-10101010-10010101-01010101
// CHECK: clasta  s21, p5, s21, z10.s // encoding: [0x55,0x95,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10010101-01010101
clasta  w23, p3, w23, z13.s  // 00000101-10110000-10101101-10110111
// CHECK: clasta  w23, p3, w23, z13.s // encoding: [0xb7,0xad,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10101101-10110111
CLASTA  W23, P3, W23, Z13.S  // 00000101-10110000-10101101-10110111
// CHECK: clasta  w23, p3, w23, z13.s // encoding: [0xb7,0xad,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10101101-10110111
clasta  h0, p0, h0, z0.h  // 00000101-01101010-10000000-00000000
// CHECK: clasta  h0, p0, h0, z0.h // encoding: [0x00,0x80,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10000000-00000000
CLASTA  H0, P0, H0, Z0.H  // 00000101-01101010-10000000-00000000
// CHECK: clasta  h0, p0, h0, z0.h // encoding: [0x00,0x80,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10000000-00000000
clasta  b31, p7, b31, z31.b  // 00000101-00101010-10011111-11111111
// CHECK: clasta  b31, p7, b31, z31.b // encoding: [0xff,0x9f,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10011111-11111111
CLASTA  B31, P7, B31, Z31.B  // 00000101-00101010-10011111-11111111
// CHECK: clasta  b31, p7, b31, z31.b // encoding: [0xff,0x9f,0x2a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101010-10011111-11111111
clasta  d31, p7, d31, z31.d  // 00000101-11101010-10011111-11111111
// CHECK: clasta  d31, p7, d31, z31.d // encoding: [0xff,0x9f,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10011111-11111111
CLASTA  D31, P7, D31, Z31.D  // 00000101-11101010-10011111-11111111
// CHECK: clasta  d31, p7, d31, z31.d // encoding: [0xff,0x9f,0xea,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11101010-10011111-11111111
clasta  x21, p5, x21, z10.d  // 00000101-11110000-10110101-01010101
// CHECK: clasta  x21, p5, x21, z10.d // encoding: [0x55,0xb5,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10110101-01010101
CLASTA  X21, P5, X21, Z10.D  // 00000101-11110000-10110101-01010101
// CHECK: clasta  x21, p5, x21, z10.d // encoding: [0x55,0xb5,0xf0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-11110000-10110101-01010101
clasta  z21.b, p5, z21.b, z10.b  // 00000101-00101000-10010101-01010101
// CHECK: clasta  z21.b, p5, z21.b, z10.b // encoding: [0x55,0x95,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10010101-01010101
CLASTA  Z21.B, P5, Z21.B, Z10.B  // 00000101-00101000-10010101-01010101
// CHECK: clasta  z21.b, p5, z21.b, z10.b // encoding: [0x55,0x95,0x28,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-00101000-10010101-01010101
clasta  h21, p5, h21, z10.h  // 00000101-01101010-10010101-01010101
// CHECK: clasta  h21, p5, h21, z10.h // encoding: [0x55,0x95,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10010101-01010101
CLASTA  H21, P5, H21, Z10.H  // 00000101-01101010-10010101-01010101
// CHECK: clasta  h21, p5, h21, z10.h // encoding: [0x55,0x95,0x6a,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101010-10010101-01010101
clasta  s31, p7, s31, z31.s  // 00000101-10101010-10011111-11111111
// CHECK: clasta  s31, p7, s31, z31.s // encoding: [0xff,0x9f,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10011111-11111111
CLASTA  S31, P7, S31, Z31.S  // 00000101-10101010-10011111-11111111
// CHECK: clasta  s31, p7, s31, z31.s // encoding: [0xff,0x9f,0xaa,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10101010-10011111-11111111
clasta  w0, p0, w0, z0.s  // 00000101-10110000-10100000-00000000
// CHECK: clasta  w0, p0, w0, z0.s // encoding: [0x00,0xa0,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10100000-00000000
CLASTA  W0, P0, W0, Z0.S  // 00000101-10110000-10100000-00000000
// CHECK: clasta  w0, p0, w0, z0.s // encoding: [0x00,0xa0,0xb0,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-10110000-10100000-00000000
clasta  z0.h, p0, z0.h, z0.h  // 00000101-01101000-10000000-00000000
// CHECK: clasta  z0.h, p0, z0.h, z0.h // encoding: [0x00,0x80,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10000000-00000000
CLASTA  Z0.H, P0, Z0.H, Z0.H  // 00000101-01101000-10000000-00000000
// CHECK: clasta  z0.h, p0, z0.h, z0.h // encoding: [0x00,0x80,0x68,0x05]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000101-01101000-10000000-00000000
