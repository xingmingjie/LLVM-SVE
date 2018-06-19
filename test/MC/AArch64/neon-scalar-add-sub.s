// RUN: llvm-mc -triple aarch64-none-linux-gnu -mattr=+neon -show-encoding < %s | FileCheck %s
// RUN: llvm-mc -triple aarch64-none-linux-gnu -mattr=+neon,+sve -show-encoding < %s | FileCheck %s

//------------------------------------------------------------------------------
// Scalar Integer Add
//------------------------------------------------------------------------------
         add d31, d0, d16

// CHECK: add d31, d0, d16       // encoding: [0x1f,0x84,0xf0,0x5e]

//------------------------------------------------------------------------------
// Scalar Integer Sub
//------------------------------------------------------------------------------
         sub d1, d7, d8

// CHECK: sub d1, d7, d8       // encoding: [0xe1,0x84,0xe8,0x7e]

