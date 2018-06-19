; RUN: %llc_dwarf -O0 -filetype=obj < %s > %t
; RUN: llvm-dwarfdump %t | FileCheck %s

; CHECK-DAG: DW_AT_count [DW_FORM_ref4]  (cu + {{.*}} => {[[NODE:[0-9a-zA-Zx]+]]})
; CHECK-DAG: [[NODE]]: DW_TAG_variable [4]

; CHECK: DW_AT_count [DW_FORM_exprloc] (<0x2> 10 2a )

define void @foo(i32 %n) !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !12, metadata !19), !dbg !20
  ret void, !dbg !21
}

declare void @llvm.dbg.value(metadata, i64, metadata, metadata)

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 5.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "vla.c", directory: "/path/to")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 5.0.1"}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 20, type: !8, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !15}
!12 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 20, type: !10)
!13 = !DILocalVariable(name: "vla_expr", scope: !7, file: !1, line: 21, type: !14)
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DILocalVariable(name: "vla", scope: !7, file: !1, line: 21, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, align: 32, elements: !17)
!17 = !{!18, !22}
!18 = !DISubrange(count: !13)
!19 = !DIExpression()
!20 = !DILocation(line: 20, column: 14, scope: !7)
!21 = !DILocation(line: 22, column: 1, scope: !7)
!22 = !DISubrange(count: !23)
!23 = !DIExpression(DW_OP_constu, 42)
