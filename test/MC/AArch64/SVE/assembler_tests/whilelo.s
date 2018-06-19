// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
whilelo p0.d, x0, x0  // 00100101-11100000-00011100-00000000
// CHECK: whilelo p0.d, x0, x0 // encoding: [0x00,0x1c,0xe0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100000-00011100-00000000
WHILELO P0.D, X0, X0  // 00100101-11100000-00011100-00000000
// CHECK: whilelo p0.d, x0, x0 // encoding: [0x00,0x1c,0xe0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100000-00011100-00000000
whilelo p15.s, xzr, xzr  // 00100101-10111111-00011111-11101111
// CHECK: whilelo p15.s, xzr, xzr // encoding: [0xef,0x1f,0xbf,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10111111-00011111-11101111
WHILELO P15.S, XZR, XZR  // 00100101-10111111-00011111-11101111
// CHECK: whilelo p15.s, xzr, xzr // encoding: [0xef,0x1f,0xbf,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10111111-00011111-11101111
whilelo p5.b, x10, x21  // 00100101-00110101-00011101-01000101
// CHECK: whilelo p5.b, x10, x21 // encoding: [0x45,0x1d,0x35,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00110101-00011101-01000101
WHILELO P5.B, X10, X21  // 00100101-00110101-00011101-01000101
// CHECK: whilelo p5.b, x10, x21 // encoding: [0x45,0x1d,0x35,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00110101-00011101-01000101
whilelo p15.s, wzr, wzr  // 00100101-10111111-00001111-11101111
// CHECK: whilelo p15.s, wzr, wzr // encoding: [0xef,0x0f,0xbf,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10111111-00001111-11101111
WHILELO P15.S, WZR, WZR  // 00100101-10111111-00001111-11101111
// CHECK: whilelo p15.s, wzr, wzr // encoding: [0xef,0x0f,0xbf,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10111111-00001111-11101111
whilelo p5.d, x10, x21  // 00100101-11110101-00011101-01000101
// CHECK: whilelo p5.d, x10, x21 // encoding: [0x45,0x1d,0xf5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11110101-00011101-01000101
WHILELO P5.D, X10, X21  // 00100101-11110101-00011101-01000101
// CHECK: whilelo p5.d, x10, x21 // encoding: [0x45,0x1d,0xf5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11110101-00011101-01000101
whilelo p7.s, x13, x8  // 00100101-10101000-00011101-10100111
// CHECK: whilelo p7.s, x13, x8 // encoding: [0xa7,0x1d,0xa8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101000-00011101-10100111
WHILELO P7.S, X13, X8  // 00100101-10101000-00011101-10100111
// CHECK: whilelo p7.s, x13, x8 // encoding: [0xa7,0x1d,0xa8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101000-00011101-10100111
whilelo p15.h, wzr, wzr  // 00100101-01111111-00001111-11101111
// CHECK: whilelo p15.h, wzr, wzr // encoding: [0xef,0x0f,0x7f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01111111-00001111-11101111
WHILELO P15.H, WZR, WZR  // 00100101-01111111-00001111-11101111
// CHECK: whilelo p15.h, wzr, wzr // encoding: [0xef,0x0f,0x7f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01111111-00001111-11101111
whilelo p7.s, w13, w8  // 00100101-10101000-00001101-10100111
// CHECK: whilelo p7.s, w13, w8 // encoding: [0xa7,0x0d,0xa8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101000-00001101-10100111
WHILELO P7.S, W13, W8  // 00100101-10101000-00001101-10100111
// CHECK: whilelo p7.s, w13, w8 // encoding: [0xa7,0x0d,0xa8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101000-00001101-10100111
whilelo p7.b, w13, w8  // 00100101-00101000-00001101-10100111
// CHECK: whilelo p7.b, w13, w8 // encoding: [0xa7,0x0d,0x28,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101000-00001101-10100111
WHILELO P7.B, W13, W8  // 00100101-00101000-00001101-10100111
// CHECK: whilelo p7.b, w13, w8 // encoding: [0xa7,0x0d,0x28,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101000-00001101-10100111
whilelo p5.s, x10, x21  // 00100101-10110101-00011101-01000101
// CHECK: whilelo p5.s, x10, x21 // encoding: [0x45,0x1d,0xb5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10110101-00011101-01000101
WHILELO P5.S, X10, X21  // 00100101-10110101-00011101-01000101
// CHECK: whilelo p5.s, x10, x21 // encoding: [0x45,0x1d,0xb5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10110101-00011101-01000101
whilelo p7.h, w13, w8  // 00100101-01101000-00001101-10100111
// CHECK: whilelo p7.h, w13, w8 // encoding: [0xa7,0x0d,0x68,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101000-00001101-10100111
WHILELO P7.H, W13, W8  // 00100101-01101000-00001101-10100111
// CHECK: whilelo p7.h, w13, w8 // encoding: [0xa7,0x0d,0x68,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101000-00001101-10100111
whilelo p5.h, w10, w21  // 00100101-01110101-00001101-01000101
// CHECK: whilelo p5.h, w10, w21 // encoding: [0x45,0x0d,0x75,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01110101-00001101-01000101
WHILELO P5.H, W10, W21  // 00100101-01110101-00001101-01000101
// CHECK: whilelo p5.h, w10, w21 // encoding: [0x45,0x0d,0x75,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01110101-00001101-01000101
whilelo p0.h, w0, w0  // 00100101-01100000-00001100-00000000
// CHECK: whilelo p0.h, w0, w0 // encoding: [0x00,0x0c,0x60,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100000-00001100-00000000
WHILELO P0.H, W0, W0  // 00100101-01100000-00001100-00000000
// CHECK: whilelo p0.h, w0, w0 // encoding: [0x00,0x0c,0x60,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100000-00001100-00000000
whilelo p5.b, w10, w21  // 00100101-00110101-00001101-01000101
// CHECK: whilelo p5.b, w10, w21 // encoding: [0x45,0x0d,0x35,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00110101-00001101-01000101
WHILELO P5.B, W10, W21  // 00100101-00110101-00001101-01000101
// CHECK: whilelo p5.b, w10, w21 // encoding: [0x45,0x0d,0x35,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00110101-00001101-01000101
whilelo p0.h, x0, x0  // 00100101-01100000-00011100-00000000
// CHECK: whilelo p0.h, x0, x0 // encoding: [0x00,0x1c,0x60,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100000-00011100-00000000
WHILELO P0.H, X0, X0  // 00100101-01100000-00011100-00000000
// CHECK: whilelo p0.h, x0, x0 // encoding: [0x00,0x1c,0x60,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100000-00011100-00000000
whilelo p7.b, x13, x8  // 00100101-00101000-00011101-10100111
// CHECK: whilelo p7.b, x13, x8 // encoding: [0xa7,0x1d,0x28,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101000-00011101-10100111
WHILELO P7.B, X13, X8  // 00100101-00101000-00011101-10100111
// CHECK: whilelo p7.b, x13, x8 // encoding: [0xa7,0x1d,0x28,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101000-00011101-10100111
whilelo p7.h, x13, x8  // 00100101-01101000-00011101-10100111
// CHECK: whilelo p7.h, x13, x8 // encoding: [0xa7,0x1d,0x68,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101000-00011101-10100111
WHILELO P7.H, X13, X8  // 00100101-01101000-00011101-10100111
// CHECK: whilelo p7.h, x13, x8 // encoding: [0xa7,0x1d,0x68,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101000-00011101-10100111
whilelo p0.d, w0, w0  // 00100101-11100000-00001100-00000000
// CHECK: whilelo p0.d, w0, w0 // encoding: [0x00,0x0c,0xe0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100000-00001100-00000000
WHILELO P0.D, W0, W0  // 00100101-11100000-00001100-00000000
// CHECK: whilelo p0.d, w0, w0 // encoding: [0x00,0x0c,0xe0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100000-00001100-00000000
whilelo p5.h, x10, x21  // 00100101-01110101-00011101-01000101
// CHECK: whilelo p5.h, x10, x21 // encoding: [0x45,0x1d,0x75,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01110101-00011101-01000101
WHILELO P5.H, X10, X21  // 00100101-01110101-00011101-01000101
// CHECK: whilelo p5.h, x10, x21 // encoding: [0x45,0x1d,0x75,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01110101-00011101-01000101
whilelo p5.s, w10, w21  // 00100101-10110101-00001101-01000101
// CHECK: whilelo p5.s, w10, w21 // encoding: [0x45,0x0d,0xb5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10110101-00001101-01000101
WHILELO P5.S, W10, W21  // 00100101-10110101-00001101-01000101
// CHECK: whilelo p5.s, w10, w21 // encoding: [0x45,0x0d,0xb5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10110101-00001101-01000101
whilelo p15.d, xzr, xzr  // 00100101-11111111-00011111-11101111
// CHECK: whilelo p15.d, xzr, xzr // encoding: [0xef,0x1f,0xff,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11111111-00011111-11101111
WHILELO P15.D, XZR, XZR  // 00100101-11111111-00011111-11101111
// CHECK: whilelo p15.d, xzr, xzr // encoding: [0xef,0x1f,0xff,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11111111-00011111-11101111
whilelo p5.d, w10, w21  // 00100101-11110101-00001101-01000101
// CHECK: whilelo p5.d, w10, w21 // encoding: [0x45,0x0d,0xf5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11110101-00001101-01000101
WHILELO P5.D, W10, W21  // 00100101-11110101-00001101-01000101
// CHECK: whilelo p5.d, w10, w21 // encoding: [0x45,0x0d,0xf5,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11110101-00001101-01000101
whilelo p15.h, xzr, xzr  // 00100101-01111111-00011111-11101111
// CHECK: whilelo p15.h, xzr, xzr // encoding: [0xef,0x1f,0x7f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01111111-00011111-11101111
WHILELO P15.H, XZR, XZR  // 00100101-01111111-00011111-11101111
// CHECK: whilelo p15.h, xzr, xzr // encoding: [0xef,0x1f,0x7f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01111111-00011111-11101111
whilelo p15.b, xzr, xzr  // 00100101-00111111-00011111-11101111
// CHECK: whilelo p15.b, xzr, xzr // encoding: [0xef,0x1f,0x3f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00111111-00011111-11101111
WHILELO P15.B, XZR, XZR  // 00100101-00111111-00011111-11101111
// CHECK: whilelo p15.b, xzr, xzr // encoding: [0xef,0x1f,0x3f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00111111-00011111-11101111
whilelo p7.d, x13, x8  // 00100101-11101000-00011101-10100111
// CHECK: whilelo p7.d, x13, x8 // encoding: [0xa7,0x1d,0xe8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101000-00011101-10100111
WHILELO P7.D, X13, X8  // 00100101-11101000-00011101-10100111
// CHECK: whilelo p7.d, x13, x8 // encoding: [0xa7,0x1d,0xe8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101000-00011101-10100111
whilelo p0.s, w0, w0  // 00100101-10100000-00001100-00000000
// CHECK: whilelo p0.s, w0, w0 // encoding: [0x00,0x0c,0xa0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100000-00001100-00000000
WHILELO P0.S, W0, W0  // 00100101-10100000-00001100-00000000
// CHECK: whilelo p0.s, w0, w0 // encoding: [0x00,0x0c,0xa0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100000-00001100-00000000
whilelo p15.d, wzr, wzr  // 00100101-11111111-00001111-11101111
// CHECK: whilelo p15.d, wzr, wzr // encoding: [0xef,0x0f,0xff,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11111111-00001111-11101111
WHILELO P15.D, WZR, WZR  // 00100101-11111111-00001111-11101111
// CHECK: whilelo p15.d, wzr, wzr // encoding: [0xef,0x0f,0xff,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11111111-00001111-11101111
whilelo p0.b, w0, w0  // 00100101-00100000-00001100-00000000
// CHECK: whilelo p0.b, w0, w0 // encoding: [0x00,0x0c,0x20,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100000-00001100-00000000
WHILELO P0.B, W0, W0  // 00100101-00100000-00001100-00000000
// CHECK: whilelo p0.b, w0, w0 // encoding: [0x00,0x0c,0x20,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100000-00001100-00000000
whilelo p15.b, wzr, wzr  // 00100101-00111111-00001111-11101111
// CHECK: whilelo p15.b, wzr, wzr // encoding: [0xef,0x0f,0x3f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00111111-00001111-11101111
WHILELO P15.B, WZR, WZR  // 00100101-00111111-00001111-11101111
// CHECK: whilelo p15.b, wzr, wzr // encoding: [0xef,0x0f,0x3f,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00111111-00001111-11101111
whilelo p0.s, x0, x0  // 00100101-10100000-00011100-00000000
// CHECK: whilelo p0.s, x0, x0 // encoding: [0x00,0x1c,0xa0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100000-00011100-00000000
WHILELO P0.S, X0, X0  // 00100101-10100000-00011100-00000000
// CHECK: whilelo p0.s, x0, x0 // encoding: [0x00,0x1c,0xa0,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100000-00011100-00000000
whilelo p7.d, w13, w8  // 00100101-11101000-00001101-10100111
// CHECK: whilelo p7.d, w13, w8 // encoding: [0xa7,0x0d,0xe8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101000-00001101-10100111
WHILELO P7.D, W13, W8  // 00100101-11101000-00001101-10100111
// CHECK: whilelo p7.d, w13, w8 // encoding: [0xa7,0x0d,0xe8,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101000-00001101-10100111
whilelo p0.b, x0, x0  // 00100101-00100000-00011100-00000000
// CHECK: whilelo p0.b, x0, x0 // encoding: [0x00,0x1c,0x20,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100000-00011100-00000000
WHILELO P0.B, X0, X0  // 00100101-00100000-00011100-00000000
// CHECK: whilelo p0.b, x0, x0 // encoding: [0x00,0x1c,0x20,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100000-00011100-00000000
