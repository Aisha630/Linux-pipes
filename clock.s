	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.file	0 "/Users/aysha/Desktop/mini-project-2" "clock.c" md5 0x3679fd46394e9c228cc84c3ce3169f0e
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "_time.h" md5 0xe65eafd533c28a52a9094e430476b03e
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int64_t.h" md5 0xe6d85c1a9e23dbf7518ce3b162aac800
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	0 15 0                          ; clock.c:15:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp0:
	.loc	0 18 9 prologue_end             ; clock.c:18:9
	sub	x1, x29, #16
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp1:
	.loc	0 18 9 is_stmt 0                ; clock.c:18:9
	cbnz	w0, LBB0_3
; %bb.1:
	.loc	0 25 5 is_stmt 1                ; clock.c:25:5
	mov	w0, #3                          ; =0x3
	bl	_sleep
Ltmp2:
	.loc	0 27 9                          ; clock.c:27:9
	add	x1, sp, #16
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp3:
	.loc	0 27 9 is_stmt 0                ; clock.c:27:9
	cbnz	w0, LBB0_4
; %bb.2:
Ltmp4:
	;DEBUG_VALUE: timespec_diff_ns:after <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $sp
	;DEBUG_VALUE: timespec_diff_ns:before <- [DW_OP_constu 16, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	0 10 40 is_stmt 1               ; clock.c:10:40
	ldp	x8, x9, [sp, #16]
	.loc	0 10 66 is_stmt 0               ; clock.c:10:66
	ldp	x10, x11, [x29, #-16]
	.loc	0 10 47                         ; clock.c:10:47
	sub	x8, x8, x10
Ltmp5:
	;DEBUG_VALUE: timespec_diff_ns:diff_sec <- $x8
	.loc	0 11 49 is_stmt 1               ; clock.c:11:49
	sub	x9, x9, x11
Ltmp6:
	;DEBUG_VALUE: timespec_diff_ns:diff_nsec <- $x9
	.loc	0 0 49 is_stmt 0                ; clock.c:0:49
	mov	w10, #51712                     ; =0xca00
	movk	w10, #15258, lsl #16
	.loc	0 12 36 is_stmt 1               ; clock.c:12:36
	madd	x8, x8, x10, x9
Ltmp7:
	;DEBUG_VALUE: main:elapsed_ns <- $x8
	.loc	0 33 24                         ; clock.c:33:24
	scvtf	d0, x8
	mov	x9, #225833675390976            ; =0xcd6500000000
Ltmp8:
	.loc	0 0 24 is_stmt 0                ; clock.c:0:24
	movk	x9, #16845, lsl #48
	fmov	d1, x9
	.loc	0 33 43                         ; clock.c:33:43
	fdiv	d0, d0, d1
Ltmp9:
	;DEBUG_VALUE: main:elapsed_s <- $d0
	.loc	0 35 5 is_stmt 1                ; clock.c:35:5
	str	x8, [sp]
	str	d0, [sp, #8]
Lloh0:
	adrp	x0, l_.str.2@PAGE
Lloh1:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp10:
	.loc	0 37 5                          ; clock.c:37:5
	mov	w0, #0                          ; =0x0
	.loc	0 37 5 epilogue_begin is_stmt 0 ; clock.c:37:5
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
Ltmp11:
	ret
Ltmp12:
LBB0_3:
	.loc	0 19 9 is_stmt 1                ; clock.c:19:9
	bl	_main.cold.1
Ltmp13:
LBB0_4:
	.loc	0 28 9                          ; clock.c:28:9
	bl	_main.cold.2
Ltmp14:
	.loh AdrpAdd	Lloh0, Lloh1
Lfunc_end0:
	.cfi_endproc
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm" "_types.h" md5 0xb270144f57ae258d0ce80b8f87be068c
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_timespec.h" md5 0x8d740567ad568a1ef1d70ccb6b1755cb
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "unistd.h" md5 0x746946b36450ad27bd056e0aa595c2cd
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "_printf.h" md5 0x2d37517bd0342aa326aa1d3660ad4ab4
                                        ; -- End function
	.p2align	2                               ; -- Begin function main.cold.1
_main.cold.1:                           ; @main.cold.1
Lfunc_begin1:
	.loc	0 0 0                           ; clock.c:0:0
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp15:
	.loc	0 19 9 prologue_end             ; clock.c:19:9
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_perror
	.loc	0 20 9                          ; clock.c:20:9
	mov	w0, #1                          ; =0x1
	bl	_exit
Ltmp16:
	.loh AdrpAdd	Lloh2, Lloh3
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function main.cold.2
_main.cold.2:                           ; @main.cold.2
Lfunc_begin2:
	.loc	0 0 0                           ; clock.c:0:0
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp17:
	.loc	0 28 9 prologue_end             ; clock.c:28:9
Lloh4:
	adrp	x0, l_.str.1@PAGE
Lloh5:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_perror
	.loc	0 29 9                          ; clock.c:29:9
	mov	w0, #1                          ; =0x1
	bl	_exit
Ltmp18:
	.loh AdrpAdd	Lloh4, Lloh5
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"clock_gettime start"

l_.str.1:                               ; @.str.1
	.asciz	"clock_gettime end"

l_.str.2:                               ; @.str.2
	.asciz	"Elapsed: %lld ns (%.6f s)\n"

	.section	__DWARF,__debug_loclists,regular,debug
Lsection_debug_loc0:
.set Lset0, Ldebug_list_header_end0-Ldebug_list_header_start0 ; Length
	.long	Lset0
Ldebug_list_header_start0:
	.short	5                               ; Version
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
	.long	4                               ; Offset entry count
Lloclists_table_base0:
.set Lset1, Ldebug_loc0-Lloclists_table_base0
	.long	Lset1
.set Lset2, Ldebug_loc1-Lloclists_table_base0
	.long	Lset2
.set Lset3, Ldebug_loc2-Lloclists_table_base0
	.long	Lset3
.set Lset4, Ldebug_loc3-Lloclists_table_base0
	.long	Lset4
Ldebug_loc0:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp5-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp7-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc1:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp6-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp8-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc2:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp7-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp10-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc3:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp9-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp10-Lfunc_begin0            ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_list_header_end0:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	37                              ; DW_FORM_strx1
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	37                              ; DW_FORM_strx1
	.byte	114                             ; DW_AT_str_offsets_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	115                             ; DW_AT_addr_base
	.byte	23                              ; DW_FORM_sec_offset
	.ascii	"\214\001"                      ; DW_AT_loclists_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	4                               ; DW_TAG_enumeration_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	40                              ; DW_TAG_enumerator
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	33                              ; DW_FORM_implicit_const
	.byte	1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	34                              ; DW_FORM_loclistx
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	34                              ; DW_FORM_loclistx
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	110                             ; DW_AT_linkage_name
	.byte	37                              ; DW_FORM_strx1
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	29                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	30                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	110                             ; DW_AT_linkage_name
	.byte	37                              ; DW_FORM_strx1
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset5, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset5
Ldebug_info_start0:
	.short	5                               ; DWARF version number
	.byte	1                               ; DWARF Unit Type
	.byte	8                               ; Address Size (in bytes)
.set Lset6, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset6
	.byte	1                               ; Abbrev [1] 0xc:0x200 DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
	.byte	3                               ; DW_AT_APPLE_sdk
.set Lset7, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset7
.set Lset8, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset8
	.byte	4                               ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.byte	3                               ; DW_AT_low_pc
.set Lset9, Lfunc_end2-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset9
.set Lset10, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset10
.set Lset11, Lloclists_table_base0-Lsection_debug_loc0 ; DW_AT_loclists_base
	.long	Lset11
	.byte	2                               ; Abbrev [2] 0x29:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ; Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	20                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3f:0x4 DW_TAG_base_type
	.byte	5                               ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x43:0x4 DW_TAG_base_type
	.byte	6                               ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x47:0xa DW_TAG_variable
	.long	81                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               ; Abbrev [3] 0x51:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x56:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	18                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x5d:0xa DW_TAG_variable
	.long	103                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               ; Abbrev [3] 0x67:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x6c:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	27                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x73:0x21 DW_TAG_enumeration_type
	.long	148                             ; DW_AT_type
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	156                             ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0x7b:0x3 DW_TAG_enumerator
	.byte	8                               ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x7e:0x3 DW_TAG_enumerator
	.byte	9                               ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x81:0x3 DW_TAG_enumerator
	.byte	10                              ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x84:0x3 DW_TAG_enumerator
	.byte	11                              ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x87:0x3 DW_TAG_enumerator
	.byte	12                              ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x8a:0x3 DW_TAG_enumerator
	.byte	13                              ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x8d:0x3 DW_TAG_enumerator
	.byte	14                              ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0x90:0x3 DW_TAG_enumerator
	.byte	15                              ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x94:0x4 DW_TAG_base_type
	.byte	7                               ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x98:0x4 DW_TAG_base_type
	.byte	16                              ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0x9c:0x8 DW_TAG_typedef
	.long	164                             ; DW_AT_type
	.byte	18                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xa4:0x4 DW_TAG_base_type
	.byte	17                              ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	10                              ; Abbrev [10] 0xa8:0x29 DW_TAG_subprogram
	.byte	19                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	156                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
                                        ; DW_AT_inline
	.byte	11                              ; Abbrev [11] 0xb0:0x8 DW_TAG_formal_parameter
	.byte	20                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.long	209                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xb8:0x8 DW_TAG_formal_parameter
	.byte	26                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	209                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0xc0:0x8 DW_TAG_variable
	.byte	27                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	156                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0xc8:0x8 DW_TAG_variable
	.byte	28                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.long	156                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0xd1:0x5 DW_TAG_pointer_type
	.long	214                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0xd6:0x5 DW_TAG_const_type
	.long	219                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xdb:0x18 DW_TAG_structure_type
	.byte	25                              ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	16                              ; Abbrev [16] 0xe0:0x9 DW_TAG_member
	.byte	21                              ; DW_AT_name
	.long	243                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	16                              ; Abbrev [16] 0xe9:0x9 DW_TAG_member
	.byte	24                              ; DW_AT_name
	.long	251                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xf3:0x8 DW_TAG_typedef
	.long	251                             ; DW_AT_type
	.byte	23                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xfb:0x4 DW_TAG_base_type
	.byte	22                              ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	17                              ; Abbrev [17] 0xff:0xa6 DW_TAG_subprogram
	.byte	3                               ; DW_AT_low_pc
.set Lset12, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset12
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	35                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	440                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	18                              ; Abbrev [18] 0x10e:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.byte	38                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.long	219                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x119:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.byte	39                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.long	219                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x124:0x9 DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	40                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.long	156                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x12d:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	41                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.long	152                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x136:0x2c DW_TAG_inlined_subroutine
	.long	168                             ; DW_AT_abstract_origin
	.byte	4                               ; DW_AT_low_pc
.set Lset13, Ltmp7-Ltmp4                ; DW_AT_high_pc
	.long	Lset13
	.byte	0                               ; DW_AT_call_file
	.byte	32                              ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	21                              ; Abbrev [21] 0x143:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.byte	16
	.byte	159
	.long	176                             ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x14c:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	145
	.byte	112
	.byte	159
	.long	184                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x155:0x6 DW_TAG_variable
	.byte	0                               ; DW_AT_location
	.long	192                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x15b:0x6 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.long	200                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x162:0x12 DW_TAG_call_site
	.long	421                             ; DW_AT_call_origin
	.byte	5                               ; DW_AT_call_return_pc
	.byte	24                              ; Abbrev [24] 0x168:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	24                              ; Abbrev [24] 0x16d:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	145
	.byte	112
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x174:0xc DW_TAG_call_site
	.long	457                             ; DW_AT_call_origin
	.byte	6                               ; DW_AT_call_return_pc
	.byte	24                              ; Abbrev [24] 0x17a:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	51
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x180:0x12 DW_TAG_call_site
	.long	421                             ; DW_AT_call_origin
	.byte	7                               ; DW_AT_call_return_pc
	.byte	24                              ; Abbrev [24] 0x186:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	24                              ; Abbrev [24] 0x18b:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	16
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x192:0x6 DW_TAG_call_site
	.long	473                             ; DW_AT_call_origin
	.byte	8                               ; DW_AT_call_return_pc
	.byte	25                              ; Abbrev [25] 0x198:0x6 DW_TAG_call_site
	.long	503                             ; DW_AT_call_origin
	.byte	9                               ; DW_AT_call_return_pc
	.byte	25                              ; Abbrev [25] 0x19e:0x6 DW_TAG_call_site
	.long	513                             ; DW_AT_call_origin
	.byte	10                              ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x1a5:0x13 DW_TAG_subprogram
	.byte	29                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	181                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	440                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	27                              ; Abbrev [27] 0x1ad:0x5 DW_TAG_formal_parameter
	.long	444                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x1b2:0x5 DW_TAG_formal_parameter
	.long	452                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1b8:0x4 DW_TAG_base_type
	.byte	30                              ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0x1bc:0x8 DW_TAG_typedef
	.long	115                             ; DW_AT_type
	.byte	31                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	175                             ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x1c4:0x5 DW_TAG_pointer_type
	.long	219                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x1c9:0x10 DW_TAG_subprogram
	.byte	32                              ; DW_AT_linkage_name
	.byte	33                              ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.short	485                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	148                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	27                              ; Abbrev [27] 0x1d3:0x5 DW_TAG_formal_parameter
	.long	148                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x1d9:0xf DW_TAG_subprogram
	.byte	34                              ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	440                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	27                              ; Abbrev [27] 0x1e1:0x5 DW_TAG_formal_parameter
	.long	488                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0x1e6:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x1e8:0x5 DW_TAG_restrict_type
	.long	493                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1ed:0x5 DW_TAG_pointer_type
	.long	498                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1f2:0x5 DW_TAG_const_type
	.long	63                              ; DW_AT_type
	.byte	31                              ; Abbrev [31] 0x1f7:0xa DW_TAG_subprogram
	.byte	11                              ; DW_AT_low_pc
.set Lset14, Lfunc_end1-Lfunc_begin1    ; DW_AT_high_pc
	.long	Lset14
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.byte	36                              ; DW_AT_linkage_name
	.byte	36                              ; DW_AT_name
                                        ; DW_AT_APPLE_optimized
	.byte	31                              ; Abbrev [31] 0x201:0xa DW_TAG_subprogram
	.byte	12                              ; DW_AT_low_pc
.set Lset15, Lfunc_end2-Lfunc_begin2    ; DW_AT_high_pc
	.long	Lset15
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.byte	37                              ; DW_AT_linkage_name
	.byte	37                              ; DW_AT_name
                                        ; DW_AT_APPLE_optimized
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	172                             ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 17.0.0 (clang-1700.0.13.5)" ; string offset=0
	.asciz	"clock.c"                       ; string offset=47
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=55
	.asciz	"MacOSX.sdk"                    ; string offset=107
	.asciz	"/Users/aysha/Desktop/mini-project-2" ; string offset=118
	.asciz	"char"                          ; string offset=154
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=159
	.asciz	"unsigned int"                  ; string offset=179
	.asciz	"_CLOCK_REALTIME"               ; string offset=192
	.asciz	"_CLOCK_MONOTONIC"              ; string offset=208
	.asciz	"_CLOCK_MONOTONIC_RAW"          ; string offset=225
	.asciz	"_CLOCK_MONOTONIC_RAW_APPROX"   ; string offset=246
	.asciz	"_CLOCK_UPTIME_RAW"             ; string offset=274
	.asciz	"_CLOCK_UPTIME_RAW_APPROX"      ; string offset=292
	.asciz	"_CLOCK_PROCESS_CPUTIME_ID"     ; string offset=317
	.asciz	"_CLOCK_THREAD_CPUTIME_ID"      ; string offset=343
	.asciz	"double"                        ; string offset=368
	.asciz	"int64_t"                       ; string offset=375
	.asciz	"long long"                     ; string offset=383
	.asciz	"timespec_diff_ns"              ; string offset=393
	.asciz	"after"                         ; string offset=410
	.asciz	"timespec"                      ; string offset=416
	.asciz	"tv_sec"                        ; string offset=425
	.asciz	"__darwin_time_t"               ; string offset=432
	.asciz	"long"                          ; string offset=448
	.asciz	"tv_nsec"                       ; string offset=453
	.asciz	"before"                        ; string offset=461
	.asciz	"diff_sec"                      ; string offset=468
	.asciz	"diff_nsec"                     ; string offset=477
	.asciz	"main"                          ; string offset=487
	.asciz	"clock_gettime"                 ; string offset=492
	.asciz	"int"                           ; string offset=506
	.asciz	"clockid_t"                     ; string offset=510
	.asciz	"_sleep"                        ; string offset=520
	.asciz	"sleep"                         ; string offset=527
	.asciz	"printf"                        ; string offset=533
	.asciz	"main.cold.1"                   ; string offset=540
	.asciz	"main.cold.2"                   ; string offset=552
	.asciz	"t_start"                       ; string offset=564
	.asciz	"t_end"                         ; string offset=572
	.asciz	"elapsed_ns"                    ; string offset=578
	.asciz	"elapsed_s"                     ; string offset=589
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	47
	.long	55
	.long	107
	.long	118
	.long	154
	.long	159
	.long	179
	.long	192
	.long	208
	.long	225
	.long	246
	.long	274
	.long	292
	.long	317
	.long	343
	.long	368
	.long	383
	.long	375
	.long	393
	.long	410
	.long	425
	.long	448
	.long	432
	.long	453
	.long	416
	.long	461
	.long	468
	.long	477
	.long	492
	.long	506
	.long	510
	.long	520
	.long	527
	.long	533
	.long	487
	.long	540
	.long	552
	.long	564
	.long	572
	.long	578
	.long	589
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset16, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset16
Ldebug_addr_start0:
	.short	5                               ; DWARF version number
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
Laddr_table_base0:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	Lfunc_begin0
	.quad	Ltmp4
	.quad	Ltmp1
	.quad	Ltmp2
	.quad	Ltmp3
	.quad	Ltmp10
	.quad	Ltmp13
	.quad	Ltmp14
	.quad	Lfunc_begin1
	.quad	Lfunc_begin2
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset17, Lnames_end0-Lnames_start0  ; Header: unit length
	.long	Lset17
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	15                              ; Header: bucket count
	.long	15                              ; Header: name count
.set Lset18, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset18
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset19, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset19
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	0                               ; Bucket 2
	.long	3                               ; Bucket 3
	.long	7                               ; Bucket 4
	.long	9                               ; Bucket 5
	.long	0                               ; Bucket 6
	.long	10                              ; Bucket 7
	.long	11                              ; Bucket 8
	.long	0                               ; Bucket 9
	.long	0                               ; Bucket 10
	.long	0                               ; Bucket 11
	.long	0                               ; Bucket 12
	.long	14                              ; Bucket 13
	.long	15                              ; Bucket 14
	.long	2090499946                      ; Hash in Bucket 1
	.long	-1921963995                     ; Hash in Bucket 1
	.long	1261628793                      ; Hash in Bucket 3
	.long	2090479413                      ; Hash in Bucket 3
	.long	2109465783                      ; Hash in Bucket 3
	.long	-113466703                      ; Hash in Bucket 3
	.long	1261628794                      ; Hash in Bucket 4
	.long	-243996567                      ; Hash in Bucket 4
	.long	-1304652851                     ; Hash in Bucket 5
	.long	567385087                       ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	217009403                       ; Hash in Bucket 8
	.long	-1622434163                     ; Hash in Bucket 8
	.long	-113419488                      ; Hash in Bucket 13
	.long	2090147939                      ; Hash in Bucket 14
	.long	487                             ; String in Bucket 1: main
	.long	383                             ; String in Bucket 1: long long
	.long	540                             ; String in Bucket 3: main.cold.1
	.long	448                             ; String in Bucket 3: long
	.long	393                             ; String in Bucket 3: timespec_diff_ns
	.long	510                             ; String in Bucket 3: clockid_t
	.long	552                             ; String in Bucket 4: main.cold.2
	.long	432                             ; String in Bucket 4: __darwin_time_t
	.long	179                             ; String in Bucket 5: unsigned int
	.long	416                             ; String in Bucket 7: timespec
	.long	506                             ; String in Bucket 8: int
	.long	159                             ; String in Bucket 8: __ARRAY_SIZE_TYPE__
	.long	375                             ; String in Bucket 8: int64_t
	.long	368                             ; String in Bucket 13: double
	.long	154                             ; String in Bucket 14: char
.set Lset20, Lnames9-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset20
.set Lset21, Lnames5-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset21
.set Lset22, Lnames13-Lnames_entries0   ; Offset in Bucket 3
	.long	Lset22
.set Lset23, Lnames8-Lnames_entries0    ; Offset in Bucket 3
	.long	Lset23
.set Lset24, Lnames10-Lnames_entries0   ; Offset in Bucket 3
	.long	Lset24
.set Lset25, Lnames12-Lnames_entries0   ; Offset in Bucket 3
	.long	Lset25
.set Lset26, Lnames14-Lnames_entries0   ; Offset in Bucket 4
	.long	Lset26
.set Lset27, Lnames7-Lnames_entries0    ; Offset in Bucket 4
	.long	Lset27
.set Lset28, Lnames2-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset28
.set Lset29, Lnames6-Lnames_entries0    ; Offset in Bucket 7
	.long	Lset29
.set Lset30, Lnames11-Lnames_entries0   ; Offset in Bucket 8
	.long	Lset30
.set Lset31, Lnames1-Lnames_entries0    ; Offset in Bucket 8
	.long	Lset31
.set Lset32, Lnames4-Lnames_entries0    ; Offset in Bucket 8
	.long	Lset32
.set Lset33, Lnames3-Lnames_entries0    ; Offset in Bucket 13
	.long	Lset33
.set Lset34, Lnames0-Lnames_entries0    ; Offset in Bucket 14
	.long	Lset34
Lnames_abbrev_start0:
	.byte	1                               ; Abbrev code
	.byte	46                              ; DW_TAG_subprogram
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	2                               ; Abbrev code
	.byte	36                              ; DW_TAG_base_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	3                               ; Abbrev code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	4                               ; Abbrev code
	.byte	22                              ; DW_TAG_typedef
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	5                               ; Abbrev code
	.byte	19                              ; DW_TAG_structure_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames9:
L0:
	.byte	1                               ; Abbreviation code
	.long	255                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: main
Lnames5:
L6:
	.byte	2                               ; Abbreviation code
	.long	164                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: long long
Lnames13:
L11:
	.byte	1                               ; Abbreviation code
	.long	503                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: main.cold.1
Lnames8:
L14:
	.byte	2                               ; Abbreviation code
	.long	251                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: long
Lnames10:
L2:
	.byte	3                               ; Abbreviation code
	.long	310                             ; DW_IDX_die_offset
.set Lset35, L0-Lnames_entries0         ; DW_IDX_parent
	.long	Lset35
	.byte	0                               ; End of list: timespec_diff_ns
Lnames12:
L13:
	.byte	4                               ; Abbreviation code
	.long	444                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: clockid_t
Lnames14:
L3:
	.byte	1                               ; Abbreviation code
	.long	513                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: main.cold.2
Lnames7:
L12:
	.byte	4                               ; Abbreviation code
	.long	243                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: __darwin_time_t
Lnames2:
L4:
	.byte	2                               ; Abbreviation code
	.long	148                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: unsigned int
Lnames6:
L7:
	.byte	5                               ; Abbreviation code
	.long	219                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: timespec
Lnames11:
L1:
	.byte	2                               ; Abbreviation code
	.long	440                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: int
Lnames1:
L5:
	.byte	2                               ; Abbreviation code
	.long	67                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: __ARRAY_SIZE_TYPE__
Lnames4:
L9:
	.byte	4                               ; Abbreviation code
	.long	156                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: int64_t
Lnames3:
L8:
	.byte	2                               ; Abbreviation code
	.long	152                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: double
Lnames0:
L10:
	.byte	2                               ; Abbreviation code
	.long	63                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: char
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
