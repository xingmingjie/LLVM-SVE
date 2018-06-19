# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0xff,0x7f,0x05
# CHECK: mov     z31.h, p15/m, z31.h // encoding: [0xff,0xff,0x7f,0x05]
# CHECK-ERROR: invalid instruction encoding
0xff,0x7f,0x0f,0x25
# CHECK: mov     p15.b, p15/m, p15.b // encoding: [0xff,0x7f,0x0f,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0xe0,0x05
# CHECK: mov     z0.d, p0/m, z0.d // encoding: [0x00,0xc0,0xe0,0x05]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x35,0x05
# CHECK: mov     z21.b, p5/m, z10.b // encoding: [0x55,0xd5,0x35,0x05]
# CHECK-ERROR: invalid instruction encoding
0x10,0x42,0x00,0x25
# CHECK: mov     p0.b, p0/m, p0.b // encoding: [0x10,0x42,0x00,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0xa8,0x05
# CHECK: sel     z23.s, p11, z13.s, z8.s // encoding: [0xb7,0xed,0xa8,0x05]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0xe8,0x05
# CHECK: sel     z23.d, p11, z13.d, z8.d // encoding: [0xb7,0xed,0xe8,0x05]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0xa0,0x05
# CHECK: mov     z0.s, p0/m, z0.s // encoding: [0x00,0xc0,0xa0,0x05]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0xbf,0x05
# CHECK: mov     z31.s, p15/m, z31.s // encoding: [0xff,0xff,0xbf,0x05]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x6f,0x08,0x25
# CHECK: sel     p7.b, p11, p13.b, p8.b // encoding: [0xb7,0x6f,0x08,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0xb5,0x05
# CHECK: mov     z21.s, p5/m, z10.s // encoding: [0x55,0xd5,0xb5,0x05]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0xf5,0x05
# CHECK: mov     z21.d, p5/m, z10.d // encoding: [0x55,0xd5,0xf5,0x05]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0xff,0x05
# CHECK: mov     z31.d, p15/m, z31.d // encoding: [0xff,0xff,0xff,0x05]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0x68,0x05
# CHECK: sel     z23.h, p11, z13.h, z8.h // encoding: [0xb7,0xed,0x68,0x05]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0x28,0x05
# CHECK: sel     z23.b, p11, z13.b, z8.b // encoding: [0xb7,0xed,0x28,0x05]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x20,0x05
# CHECK: mov     z0.b, p0/m, z0.b // encoding: [0x00,0xc0,0x20,0x05]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x75,0x05
# CHECK: mov     z21.h, p5/m, z10.h // encoding: [0x55,0xd5,0x75,0x05]
# CHECK-ERROR: invalid instruction encoding
0x55,0x57,0x05,0x25
# CHECK: mov     p5.b, p5/m, p10.b // encoding: [0x55,0x57,0x05,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0x3f,0x05
# CHECK: mov     z31.b, p15/m, z31.b // encoding: [0xff,0xff,0x3f,0x05]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x60,0x05
# CHECK: mov     z0.h, p0/m, z0.h // encoding: [0x00,0xc0,0x60,0x05]
# CHECK-ERROR: invalid instruction encoding
