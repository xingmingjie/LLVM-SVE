# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x15,0x93,0x04
# CHECK: umulh   z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x93,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x53,0x04
# CHECK: umulh   z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x53,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0xd3,0x04
# CHECK: umulh   z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xd3,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x13,0x04
# CHECK: umulh   z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x0d,0x13,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x93,0x04
# CHECK: umulh   z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x93,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0xd3,0x04
# CHECK: umulh   z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xd3,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x13,0x04
# CHECK: umulh   z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x1f,0x13,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x93,0x04
# CHECK: umulh   z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x93,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x93,0x04
# CHECK: umulh   z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x93,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x13,0x04
# CHECK: umulh   z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x00,0x13,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x13,0x04
# CHECK: umulh   z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x15,0x13,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0xd3,0x04
# CHECK: umulh   z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xd3,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x53,0x04
# CHECK: umulh   z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x53,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x53,0x04
# CHECK: umulh   z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x53,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0xd3,0x04
# CHECK: umulh   z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xd3,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x53,0x04
# CHECK: umulh   z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x53,0x04]
# CHECK-ERROR: invalid instruction encoding
