// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
umin    z23.d, p3/m, z23.d, z13.d  // 00000100-11001011-00001101-10110111
// CHECK: umin    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00001101-10110111
UMIN    Z23.D, P3/M, Z23.D, Z13.D  // 00000100-11001011-00001101-10110111
// CHECK: umin    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00001101-10110111
umin    z0.d, p0/m, z0.d, z0.d  // 00000100-11001011-00000000-00000000
// CHECK: umin    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00000000-00000000
UMIN    Z0.D, P0/M, Z0.D, Z0.D  // 00000100-11001011-00000000-00000000
// CHECK: umin    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00000000-00000000
umin    z21.h, p5/m, z21.h, z10.h  // 00000100-01001011-00010101-01010101
// CHECK: umin    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00010101-01010101
UMIN    Z21.H, P5/M, Z21.H, Z10.H  // 00000100-01001011-00010101-01010101
// CHECK: umin    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00010101-01010101
umin    z21.h, z21.h, #170  // 00100101-01101011-11010101-01010101
// CHECK: umin    z21.h, z21.h, #170 // encoding: [0x55,0xd5,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11010101-01010101
UMIN    Z21.H, Z21.H, #170  // 00100101-01101011-11010101-01010101
// CHECK: umin    z21.h, z21.h, #170 // encoding: [0x55,0xd5,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11010101-01010101
umin    z0.d, z0.d, #0  // 00100101-11101011-11000000-00000000
// CHECK: umin    z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11000000-00000000
UMIN    Z0.D, Z0.D, #0  // 00100101-11101011-11000000-00000000
// CHECK: umin    z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11000000-00000000
umin    z23.b, z23.b, #109  // 00100101-00101011-11001101-10110111
// CHECK: umin    z23.b, z23.b, #109 // encoding: [0xb7,0xcd,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11001101-10110111
UMIN    Z23.B, Z23.B, #109  // 00100101-00101011-11001101-10110111
// CHECK: umin    z23.b, z23.b, #109 // encoding: [0xb7,0xcd,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11001101-10110111
umin    z23.s, z23.s, #109  // 00100101-10101011-11001101-10110111
// CHECK: umin    z23.s, z23.s, #109 // encoding: [0xb7,0xcd,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11001101-10110111
UMIN    Z23.S, Z23.S, #109  // 00100101-10101011-11001101-10110111
// CHECK: umin    z23.s, z23.s, #109 // encoding: [0xb7,0xcd,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11001101-10110111
umin    z31.s, z31.s, #255  // 00100101-10101011-11011111-11111111
// CHECK: umin    z31.s, z31.s, #255 // encoding: [0xff,0xdf,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11011111-11111111
UMIN    Z31.S, Z31.S, #255  // 00100101-10101011-11011111-11111111
// CHECK: umin    z31.s, z31.s, #255 // encoding: [0xff,0xdf,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11011111-11111111
umin    z31.d, z31.d, #255  // 00100101-11101011-11011111-11111111
// CHECK: umin    z31.d, z31.d, #255 // encoding: [0xff,0xdf,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11011111-11111111
UMIN    Z31.D, Z31.D, #255  // 00100101-11101011-11011111-11111111
// CHECK: umin    z31.d, z31.d, #255 // encoding: [0xff,0xdf,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11011111-11111111
umin    z31.d, p7/m, z31.d, z31.d  // 00000100-11001011-00011111-11111111
// CHECK: umin    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00011111-11111111
UMIN    Z31.D, P7/M, Z31.D, Z31.D  // 00000100-11001011-00011111-11111111
// CHECK: umin    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00011111-11111111
umin    z23.b, p3/m, z23.b, z13.b  // 00000100-00001011-00001101-10110111
// CHECK: umin    z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x0d,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00001101-10110111
UMIN    Z23.B, P3/M, Z23.B, Z13.B  // 00000100-00001011-00001101-10110111
// CHECK: umin    z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x0d,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00001101-10110111
umin    z21.b, z21.b, #170  // 00100101-00101011-11010101-01010101
// CHECK: umin    z21.b, z21.b, #170 // encoding: [0x55,0xd5,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11010101-01010101
UMIN    Z21.B, Z21.B, #170  // 00100101-00101011-11010101-01010101
// CHECK: umin    z21.b, z21.b, #170 // encoding: [0x55,0xd5,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11010101-01010101
umin    z31.b, z31.b, #255  // 00100101-00101011-11011111-11111111
// CHECK: umin    z31.b, z31.b, #255 // encoding: [0xff,0xdf,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11011111-11111111
UMIN    Z31.B, Z31.B, #255  // 00100101-00101011-11011111-11111111
// CHECK: umin    z31.b, z31.b, #255 // encoding: [0xff,0xdf,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11011111-11111111
umin    z0.h, p0/m, z0.h, z0.h  // 00000100-01001011-00000000-00000000
// CHECK: umin    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00000000-00000000
UMIN    Z0.H, P0/M, Z0.H, Z0.H  // 00000100-01001011-00000000-00000000
// CHECK: umin    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00000000-00000000
umin    z0.s, z0.s, #0  // 00100101-10101011-11000000-00000000
// CHECK: umin    z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11000000-00000000
UMIN    Z0.S, Z0.S, #0  // 00100101-10101011-11000000-00000000
// CHECK: umin    z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11000000-00000000
umin    z23.d, z23.d, #109  // 00100101-11101011-11001101-10110111
// CHECK: umin    z23.d, z23.d, #109 // encoding: [0xb7,0xcd,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11001101-10110111
UMIN    Z23.D, Z23.D, #109  // 00100101-11101011-11001101-10110111
// CHECK: umin    z23.d, z23.d, #109 // encoding: [0xb7,0xcd,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11001101-10110111
umin    z31.s, p7/m, z31.s, z31.s  // 00000100-10001011-00011111-11111111
// CHECK: umin    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00011111-11111111
UMIN    Z31.S, P7/M, Z31.S, Z31.S  // 00000100-10001011-00011111-11111111
// CHECK: umin    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00011111-11111111
umin    z23.h, z23.h, #109  // 00100101-01101011-11001101-10110111
// CHECK: umin    z23.h, z23.h, #109 // encoding: [0xb7,0xcd,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11001101-10110111
UMIN    Z23.H, Z23.H, #109  // 00100101-01101011-11001101-10110111
// CHECK: umin    z23.h, z23.h, #109 // encoding: [0xb7,0xcd,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11001101-10110111
umin    z21.d, p5/m, z21.d, z10.d  // 00000100-11001011-00010101-01010101
// CHECK: umin    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00010101-01010101
UMIN    Z21.D, P5/M, Z21.D, Z10.D  // 00000100-11001011-00010101-01010101
// CHECK: umin    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xcb,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001011-00010101-01010101
umin    z31.b, p7/m, z31.b, z31.b  // 00000100-00001011-00011111-11111111
// CHECK: umin    z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x1f,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00011111-11111111
UMIN    Z31.B, P7/M, Z31.B, Z31.B  // 00000100-00001011-00011111-11111111
// CHECK: umin    z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x1f,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00011111-11111111
umin    z21.b, p5/m, z21.b, z10.b  // 00000100-00001011-00010101-01010101
// CHECK: umin    z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x15,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00010101-01010101
UMIN    Z21.B, P5/M, Z21.B, Z10.B  // 00000100-00001011-00010101-01010101
// CHECK: umin    z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x15,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00010101-01010101
umin    z0.h, z0.h, #0  // 00100101-01101011-11000000-00000000
// CHECK: umin    z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11000000-00000000
UMIN    Z0.H, Z0.H, #0  // 00100101-01101011-11000000-00000000
// CHECK: umin    z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11000000-00000000
umin    z0.b, p0/m, z0.b, z0.b  // 00000100-00001011-00000000-00000000
// CHECK: umin    z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x00,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00000000-00000000
UMIN    Z0.B, P0/M, Z0.B, Z0.B  // 00000100-00001011-00000000-00000000
// CHECK: umin    z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x00,0x0b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001011-00000000-00000000
umin    z21.d, z21.d, #170  // 00100101-11101011-11010101-01010101
// CHECK: umin    z21.d, z21.d, #170 // encoding: [0x55,0xd5,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11010101-01010101
UMIN    Z21.D, Z21.D, #170  // 00100101-11101011-11010101-01010101
// CHECK: umin    z21.d, z21.d, #170 // encoding: [0x55,0xd5,0xeb,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101011-11010101-01010101
umin    z31.h, z31.h, #255  // 00100101-01101011-11011111-11111111
// CHECK: umin    z31.h, z31.h, #255 // encoding: [0xff,0xdf,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11011111-11111111
UMIN    Z31.H, Z31.H, #255  // 00100101-01101011-11011111-11111111
// CHECK: umin    z31.h, z31.h, #255 // encoding: [0xff,0xdf,0x6b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101011-11011111-11111111
umin    z0.b, z0.b, #0  // 00100101-00101011-11000000-00000000
// CHECK: umin    z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11000000-00000000
UMIN    Z0.B, Z0.B, #0  // 00100101-00101011-11000000-00000000
// CHECK: umin    z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x2b,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101011-11000000-00000000
umin    z21.s, p5/m, z21.s, z10.s  // 00000100-10001011-00010101-01010101
// CHECK: umin    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00010101-01010101
UMIN    Z21.S, P5/M, Z21.S, Z10.S  // 00000100-10001011-00010101-01010101
// CHECK: umin    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00010101-01010101
umin    z23.s, p3/m, z23.s, z13.s  // 00000100-10001011-00001101-10110111
// CHECK: umin    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00001101-10110111
UMIN    Z23.S, P3/M, Z23.S, Z13.S  // 00000100-10001011-00001101-10110111
// CHECK: umin    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00001101-10110111
umin    z0.s, p0/m, z0.s, z0.s  // 00000100-10001011-00000000-00000000
// CHECK: umin    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00000000-00000000
UMIN    Z0.S, P0/M, Z0.S, Z0.S  // 00000100-10001011-00000000-00000000
// CHECK: umin    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x8b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001011-00000000-00000000
umin    z23.h, p3/m, z23.h, z13.h  // 00000100-01001011-00001101-10110111
// CHECK: umin    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00001101-10110111
UMIN    Z23.H, P3/M, Z23.H, Z13.H  // 00000100-01001011-00001101-10110111
// CHECK: umin    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00001101-10110111
umin    z21.s, z21.s, #170  // 00100101-10101011-11010101-01010101
// CHECK: umin    z21.s, z21.s, #170 // encoding: [0x55,0xd5,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11010101-01010101
UMIN    Z21.S, Z21.S, #170  // 00100101-10101011-11010101-01010101
// CHECK: umin    z21.s, z21.s, #170 // encoding: [0x55,0xd5,0xab,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101011-11010101-01010101
umin    z31.h, p7/m, z31.h, z31.h  // 00000100-01001011-00011111-11111111
// CHECK: umin    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00011111-11111111
UMIN    Z31.H, P7/M, Z31.H, Z31.H  // 00000100-01001011-00011111-11111111
// CHECK: umin    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x4b,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001011-00011111-11111111
