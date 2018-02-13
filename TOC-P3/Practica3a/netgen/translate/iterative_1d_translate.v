////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: iterative_1d_translate.v
// /___/   /\     Timestamp: Tue Nov 14 16:46:21 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim iterative_1d.ngd iterative_1d_translate.v 
// Device	: 3s1000ft256-5
// Input file	: iterative_1d.ngd
// Output file	: C:\Workspace VHDL limpio\Practica3a\netgen\translate\iterative_1d_translate.v
// # of Modules	: 1
// Design Name	: iterative_1d
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module iterative_1d (
num_patterns, din
);
  output [4 : 0] num_patterns;
  input [31 : 0] din;
  wire N0;
  wire N01;
  wire N10;
  wire N1001;
  wire N1011;
  wire N103;
  wire N1041;
  wire N11;
  wire N111;
  wire N112;
  wire N12;
  wire N121;
  wire N124;
  wire N127;
  wire N13;
  wire N132;
  wire N14;
  wire N15;
  wire N16;
  wire N1611;
  wire N162;
  wire N166;
  wire N167;
  wire N169;
  wire N17;
  wire N170;
  wire N172;
  wire N176;
  wire N177;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N187;
  wire N189;
  wire N191;
  wire N195;
  wire N196;
  wire N2;
  wire N20;
  wire N200;
  wire N202;
  wire N203;
  wire N205;
  wire N206;
  wire N208;
  wire N209;
  wire N22;
  wire N223;
  wire N225;
  wire N23;
  wire N235;
  wire N236;
  wire N238;
  wire N239;
  wire N24;
  wire N241;
  wire N242;
  wire N245;
  wire N249;
  wire N26;
  wire N262;
  wire N264;
  wire N265;
  wire N278;
  wire N3;
  wire N300;
  wire N303;
  wire N305;
  wire N307;
  wire N309;
  wire N31;
  wire N311;
  wire N313;
  wire N315;
  wire N317;
  wire N319;
  wire N321;
  wire N323;
  wire N327;
  wire N329;
  wire N331;
  wire N333;
  wire N335;
  wire N337;
  wire N341;
  wire N343;
  wire N345;
  wire N347;
  wire N349;
  wire N351;
  wire N353;
  wire N355;
  wire N363;
  wire N367;
  wire N369;
  wire N37;
  wire N371;
  wire N373;
  wire N375;
  wire N377;
  wire N379;
  wire N38;
  wire N381;
  wire N383;
  wire N387;
  wire N389;
  wire N391;
  wire N395;
  wire N397;
  wire N399;
  wire N401;
  wire N405;
  wire N411;
  wire N4111;
  wire N413;
  wire N415;
  wire N416;
  wire N417;
  wire N418;
  wire N419;
  wire N420;
  wire N421;
  wire N422;
  wire N423;
  wire N424;
  wire N425;
  wire N426;
  wire N427;
  wire N428;
  wire N429;
  wire N43;
  wire N430;
  wire N431;
  wire N432;
  wire N433;
  wire N434;
  wire N5;
  wire N56;
  wire N60;
  wire N69;
  wire N711;
  wire N721;
  wire N731;
  wire N771;
  wire N81;
  wire N94;
  wire N95;
  wire N98;
  wire N99;
  wire N991;
  wire \cell_generation[10].i_cell/count_out_cmp_eq0000_151 ;
  wire \cell_generation[11].i_cell/count_out<1>1 ;
  wire \cell_generation[11].i_cell/count_out<1>11_153 ;
  wire \cell_generation[11].i_cell/pattern_cell<0>28_154 ;
  wire \cell_generation[13].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[13].i_cell/count_out_cmp_eq00001_156 ;
  wire \cell_generation[14].i_cell/count_out_cmp_eq0000_157 ;
  wire \cell_generation[14].i_cell/pattern_cell<0>16_158 ;
  wire \cell_generation[15].i_cell/count_out<0>2 ;
  wire \cell_generation[15].i_cell/count_out<0>21_160 ;
  wire \cell_generation[16].i_cell/count_out_cmp_eq0000_161 ;
  wire \cell_generation[17].i_cell/count_out<4>26_162 ;
  wire \cell_generation[17].i_cell/pattern_cell<0>47 ;
  wire \cell_generation[17].i_cell/pattern_cell<0>471_164 ;
  wire \cell_generation[17].i_cell/pattern_cell<0>472_165 ;
  wire \cell_generation[17].i_cell/pattern_cell<0>95_166 ;
  wire \cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ;
  wire \cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<2> ;
  wire \cell_generation[18].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[19].i_cell/Madd_count_out_addsub0000_cy<2> ;
  wire \cell_generation[19].i_cell/count_out<2>154_171 ;
  wire \cell_generation[19].i_cell/pattern_cell<0> ;
  wire \cell_generation[19].i_cell/pattern_cell<0>1_173 ;
  wire \cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ;
  wire \cell_generation[20].i_cell/count_out<4>171_175 ;
  wire \cell_generation[20].i_cell/count_out<4>189_176 ;
  wire \cell_generation[20].i_cell/count_out<4>2_177 ;
  wire \cell_generation[20].i_cell/count_out<4>203 ;
  wire \cell_generation[20].i_cell/count_out<4>2031_179 ;
  wire \cell_generation[20].i_cell/count_out<4>51_180 ;
  wire \cell_generation[20].i_cell/count_out<4>66_181 ;
  wire \cell_generation[20].i_cell/count_out<4>89_182 ;
  wire \cell_generation[21].i_cell/Madd_count_out_addsub0000_cy<3> ;
  wire \cell_generation[21].i_cell/count_out<2>123_184 ;
  wire \cell_generation[21].i_cell/count_out<2>19_185 ;
  wire \cell_generation[21].i_cell/count_out<2>205_186 ;
  wire \cell_generation[21].i_cell/count_out<2>36_187 ;
  wire \cell_generation[21].i_cell/count_out<2>44_188 ;
  wire \cell_generation[21].i_cell/count_out<2>64_189 ;
  wire \cell_generation[21].i_cell/count_out<2>88_190 ;
  wire \cell_generation[21].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[21].i_cell/count_out_cmp_eq000027_192 ;
  wire \cell_generation[22].i_cell/Madd_count_out_addsub0000_cy<1> ;
  wire \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3> ;
  wire \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>132_195 ;
  wire \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>144_196 ;
  wire \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>159_197 ;
  wire \cell_generation[23].i_cell/count_out<1>110_198 ;
  wire \cell_generation[23].i_cell/count_out<1>21_199 ;
  wire \cell_generation[23].i_cell/count_out<1>38_200 ;
  wire \cell_generation[23].i_cell/count_out<1>65_201 ;
  wire \cell_generation[24].i_cell/count_out_cmp_eq0000_202 ;
  wire \cell_generation[25].i_cell/count_out<1>83_SW0_SW0 ;
  wire \cell_generation[25].i_cell/count_out<1>83_SW0_SW01 ;
  wire \cell_generation[25].i_cell/count_out<3>42_205 ;
  wire \cell_generation[25].i_cell/count_out<3>49_206 ;
  wire \cell_generation[25].i_cell/pattern_cell<0>47 ;
  wire \cell_generation[25].i_cell/pattern_cell<0>471_208 ;
  wire \cell_generation[25].i_cell/pattern_cell<0>472_209 ;
  wire \cell_generation[25].i_cell/pattern_cell<0>95_210 ;
  wire \cell_generation[26].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[27].i_cell/count_out<2> ;
  wire \cell_generation[27].i_cell/count_out<2>1_213 ;
  wire \cell_generation[29].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[29].i_cell/count_out_cmp_eq000018_215 ;
  wire \cell_generation[30].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[30].i_cell/count_out_cmp_eq000020_217 ;
  wire \cell_generation[30].i_cell/count_out_cmp_eq000049_218 ;
  wire \cell_generation[30].i_cell/count_out_cmp_eq000070_219 ;
  wire \cell_generation[31].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[31].i_cell/count_out_cmp_eq000031 ;
  wire \cell_generation[31].i_cell/count_out_cmp_eq0000311_222 ;
  wire \cell_generation[31].i_cell/count_out_cmp_eq0000312_223 ;
  wire \cell_generation[5].i_cell/count_out<0>33 ;
  wire \cell_generation[5].i_cell/count_out<0>331_225 ;
  wire \cell_generation[5].i_cell/count_out<0>332_226 ;
  wire \cell_generation[5].i_cell/count_out<0>37 ;
  wire \cell_generation[5].i_cell/count_out<0>371_228 ;
  wire \cell_generation[7].i_cell/count_out_cmp_eq0000 ;
  wire \cell_generation[7].i_cell/count_out_cmp_eq000022 ;
  wire \cell_generation[7].i_cell/count_out_cmp_eq0000221_231 ;
  wire \cell_generation[7].i_cell/count_out_cmp_eq0000222_232 ;
  wire \cell_generation[8].i_cell/pattern_cell<0>16_233 ;
  wire \cell_generation[9].i_cell/count_out<2>119_234 ;
  wire \cell_generation[9].i_cell/count_out<2>132_235 ;
  wire \cell_generation[9].i_cell/count_out<2>177_236 ;
  wire \cell_generation[9].i_cell/count_out<2>188_237 ;
  wire \cell_generation[9].i_cell/count_out<2>26_238 ;
  wire \cell_generation[9].i_cell/count_out<2>65_239 ;
  wire \cell_generation[9].i_cell/count_out<2>73_240 ;
  wire \cell_generation[9].i_cell/count_out<2>92_241 ;
  wire \count<24>[0] ;
  wire \count<24>[1] ;
  wire \count<24>[3] ;
  wire din_0_IBUF_324;
  wire din_10_IBUF_325;
  wire din_11_IBUF_326;
  wire din_12_IBUF_327;
  wire din_13_IBUF_328;
  wire din_14_IBUF_329;
  wire din_15_IBUF_330;
  wire din_16_IBUF_331;
  wire din_17_IBUF_332;
  wire din_18_IBUF_333;
  wire din_19_IBUF_334;
  wire din_1_IBUF_335;
  wire din_20_IBUF_336;
  wire din_21_IBUF_337;
  wire din_22_IBUF_338;
  wire din_23_IBUF_339;
  wire din_24_IBUF_340;
  wire din_25_IBUF_341;
  wire din_26_IBUF_342;
  wire din_27_IBUF_343;
  wire din_28_IBUF_344;
  wire din_29_IBUF_345;
  wire din_2_IBUF_346;
  wire din_30_IBUF_347;
  wire din_31_IBUF_348;
  wire din_3_IBUF_349;
  wire din_4_IBUF_350;
  wire din_5_IBUF_351;
  wire din_6_IBUF_352;
  wire din_7_IBUF_353;
  wire din_8_IBUF_354;
  wire din_9_IBUF_355;
  wire num_patterns_0_OBUF_361;
  wire num_patterns_1_OBUF_362;
  wire num_patterns_2_OBUF_363;
  wire num_patterns_3_OBUF_364;
  wire num_patterns_4_OBUF_365;
  wire [2 : 0] \count<10> ;
  wire [2 : 0] \count<12> ;
  wire [3 : 2] \count<13> ;
  wire [1 : 0] \count<14> ;
  wire [4 : 4] \count<15> ;
  wire [3 : 0] \count<16> ;
  wire [4 : 4] \count<17> ;
  wire [4 : 0] \count<18> ;
  wire [4 : 4] \count<19> ;
  wire [3 : 0] \count<20> ;
  wire [4 : 4] \count<21> ;
  wire [3 : 0] \count<22> ;
  wire [4 : 4] \count<23> ;
  wire [4 : 4] \count<25> ;
  wire [3 : 0] \count<26> ;
  wire [4 : 4] \count<27> ;
  wire [4 : 0] \count<28> ;
  wire [0 : 0] \count<30> ;
  wire [1 : 0] \count<6> ;
  wire [1 : 1] \count<8> ;
  wire [2 : 0] \pattern<12> ;
  wire [1 : 0] \pattern<15> ;
  wire [2 : 0] \pattern<18> ;
  wire [2 : 0] \pattern<20> ;
  wire [2 : 0] \pattern<23> ;
  wire [2 : 0] \pattern<26> ;
  wire [2 : 0] \pattern<28> ;
  wire [2 : 0] \pattern<6> ;
  wire [2 : 0] \pattern<9> ;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \cell_generation[5].i_cell/count_out<1>1  (
    .ADR0(din_2_IBUF_346),
    .ADR1(din_0_IBUF_324),
    .ADR2(din_5_IBUF_351),
    .ADR3(din_3_IBUF_349),
    .O(\count<6> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[9].i_cell/count_out<2>11  (
    .ADR0(\count<6> [0]),
    .ADR1(\pattern<6> [1]),
    .ADR2(din_6_IBUF_352),
    .ADR3(\pattern<6> [2]),
    .O(N20)
  );
  X_LUT4 #(
    .INIT ( 16'h6000 ))
  \cell_generation[12].i_cell/count_out<4>111  (
    .ADR0(\cell_generation[10].i_cell/count_out_cmp_eq0000_151 ),
    .ADR1(\count<10> [0]),
    .ADR2(\count<10> [2]),
    .ADR3(\count<10> [1]),
    .O(N169)
  );
  X_LUT4 #(
    .INIT ( 16'hEEAE ))
  \cell_generation[10].i_cell/count_out_cmp_eq0000_SW0  (
    .ADR0(din_9_IBUF_355),
    .ADR1(din_6_IBUF_352),
    .ADR2(\pattern<6> [1]),
    .ADR3(\pattern<6> [2]),
    .O(N181)
  );
  X_LUT4 #(
    .INIT ( 16'h8808 ))
  \cell_generation[10].i_cell/count_out_cmp_eq0000  (
    .ADR0(din_10_IBUF_325),
    .ADR1(din_8_IBUF_354),
    .ADR2(N181),
    .ADR3(N731),
    .O(\cell_generation[10].i_cell/count_out_cmp_eq0000_151 )
  );
  X_LUT4 #(
    .INIT ( 16'h2600 ))
  \cell_generation[9].i_cell/count_out<2>73  (
    .ADR0(\pattern<6> [0]),
    .ADR1(\pattern<6> [1]),
    .ADR2(din_6_IBUF_352),
    .ADR3(\cell_generation[9].i_cell/count_out<2>65_239 ),
    .O(\cell_generation[9].i_cell/count_out<2>73_240 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \cell_generation[9].i_cell/count_out<2>92  (
    .ADR0(din_7_IBUF_353),
    .ADR1(din_9_IBUF_355),
    .ADR2(\cell_generation[9].i_cell/count_out<2>26_238 ),
    .ADR3(\cell_generation[9].i_cell/count_out<2>73_240 ),
    .O(\cell_generation[9].i_cell/count_out<2>92_241 )
  );
  X_LUT4 #(
    .INIT ( 16'h4044 ))
  \cell_generation[9].i_cell/count_out<2>119  (
    .ADR0(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<6> [0]),
    .ADR2(\pattern<6> [2]),
    .ADR3(\pattern<6> [1]),
    .O(\cell_generation[9].i_cell/count_out<2>119_234 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \cell_generation[9].i_cell/count_out<2>188  (
    .ADR0(\count<6> [0]),
    .ADR1(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\pattern<6> [1]),
    .ADR3(\cell_generation[9].i_cell/count_out<2>177_236 ),
    .O(\cell_generation[9].i_cell/count_out<2>188_237 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCF8 ))
  \cell_generation[9].i_cell/count_out<2>197  (
    .ADR0(\cell_generation[9].i_cell/count_out<2>92_241 ),
    .ADR1(\count<6> [1]),
    .ADR2(\cell_generation[9].i_cell/count_out<2>188_237 ),
    .ADR3(\cell_generation[9].i_cell/count_out<2>132_235 ),
    .O(\count<10> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \cell_generation[12].i_cell/count_out<3>_SW0  (
    .ADR0(\count<10> [0]),
    .ADR1(\count<10> [2]),
    .ADR2(\count<8> [1]),
    .ADR3(\cell_generation[10].i_cell/count_out_cmp_eq0000_151 ),
    .O(N183)
  );
  X_LUT4 #(
    .INIT ( 16'hEEAE ))
  \cell_generation[12].i_cell/count_out<3>  (
    .ADR0(N183),
    .ADR1(N169),
    .ADR2(N112),
    .ADR3(N179),
    .O(\count<13> [3])
  );
  X_LUT4 #(
    .INIT ( 16'hBF9D ))
  \cell_generation[9].i_cell/count_out<1>_SW0  (
    .ADR0(\pattern<9> [2]),
    .ADR1(\pattern<9> [1]),
    .ADR2(din_9_IBUF_355),
    .ADR3(\pattern<9> [0]),
    .O(N185)
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \cell_generation[13].i_cell/count_out<0>111  (
    .ADR0(\pattern<12> [2]),
    .ADR1(din_12_IBUF_327),
    .ADR2(\pattern<12> [1]),
    .O(N112)
  );
  X_LUT4 #(
    .INIT ( 16'h0802 ))
  \cell_generation[12].i_cell/count_out<4>1_SW0  (
    .ADR0(\count<10> [2]),
    .ADR1(\count<10> [1]),
    .ADR2(N112),
    .ADR3(N10),
    .O(N187)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \cell_generation[12].i_cell/count_out<4>1  (
    .ADR0(N169),
    .ADR1(N179),
    .ADR2(N187),
    .ADR3(\count<12> [0]),
    .O(N771)
  );
  X_LUT4 #(
    .INIT ( 16'hEEAE ))
  \cell_generation[16].i_cell/count_out_cmp_eq0000_SW0  (
    .ADR0(din_15_IBUF_330),
    .ADR1(din_12_IBUF_327),
    .ADR2(\pattern<12> [1]),
    .ADR3(\pattern<12> [2]),
    .O(N189)
  );
  X_LUT4 #(
    .INIT ( 16'h8808 ))
  \cell_generation[16].i_cell/count_out_cmp_eq0000  (
    .ADR0(din_14_IBUF_329),
    .ADR1(din_16_IBUF_331),
    .ADR2(N189),
    .ADR3(N711),
    .O(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \cell_generation[14].i_cell/count_out<4>_SW0  (
    .ADR0(\count<8> [1]),
    .ADR1(\count<10> [0]),
    .ADR2(\cell_generation[10].i_cell/count_out_cmp_eq0000_151 ),
    .ADR3(N771),
    .O(N191)
  );
  X_LUT4 #(
    .INIT ( 16'h509C ))
  \cell_generation[14].i_cell/count_out<4>  (
    .ADR0(N191),
    .ADR1(\count<13> [3]),
    .ADR2(\count<10> [2]),
    .ADR3(N3),
    .O(\count<15> [4])
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \cell_generation[16].i_cell/count_out<4>21  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(din_15_IBUF_330),
    .ADR2(\pattern<15> [1]),
    .O(N124)
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \cell_generation[13].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .ADR1(N24),
    .O(\count<14> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h599A ))
  \cell_generation[15].i_cell/count_out<1>1  (
    .ADR0(\count<14> [1]),
    .ADR1(N124),
    .ADR2(\count<14> [0]),
    .ADR3(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .O(\count<16> [1])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \cell_generation[18].i_cell/count_out_cmp_eq00002  (
    .ADR0(N22),
    .ADR1(din_18_IBUF_333),
    .ADR2(din_16_IBUF_331),
    .O(\cell_generation[18].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \cell_generation[12].i_cell/count_out<4>121  (
    .ADR0(\pattern<12> [1]),
    .ADR1(\pattern<12> [0]),
    .ADR2(\pattern<12> [2]),
    .O(N179)
  );
  X_LUT3 #(
    .INIT ( 8'h9C ))
  \cell_generation[11].i_cell/count_out<2>2  (
    .ADR0(N10),
    .ADR1(\count<10> [2]),
    .ADR2(\count<10> [1]),
    .O(\count<12> [2])
  );
  X_LUT4 #(
    .INIT ( 16'hA965 ))
  \cell_generation[11].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[10].i_cell/count_out_cmp_eq0000_151 ),
    .ADR1(\count<10> [0]),
    .ADR2(N103),
    .ADR3(N179),
    .O(\count<12> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8008 ))
  \cell_generation[14].i_cell/count_out<4>1_SW0  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(\count<14> [1]),
    .ADR2(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N24),
    .O(N195)
  );
  X_LUT4 #(
    .INIT ( 16'h8F08 ))
  \cell_generation[14].i_cell/count_out<4>1_SW1  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(\count<14> [1]),
    .ADR2(N24),
    .ADR3(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .O(N196)
  );
  X_LUT4 #(
    .INIT ( 16'h1BFF ))
  \cell_generation[14].i_cell/count_out<4>1  (
    .ADR0(\count<12> [1]),
    .ADR1(N195),
    .ADR2(N196),
    .ADR3(\count<13> [2]),
    .O(N3)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \cell_generation[17].i_cell/count_out<4>21  (
    .ADR0(\count<16> [3]),
    .ADR1(\count<16> [2]),
    .ADR2(\count<16> [1]),
    .O(N166)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \cell_generation[11].i_cell/count_out<2>31  (
    .ADR0(\pattern<12> [0]),
    .ADR1(\pattern<12> [2]),
    .ADR2(\pattern<12> [1]),
    .O(N103)
  );
  X_LUT3 #(
    .INIT ( 8'h4D ))
  \cell_generation[11].i_cell/count_out<2>11  (
    .ADR0(\count<10> [0]),
    .ADR1(N103),
    .ADR2(\cell_generation[10].i_cell/count_out_cmp_eq0000_151 ),
    .O(N10)
  );
  X_LUT4 #(
    .INIT ( 16'h0600 ))
  \cell_generation[15].i_cell/count_out<3>41  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(\count<14> [0]),
    .ADR2(N2),
    .ADR3(\count<14> [1]),
    .O(N167)
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \cell_generation[18].i_cell/count_out<4>1  (
    .ADR0(\count<18> [4]),
    .ADR1(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<2> ),
    .ADR2(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR3(\count<18> [3]),
    .O(\count<19> [4])
  );
  X_LUT4 #(
    .INIT ( 16'h9555 ))
  \cell_generation[16].i_cell/count_out<4>11  (
    .ADR0(\count<15> [4]),
    .ADR1(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR2(N166),
    .ADR3(\count<16> [0]),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[15].i_cell/count_out<3>11  (
    .ADR0(\count<13> [2]),
    .ADR1(\count<12> [1]),
    .ADR2(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N24),
    .O(N2)
  );
  X_LUT4 #(
    .INIT ( 16'hEEAE ))
  \cell_generation[24].i_cell/count_out_cmp_eq0000_SW0  (
    .ADR0(din_23_IBUF_339),
    .ADR1(din_20_IBUF_336),
    .ADR2(\pattern<20> [1]),
    .ADR3(\pattern<20> [2]),
    .O(N200)
  );
  X_LUT4 #(
    .INIT ( 16'h8808 ))
  \cell_generation[24].i_cell/count_out_cmp_eq0000  (
    .ADR0(din_22_IBUF_338),
    .ADR1(din_24_IBUF_340),
    .ADR2(N200),
    .ADR3(N721),
    .O(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 )
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \cell_generation[16].i_cell/count_out<4>_SW0  (
    .ADR0(N124),
    .ADR1(N167),
    .ADR2(\count<13> [3]),
    .O(N202)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \cell_generation[16].i_cell/count_out<4>_SW1  (
    .ADR0(din_15_IBUF_330),
    .ADR1(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR2(\count<13> [3]),
    .ADR3(N167),
    .O(N203)
  );
  X_LUT4 #(
    .INIT ( 16'h083B ))
  \cell_generation[16].i_cell/count_out<4>  (
    .ADR0(\pattern<15> [1]),
    .ADR1(N14),
    .ADR2(N203),
    .ADR3(N202),
    .O(\count<17> [4])
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \cell_generation[12].i_cell/count_out<2>_SW0  (
    .ADR0(N112),
    .ADR1(\count<12> [1]),
    .ADR2(\count<12> [0]),
    .O(N205)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \cell_generation[12].i_cell/count_out<2>_SW1  (
    .ADR0(\pattern<12> [2]),
    .ADR1(din_12_IBUF_327),
    .ADR2(\count<12> [1]),
    .ADR3(\count<12> [0]),
    .O(N206)
  );
  X_LUT4 #(
    .INIT ( 16'hEA40 ))
  \cell_generation[12].i_cell/count_out<2>  (
    .ADR0(\count<12> [2]),
    .ADR1(N206),
    .ADR2(\pattern<12> [1]),
    .ADR3(N205),
    .O(\count<13> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ))
  \cell_generation[15].i_cell/count_out<3>_SW0  (
    .ADR0(N2),
    .ADR1(\count<14> [0]),
    .ADR2(\count<14> [1]),
    .ADR3(N124),
    .O(N208)
  );
  X_LUT4 #(
    .INIT ( 16'h069F ))
  \cell_generation[15].i_cell/count_out<3>  (
    .ADR0(\count<13> [3]),
    .ADR1(N3),
    .ADR2(N209),
    .ADR3(N208),
    .O(\count<16> [3])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \cell_generation[26].i_cell/count_out_cmp_eq00002  (
    .ADR0(N23),
    .ADR1(din_26_IBUF_342),
    .ADR2(din_24_IBUF_340),
    .O(\cell_generation[26].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h4824 ))
  \cell_generation[22].i_cell/Madd_count_out_addsub0000_cy<1>11  (
    .ADR0(\count<20> [0]),
    .ADR1(\count<20> [1]),
    .ADR2(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N5),
    .O(\cell_generation[22].i_cell/Madd_count_out_addsub0000_cy<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \cell_generation[21].i_cell/count_out<3>11  (
    .ADR0(\pattern<20> [2]),
    .ADR1(din_20_IBUF_336),
    .ADR2(\pattern<20> [1]),
    .O(N5)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \cell_generation[21].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<20> [0]),
    .ADR2(N5),
    .O(\count<22> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h5501 ))
  \cell_generation[21].i_cell/count_out_cmp_eq000027  (
    .ADR0(din_20_IBUF_336),
    .ADR1(\pattern<18> [1]),
    .ADR2(\pattern<18> [0]),
    .ADR3(\pattern<18> [2]),
    .O(\cell_generation[21].i_cell/count_out_cmp_eq000027_192 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \cell_generation[30].i_cell/count_out_cmp_eq000070  (
    .ADR0(din_30_IBUF_347),
    .ADR1(din_28_IBUF_344),
    .O(\cell_generation[30].i_cell/count_out_cmp_eq000070_219 )
  );
  X_LUT4 #(
    .INIT ( 16'h88A8 ))
  \cell_generation[30].i_cell/count_out_cmp_eq000074  (
    .ADR0(\cell_generation[30].i_cell/count_out_cmp_eq000070_219 ),
    .ADR1(\cell_generation[30].i_cell/count_out_cmp_eq000049_218 ),
    .ADR2(\cell_generation[30].i_cell/count_out_cmp_eq000020_217 ),
    .ADR3(\pattern<26> [2]),
    .O(\cell_generation[30].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<2>11  (
    .ADR0(\count<16> [2]),
    .ADR1(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .O(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<2> )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \cell_generation[8].i_cell/pattern_cell<2>1  (
    .ADR0(N69),
    .ADR1(din_8_IBUF_354),
    .ADR2(din_6_IBUF_352),
    .O(\pattern<9> [2])
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \cell_generation[24].i_cell/count_out<4>121  (
    .ADR0(\pattern<23> [2]),
    .ADR1(\pattern<23> [1]),
    .ADR2(din_23_IBUF_339),
    .O(N162)
  );
  X_LUT3 #(
    .INIT ( 8'h9C ))
  \cell_generation[17].i_cell/count_out<3>1  (
    .ADR0(N1041),
    .ADR1(\count<16> [3]),
    .ADR2(\count<16> [2]),
    .O(\count<18> [3])
  );
  X_LUT4 #(
    .INIT ( 16'h4824 ))
  \cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1>12  (
    .ADR0(\count<16> [0]),
    .ADR1(\count<16> [1]),
    .ADR2(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR3(N95),
    .O(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> )
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \cell_generation[21].i_cell/count_out<3>51  (
    .ADR0(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<20> [1]),
    .O(N132)
  );
  X_LUT3 #(
    .INIT ( 8'h1F ))
  \cell_generation[27].i_cell/count_out<3>411  (
    .ADR0(\count<26> [0]),
    .ADR1(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<26> [1]),
    .O(N991)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \cell_generation[17].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR1(\count<16> [0]),
    .ADR2(N95),
    .O(\count<18> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h599A ))
  \cell_generation[19].i_cell/count_out<1>1  (
    .ADR0(\count<18> [1]),
    .ADR1(N81),
    .ADR2(\count<18> [0]),
    .ADR3(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .O(\count<20> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h599A ))
  \cell_generation[17].i_cell/count_out<1>1  (
    .ADR0(\count<16> [1]),
    .ADR1(N95),
    .ADR2(\count<16> [0]),
    .ADR3(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .O(\count<18> [1])
  );
  X_LUT4 #(
    .INIT ( 16'hBB13 ))
  \cell_generation[5].i_cell/pattern_cell<2>_SW0  (
    .ADR0(din_2_IBUF_346),
    .ADR1(din_1_IBUF_335),
    .ADR2(din_4_IBUF_350),
    .ADR3(din_0_IBUF_324),
    .O(N223)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \cell_generation[5].i_cell/pattern_cell<2>  (
    .ADR0(din_5_IBUF_351),
    .ADR1(din_3_IBUF_349),
    .ADR2(N223),
    .O(\pattern<6> [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF8FF ))
  \cell_generation[27].i_cell/count_out<3>_SW0  (
    .ADR0(N60),
    .ADR1(N99),
    .ADR2(N991),
    .ADR3(\count<26> [2]),
    .O(N225)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \cell_generation[26].i_cell/count_out_cmp_eq0000121  (
    .ADR0(\pattern<23> [0]),
    .ADR1(\pattern<23> [1]),
    .O(N127)
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \cell_generation[27].i_cell/count_out<1>2  (
    .ADR0(\count<26> [1]),
    .ADR1(N12),
    .O(\count<28> [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \cell_generation[17].i_cell/count_out<2>2  (
    .ADR0(\count<16> [2]),
    .ADR1(N1041),
    .O(\count<18> [2])
  );
  X_LUT3 #(
    .INIT ( 8'h59 ))
  \cell_generation[19].i_cell/count_out<3>1  (
    .ADR0(N15),
    .ADR1(\cell_generation[19].i_cell/Madd_count_out_addsub0000_cy<2> ),
    .ADR2(N81),
    .O(\count<20> [3])
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \cell_generation[19].i_cell/Madd_count_out_addsub0000_cy<2>11  (
    .ADR0(\count<18> [1]),
    .ADR1(\count<18> [2]),
    .ADR2(N177),
    .ADR3(N1611),
    .O(\cell_generation[19].i_cell/Madd_count_out_addsub0000_cy<2> )
  );
  X_LUT4 #(
    .INIT ( 16'h0600 ))
  \cell_generation[20].i_cell/count_out<4>511  (
    .ADR0(\count<18> [2]),
    .ADR1(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR2(\count<18> [0]),
    .ADR3(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .O(N1611)
  );
  X_LUT4 #(
    .INIT ( 16'h71FF ))
  \cell_generation[17].i_cell/count_out<2>11  (
    .ADR0(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR1(\count<16> [0]),
    .ADR2(N95),
    .ADR3(\count<16> [1]),
    .O(N1041)
  );
  X_LUT3 #(
    .INIT ( 8'h4D ))
  \cell_generation[29].i_cell/count_out<4>11  (
    .ADR0(\cell_generation[29].i_cell/count_out_cmp_eq0000 ),
    .ADR1(N94),
    .ADR2(\count<28> [0]),
    .O(N01)
  );
  X_LUT3 #(
    .INIT ( 8'h6F ))
  \cell_generation[25].i_cell/count_out<3>41  (
    .ADR0(\count<22> [2]),
    .ADR1(N111),
    .ADR2(\count<24>[1] ),
    .O(N172)
  );
  X_LUT3 #(
    .INIT ( 8'h9C ))
  \cell_generation[23].i_cell/count_out<3>2  (
    .ADR0(N111),
    .ADR1(\count<22> [3]),
    .ADR2(\count<22> [2]),
    .O(\count<24>[3] )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \cell_generation[31].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[30].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\cell_generation[31].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<30> [0]),
    .O(num_patterns_0_OBUF_361)
  );
  X_LUT4 #(
    .INIT ( 16'h8388 ))
  \cell_generation[22].i_cell/pattern_cell<1>_SW0  (
    .ADR0(din_22_IBUF_338),
    .ADR1(din_20_IBUF_336),
    .ADR2(\pattern<20> [2]),
    .ADR3(\pattern<20> [1]),
    .O(N235)
  );
  X_LUT4 #(
    .INIT ( 16'h80D5 ))
  \cell_generation[22].i_cell/pattern_cell<1>_SW1  (
    .ADR0(\pattern<20> [2]),
    .ADR1(din_22_IBUF_338),
    .ADR2(din_20_IBUF_336),
    .ADR3(\pattern<20> [1]),
    .O(N236)
  );
  X_LUT4 #(
    .INIT ( 16'h082A ))
  \cell_generation[22].i_cell/pattern_cell<1>  (
    .ADR0(din_21_IBUF_337),
    .ADR1(\pattern<20> [0]),
    .ADR2(N236),
    .ADR3(N235),
    .O(\pattern<23> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8388 ))
  \cell_generation[14].i_cell/pattern_cell<1>_SW0  (
    .ADR0(din_14_IBUF_329),
    .ADR1(din_12_IBUF_327),
    .ADR2(\pattern<12> [2]),
    .ADR3(\pattern<12> [1]),
    .O(N238)
  );
  X_LUT4 #(
    .INIT ( 16'h80D5 ))
  \cell_generation[14].i_cell/pattern_cell<1>_SW1  (
    .ADR0(\pattern<12> [2]),
    .ADR1(din_12_IBUF_327),
    .ADR2(din_14_IBUF_329),
    .ADR3(\pattern<12> [1]),
    .O(N239)
  );
  X_LUT4 #(
    .INIT ( 16'h082A ))
  \cell_generation[14].i_cell/pattern_cell<1>  (
    .ADR0(din_13_IBUF_328),
    .ADR1(\pattern<12> [0]),
    .ADR2(N239),
    .ADR3(N238),
    .O(\pattern<15> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8388 ))
  \cell_generation[11].i_cell/pattern_cell<1>_SW0  (
    .ADR0(din_11_IBUF_326),
    .ADR1(din_9_IBUF_355),
    .ADR2(\pattern<9> [2]),
    .ADR3(\pattern<9> [1]),
    .O(N241)
  );
  X_LUT4 #(
    .INIT ( 16'h80D5 ))
  \cell_generation[11].i_cell/pattern_cell<1>_SW1  (
    .ADR0(\pattern<9> [2]),
    .ADR1(din_11_IBUF_326),
    .ADR2(din_9_IBUF_355),
    .ADR3(\pattern<9> [1]),
    .O(N242)
  );
  X_LUT4 #(
    .INIT ( 16'h082A ))
  \cell_generation[11].i_cell/pattern_cell<1>  (
    .ADR0(din_10_IBUF_325),
    .ADR1(\pattern<9> [0]),
    .ADR2(N242),
    .ADR3(N241),
    .O(\pattern<12> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h4E45 ))
  \cell_generation[21].i_cell/count_out<3>_SW1  (
    .ADR0(N5),
    .ADR1(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR2(N132),
    .ADR3(\count<20> [0]),
    .O(N245)
  );
  X_LUT4 #(
    .INIT ( 16'h396C ))
  \cell_generation[21].i_cell/count_out<3>  (
    .ADR0(\count<20> [2]),
    .ADR1(\count<20> [3]),
    .ADR2(N245),
    .ADR3(N0),
    .O(\count<22> [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ))
  \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>159  (
    .ADR0(N127),
    .ADR1(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>144_196 ),
    .ADR2(\cell_generation[22].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR3(\count<22> [2]),
    .O(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>159_197 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>182  (
    .ADR0(\count<22> [3]),
    .ADR1(\count<22> [1]),
    .ADR2(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>132_195 ),
    .ADR3(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>159_197 ),
    .O(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3> )
  );
  X_LUT4 #(
    .INIT ( 16'h6400 ))
  \cell_generation[23].i_cell/count_out<1>65  (
    .ADR0(\count<22> [0]),
    .ADR1(\count<22> [1]),
    .ADR2(N162),
    .ADR3(\cell_generation[23].i_cell/count_out<1>38_200 ),
    .O(\cell_generation[23].i_cell/count_out<1>65_201 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \cell_generation[23].i_cell/count_out<1>128  (
    .ADR0(\count<22> [1]),
    .ADR1(\cell_generation[23].i_cell/count_out<1>110_198 ),
    .ADR2(\cell_generation[23].i_cell/count_out<1>21_199 ),
    .ADR3(\cell_generation[23].i_cell/count_out<1>65_201 ),
    .O(\count<24>[1] )
  );
  X_LUT4 #(
    .INIT ( 16'hF504 ))
  \cell_generation[21].i_cell/count_out<2>19  (
    .ADR0(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR1(\count<20> [0]),
    .ADR2(N5),
    .ADR3(N132),
    .O(\cell_generation[21].i_cell/count_out<2>19_185 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \cell_generation[21].i_cell/count_out<2>64  (
    .ADR0(\count<20> [0]),
    .ADR1(N5),
    .ADR2(\cell_generation[21].i_cell/count_out<2>44_188 ),
    .ADR3(N132),
    .O(\cell_generation[21].i_cell/count_out<2>64_189 )
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \cell_generation[8].i_cell/pattern_cell<1>21  (
    .ADR0(\pattern<6> [0]),
    .ADR1(\pattern<6> [1]),
    .ADR2(\pattern<6> [2]),
    .O(N121)
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \cell_generation[29].i_cell/count_out<4>31  (
    .ADR0(\pattern<28> [2]),
    .ADR1(\pattern<28> [1]),
    .ADR2(din_28_IBUF_344),
    .O(N94)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1>121  (
    .ADR0(\pattern<20> [0]),
    .ADR1(\pattern<20> [2]),
    .ADR2(\pattern<20> [1]),
    .O(N81)
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[24].i_cell/count_out<4>  (
    .ADR0(N11),
    .ADR1(\count<24>[0] ),
    .ADR2(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 ),
    .ADR3(N249),
    .O(\count<25> [4])
  );
  X_LUT3 #(
    .INIT ( 8'h7F ))
  \cell_generation[22].i_cell/count_out<4>_SW0  (
    .ADR0(\cell_generation[22].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR1(\pattern<23> [2]),
    .ADR2(\count<22> [3]),
    .O(N262)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \cell_generation[19].i_cell/count_out<2>154  (
    .ADR0(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR1(\count<16> [0]),
    .ADR2(N95),
    .O(\cell_generation[19].i_cell/count_out<2>154_171 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \cell_generation[20].i_cell/count_out<4>171  (
    .ADR0(N5),
    .ADR1(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR2(\count<20> [3]),
    .ADR3(\count<20> [2]),
    .O(\cell_generation[20].i_cell/count_out<4>171_175 )
  );
  X_LUT4 #(
    .INIT ( 16'h9A59 ))
  \cell_generation[31].i_cell/count_out<2>1  (
    .ADR0(\count<28> [2]),
    .ADR1(N01),
    .ADR2(\count<28> [1]),
    .ADR3(N17),
    .O(num_patterns_2_OBUF_363)
  );
  X_LUT4 #(
    .INIT ( 16'hF8FF ))
  \cell_generation[5].i_cell/pattern_cell<1>_SW0  (
    .ADR0(din_1_IBUF_335),
    .ADR1(din_3_IBUF_349),
    .ADR2(din_0_IBUF_324),
    .ADR3(din_2_IBUF_346),
    .O(N264)
  );
  X_LUT4 #(
    .INIT ( 16'h84AE ))
  \cell_generation[5].i_cell/pattern_cell<1>_SW1  (
    .ADR0(din_3_IBUF_349),
    .ADR1(din_2_IBUF_346),
    .ADR2(din_0_IBUF_324),
    .ADR3(din_1_IBUF_335),
    .O(N265)
  );
  X_LUT4 #(
    .INIT ( 16'h4C08 ))
  \cell_generation[5].i_cell/pattern_cell<1>  (
    .ADR0(din_5_IBUF_351),
    .ADR1(din_4_IBUF_350),
    .ADR2(N265),
    .ADR3(N264),
    .O(\pattern<6> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h5501 ))
  \cell_generation[29].i_cell/count_out_cmp_eq000018  (
    .ADR0(din_28_IBUF_344),
    .ADR1(\pattern<26> [1]),
    .ADR2(\pattern<26> [0]),
    .ADR3(\pattern<26> [2]),
    .O(\cell_generation[29].i_cell/count_out_cmp_eq000018_215 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \cell_generation[25].i_cell/pattern_cell<1>1  (
    .ADR0(din_24_IBUF_340),
    .ADR1(N23),
    .O(\pattern<26> [1])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \cell_generation[17].i_cell/pattern_cell<1>1  (
    .ADR0(din_16_IBUF_331),
    .ADR1(N22),
    .O(\pattern<18> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h71FF ))
  \cell_generation[25].i_cell/count_out<2>11  (
    .ADR0(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 ),
    .ADR1(\count<24>[0] ),
    .ADR2(N98),
    .ADR3(\count<24>[1] ),
    .O(N56)
  );
  X_LUT4 #(
    .INIT ( 16'h9555 ))
  \cell_generation[26].i_cell/count_out<4>11  (
    .ADR0(\count<25> [4]),
    .ADR1(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<26> [0]),
    .ADR3(N170),
    .O(N16)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ))
  \cell_generation[26].i_cell/count_out<4>_SW0  (
    .ADR0(\pattern<26> [1]),
    .ADR1(\pattern<26> [2]),
    .ADR2(\count<24>[3] ),
    .ADR3(N172),
    .O(N278)
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[26].i_cell/count_out<4>  (
    .ADR0(N16),
    .ADR1(N278),
    .ADR2(N31),
    .ADR3(\pattern<26> [0]),
    .O(\count<27> [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8A08 ))
  \cell_generation[25].i_cell/count_out<3>49  (
    .ADR0(\cell_generation[25].i_cell/count_out<3>42_205 ),
    .ADR1(\count<24>[0] ),
    .ADR2(N98),
    .ADR3(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 ),
    .O(\cell_generation[25].i_cell/count_out<3>49_206 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \cell_generation[27].i_cell/count_out<3>31  (
    .ADR0(\pattern<28> [0]),
    .ADR1(\pattern<28> [2]),
    .ADR2(\pattern<28> [1]),
    .O(N99)
  );
  X_LUT3 #(
    .INIT ( 8'h17 ))
  \cell_generation[31].i_cell/count_out<4>11  (
    .ADR0(\cell_generation[31].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<30> [0]),
    .ADR2(\cell_generation[30].i_cell/count_out_cmp_eq0000 ),
    .O(N17)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \cell_generation[31].i_cell/count_out<3>2  (
    .ADR0(\count<28> [3]),
    .ADR1(N1001),
    .ADR2(N1011),
    .O(num_patterns_3_OBUF_364)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \cell_generation[27].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<26> [0]),
    .ADR2(N99),
    .O(\count<28> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h2AFF ))
  \cell_generation[7].i_cell/count_out_cmp_eq000011  (
    .ADR0(din_1_IBUF_335),
    .ADR1(din_2_IBUF_346),
    .ADR2(din_0_IBUF_324),
    .ADR3(din_3_IBUF_349),
    .O(N26)
  );
  X_LUT4 #(
    .INIT ( 16'hF6FF ))
  \cell_generation[31].i_cell/count_out<3>11  (
    .ADR0(\count<28> [1]),
    .ADR1(N01),
    .ADR2(N17),
    .ADR3(\count<28> [2]),
    .O(N1011)
  );
  X_LUT4 #(
    .INIT ( 16'h9A59 ))
  \cell_generation[31].i_cell/count_out<4>1  (
    .ADR0(\count<28> [4]),
    .ADR1(N1001),
    .ADR2(\count<28> [3]),
    .ADR3(N1011),
    .O(num_patterns_4_OBUF_365)
  );
  X_LUT4 #(
    .INIT ( 16'h64A8 ))
  \cell_generation[27].i_cell/pattern_cell<0>  (
    .ADR0(din_27_IBUF_343),
    .ADR1(din_26_IBUF_342),
    .ADR2(N38),
    .ADR3(N371),
    .O(\pattern<28> [0])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[25].i_cell/pattern_cell<0>103  (
    .ADR0(din_25_IBUF_341),
    .ADR1(\cell_generation[25].i_cell/pattern_cell<0>47 ),
    .ADR2(\cell_generation[25].i_cell/pattern_cell<0>95_210 ),
    .O(\pattern<26> [0])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[17].i_cell/pattern_cell<0>103  (
    .ADR0(din_17_IBUF_332),
    .ADR1(\cell_generation[17].i_cell/pattern_cell<0>47 ),
    .ADR2(\cell_generation[17].i_cell/pattern_cell<0>95_166 ),
    .O(\pattern<18> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h626A ))
  \cell_generation[11].i_cell/pattern_cell<0>28  (
    .ADR0(\pattern<9> [1]),
    .ADR1(din_10_IBUF_325),
    .ADR2(\pattern<9> [0]),
    .ADR3(din_9_IBUF_355),
    .O(\cell_generation[11].i_cell/pattern_cell<0>28_154 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFB9 ))
  \cell_generation[8].i_cell/pattern_cell<0>16  (
    .ADR0(\pattern<6> [1]),
    .ADR1(\pattern<6> [0]),
    .ADR2(din_6_IBUF_352),
    .ADR3(\pattern<6> [2]),
    .O(\cell_generation[8].i_cell/pattern_cell<0>16_233 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFB9 ))
  \cell_generation[22].i_cell/pattern_cell<0>_SW0  (
    .ADR0(\pattern<20> [1]),
    .ADR1(\pattern<20> [0]),
    .ADR2(din_20_IBUF_336),
    .ADR3(\pattern<20> [2]),
    .O(N300)
  );
  X_LUT4 #(
    .INIT ( 16'hEA40 ))
  \cell_generation[22].i_cell/pattern_cell<0>  (
    .ADR0(din_22_IBUF_338),
    .ADR1(din_21_IBUF_337),
    .ADR2(N300),
    .ADR3(N721),
    .O(\pattern<23> [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFB9 ))
  \cell_generation[14].i_cell/pattern_cell<0>16  (
    .ADR0(\pattern<12> [1]),
    .ADR1(\pattern<12> [0]),
    .ADR2(din_12_IBUF_327),
    .ADR3(\pattern<12> [2]),
    .O(\cell_generation[14].i_cell/pattern_cell<0>16_158 )
  );
  X_LUT4 #(
    .INIT ( 16'h468A ))
  \cell_generation[5].i_cell/pattern_cell<0>  (
    .ADR0(din_5_IBUF_351),
    .ADR1(din_4_IBUF_350),
    .ADR2(N303),
    .ADR3(N264),
    .O(\pattern<6> [0])
  );
  X_BUF   din_31_IBUF (
    .I(din[31]),
    .O(din_31_IBUF_348)
  );
  X_BUF   din_30_IBUF (
    .I(din[30]),
    .O(din_30_IBUF_347)
  );
  X_BUF   din_29_IBUF (
    .I(din[29]),
    .O(din_29_IBUF_345)
  );
  X_BUF   din_28_IBUF (
    .I(din[28]),
    .O(din_28_IBUF_344)
  );
  X_BUF   din_27_IBUF (
    .I(din[27]),
    .O(din_27_IBUF_343)
  );
  X_BUF   din_26_IBUF (
    .I(din[26]),
    .O(din_26_IBUF_342)
  );
  X_BUF   din_25_IBUF (
    .I(din[25]),
    .O(din_25_IBUF_341)
  );
  X_BUF   din_24_IBUF (
    .I(din[24]),
    .O(din_24_IBUF_340)
  );
  X_BUF   din_23_IBUF (
    .I(din[23]),
    .O(din_23_IBUF_339)
  );
  X_BUF   din_22_IBUF (
    .I(din[22]),
    .O(din_22_IBUF_338)
  );
  X_BUF   din_21_IBUF (
    .I(din[21]),
    .O(din_21_IBUF_337)
  );
  X_BUF   din_20_IBUF (
    .I(din[20]),
    .O(din_20_IBUF_336)
  );
  X_BUF   din_19_IBUF (
    .I(din[19]),
    .O(din_19_IBUF_334)
  );
  X_BUF   din_18_IBUF (
    .I(din[18]),
    .O(din_18_IBUF_333)
  );
  X_BUF   din_17_IBUF (
    .I(din[17]),
    .O(din_17_IBUF_332)
  );
  X_BUF   din_16_IBUF (
    .I(din[16]),
    .O(din_16_IBUF_331)
  );
  X_BUF   din_15_IBUF (
    .I(din[15]),
    .O(din_15_IBUF_330)
  );
  X_BUF   din_14_IBUF (
    .I(din[14]),
    .O(din_14_IBUF_329)
  );
  X_BUF   din_13_IBUF (
    .I(din[13]),
    .O(din_13_IBUF_328)
  );
  X_BUF   din_12_IBUF (
    .I(din[12]),
    .O(din_12_IBUF_327)
  );
  X_BUF   din_11_IBUF (
    .I(din[11]),
    .O(din_11_IBUF_326)
  );
  X_BUF   din_10_IBUF (
    .I(din[10]),
    .O(din_10_IBUF_325)
  );
  X_BUF   din_9_IBUF (
    .I(din[9]),
    .O(din_9_IBUF_355)
  );
  X_BUF   din_8_IBUF (
    .I(din[8]),
    .O(din_8_IBUF_354)
  );
  X_BUF   din_7_IBUF (
    .I(din[7]),
    .O(din_7_IBUF_353)
  );
  X_BUF   din_6_IBUF (
    .I(din[6]),
    .O(din_6_IBUF_352)
  );
  X_BUF   din_5_IBUF (
    .I(din[5]),
    .O(din_5_IBUF_351)
  );
  X_BUF   din_4_IBUF (
    .I(din[4]),
    .O(din_4_IBUF_350)
  );
  X_BUF   din_3_IBUF (
    .I(din[3]),
    .O(din_3_IBUF_349)
  );
  X_BUF   din_2_IBUF (
    .I(din[2]),
    .O(din_2_IBUF_346)
  );
  X_BUF   din_1_IBUF (
    .I(din[1]),
    .O(din_1_IBUF_335)
  );
  X_BUF   din_0_IBUF (
    .I(din[0]),
    .O(din_0_IBUF_324)
  );
  X_LUT4 #(
    .INIT ( 16'h7E18 ))
  \cell_generation[25].i_cell/count_out<1>83  (
    .ADR0(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 ),
    .ADR1(\count<24>[0] ),
    .ADR2(\count<24>[1] ),
    .ADR3(N305),
    .O(\count<26> [1])
  );
  X_LUT3 #(
    .INIT ( 8'hAD ))
  \cell_generation[25].i_cell/pattern_cell<0>95_SW0  (
    .ADR0(\pattern<23> [1]),
    .ADR1(din_23_IBUF_339),
    .ADR2(\pattern<23> [0]),
    .O(N307)
  );
  X_LUT4 #(
    .INIT ( 16'h5040 ))
  \cell_generation[25].i_cell/pattern_cell<0>95  (
    .ADR0(din_25_IBUF_341),
    .ADR1(\pattern<23> [2]),
    .ADR2(din_24_IBUF_340),
    .ADR3(N307),
    .O(\cell_generation[25].i_cell/pattern_cell<0>95_210 )
  );
  X_LUT3 #(
    .INIT ( 8'hAD ))
  \cell_generation[17].i_cell/pattern_cell<0>95_SW0  (
    .ADR0(\pattern<15> [1]),
    .ADR1(din_15_IBUF_330),
    .ADR2(\pattern<15> [0]),
    .O(N309)
  );
  X_LUT4 #(
    .INIT ( 16'h5040 ))
  \cell_generation[17].i_cell/pattern_cell<0>95  (
    .ADR0(din_17_IBUF_332),
    .ADR1(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR2(din_16_IBUF_331),
    .ADR3(N309),
    .O(\cell_generation[17].i_cell/pattern_cell<0>95_166 )
  );
  X_LUT3 #(
    .INIT ( 8'hAD ))
  \cell_generation[11].i_cell/pattern_cell<0>95_SW0  (
    .ADR0(\pattern<9> [1]),
    .ADR1(din_9_IBUF_355),
    .ADR2(\pattern<9> [0]),
    .O(N311)
  );
  X_LUT4 #(
    .INIT ( 16'h7520 ))
  \cell_generation[21].i_cell/count_out_cmp_eq000043_SW0  (
    .ADR0(din_18_IBUF_333),
    .ADR1(\pattern<18> [2]),
    .ADR2(\pattern<18> [1]),
    .ADR3(N37),
    .O(N313)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[21].i_cell/count_out_cmp_eq000043  (
    .ADR0(din_19_IBUF_334),
    .ADR1(din_21_IBUF_337),
    .ADR2(\cell_generation[21].i_cell/count_out_cmp_eq000027_192 ),
    .ADR3(N313),
    .O(\cell_generation[21].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h7520 ))
  \cell_generation[29].i_cell/count_out_cmp_eq000046_SW0  (
    .ADR0(din_26_IBUF_342),
    .ADR1(\pattern<26> [2]),
    .ADR2(\pattern<26> [1]),
    .ADR3(N38),
    .O(N315)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[29].i_cell/count_out_cmp_eq000046  (
    .ADR0(din_27_IBUF_343),
    .ADR1(din_29_IBUF_345),
    .ADR2(\cell_generation[29].i_cell/count_out_cmp_eq000018_215 ),
    .ADR3(N315),
    .O(\cell_generation[29].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0E06 ))
  \cell_generation[9].i_cell/count_out<2>26_SW0  (
    .ADR0(\pattern<6> [0]),
    .ADR1(\pattern<6> [1]),
    .ADR2(\pattern<6> [2]),
    .ADR3(din_6_IBUF_352),
    .O(N317)
  );
  X_LUT4 #(
    .INIT ( 16'h0257 ))
  \cell_generation[9].i_cell/count_out<2>26  (
    .ADR0(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<6> [0]),
    .ADR2(N317),
    .ADR3(N20),
    .O(\cell_generation[9].i_cell/count_out<2>26_238 )
  );
  X_LUT3 #(
    .INIT ( 8'h15 ))
  \cell_generation[11].i_cell/pattern_cell<2>_SW2  (
    .ADR0(\pattern<9> [1]),
    .ADR1(\pattern<9> [0]),
    .ADR2(din_10_IBUF_325),
    .O(N319)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[11].i_cell/pattern_cell<2>  (
    .ADR0(din_11_IBUF_326),
    .ADR1(din_9_IBUF_355),
    .ADR2(\pattern<9> [2]),
    .ADR3(N319),
    .O(\pattern<12> [2])
  );
  X_LUT3 #(
    .INIT ( 8'h15 ))
  \cell_generation[23].i_cell/count_out<1>71_SW2  (
    .ADR0(\pattern<20> [1]),
    .ADR1(\pattern<20> [0]),
    .ADR2(din_21_IBUF_337),
    .O(N321)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[23].i_cell/count_out<1>71  (
    .ADR0(din_20_IBUF_336),
    .ADR1(din_22_IBUF_338),
    .ADR2(\pattern<20> [2]),
    .ADR3(N321),
    .O(\pattern<23> [2])
  );
  X_LUT3 #(
    .INIT ( 8'h15 ))
  \cell_generation[14].i_cell/count_out_cmp_eq0000_SW2  (
    .ADR0(\pattern<12> [1]),
    .ADR1(\pattern<12> [0]),
    .ADR2(din_13_IBUF_328),
    .O(N323)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[14].i_cell/count_out_cmp_eq0000  (
    .ADR0(din_12_IBUF_327),
    .ADR1(din_14_IBUF_329),
    .ADR2(\pattern<12> [2]),
    .ADR3(N323),
    .O(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 )
  );
  X_LUT3 #(
    .INIT ( 8'h15 ))
  \cell_generation[25].i_cell/count_out<1>61_SW2  (
    .ADR0(\pattern<23> [1]),
    .ADR1(\pattern<23> [0]),
    .ADR2(din_24_IBUF_340),
    .O(N327)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[25].i_cell/count_out<1>61  (
    .ADR0(din_23_IBUF_339),
    .ADR1(din_25_IBUF_341),
    .ADR2(\pattern<23> [2]),
    .ADR3(N327),
    .O(\pattern<26> [2])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[17].i_cell/pattern_cell<2>_SW2  (
    .ADR0(\pattern<15> [0]),
    .ADR1(din_16_IBUF_331),
    .ADR2(\pattern<15> [1]),
    .O(N329)
  );
  X_LUT4 #(
    .INIT ( 16'h8808 ))
  \cell_generation[17].i_cell/pattern_cell<2>  (
    .ADR0(din_17_IBUF_332),
    .ADR1(din_15_IBUF_330),
    .ADR2(N329),
    .ADR3(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .O(\pattern<18> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h8182 ))
  \cell_generation[21].i_cell/Madd_count_out_addsub0000_cy<3>1_SW2  (
    .ADR0(\count<20> [2]),
    .ADR1(N5),
    .ADR2(\count<20> [0]),
    .ADR3(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .O(N331)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \cell_generation[21].i_cell/Madd_count_out_addsub0000_cy<3>1  (
    .ADR0(\count<20> [1]),
    .ADR1(\count<20> [3]),
    .ADR2(N331),
    .O(\cell_generation[21].i_cell/Madd_count_out_addsub0000_cy<3> )
  );
  X_LUT4 #(
    .INIT ( 16'hD5FF ))
  \cell_generation[17].i_cell/count_out<4>26_SW0  (
    .ADR0(\count<16> [2]),
    .ADR1(N22),
    .ADR2(din_16_IBUF_331),
    .ADR3(\pattern<18> [2]),
    .O(N333)
  );
  X_LUT4 #(
    .INIT ( 16'hFFD7 ))
  \cell_generation[17].i_cell/count_out<4>26  (
    .ADR0(\count<16> [1]),
    .ADR1(\count<16> [0]),
    .ADR2(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR3(N333),
    .O(\cell_generation[17].i_cell/count_out<4>26_162 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \cell_generation[19].i_cell/pattern_cell<1>_SW2  (
    .ADR0(din_19_IBUF_334),
    .ADR1(\cell_generation[17].i_cell/pattern_cell<0>47 ),
    .ADR2(din_17_IBUF_332),
    .ADR3(\cell_generation[17].i_cell/pattern_cell<0>95_166 ),
    .O(N335)
  );
  X_LUT4 #(
    .INIT ( 16'hAA02 ))
  \cell_generation[19].i_cell/pattern_cell<1>  (
    .ADR0(din_18_IBUF_333),
    .ADR1(\pattern<18> [1]),
    .ADR2(N335),
    .ADR3(\pattern<18> [2]),
    .O(\pattern<20> [1])
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \cell_generation[27].i_cell/pattern_cell<1>_SW2  (
    .ADR0(din_27_IBUF_343),
    .ADR1(\cell_generation[25].i_cell/pattern_cell<0>47 ),
    .ADR2(din_25_IBUF_341),
    .ADR3(\cell_generation[25].i_cell/pattern_cell<0>95_210 ),
    .O(N337)
  );
  X_LUT4 #(
    .INIT ( 16'hAA02 ))
  \cell_generation[27].i_cell/pattern_cell<1>  (
    .ADR0(din_26_IBUF_342),
    .ADR1(\pattern<26> [1]),
    .ADR2(N337),
    .ADR3(\pattern<26> [2]),
    .O(\pattern<28> [1])
  );
  X_LUT4 #(
    .INIT ( 16'hBB13 ))
  \cell_generation[20].i_cell/count_out<4>51_SW0  (
    .ADR0(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<18> [2]),
    .ADR2(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR3(\count<18> [0]),
    .O(N341)
  );
  X_LUT4 #(
    .INIT ( 16'hFFBF ))
  \cell_generation[20].i_cell/count_out<4>51  (
    .ADR0(\pattern<20> [0]),
    .ADR1(\count<18> [1]),
    .ADR2(\pattern<20> [2]),
    .ADR3(N341),
    .O(\cell_generation[20].i_cell/count_out<4>51_180 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE54 ))
  \cell_generation[20].i_cell/count_out<4>244  (
    .ADR0(\count<19> [4]),
    .ADR1(\cell_generation[20].i_cell/count_out<4>171_175 ),
    .ADR2(\cell_generation[20].i_cell/count_out<4>203 ),
    .ADR3(N343),
    .O(\count<21> [4])
  );
  X_LUT4 #(
    .INIT ( 16'hEA40 ))
  \cell_generation[8].i_cell/pattern_cell<0>31  (
    .ADR0(din_8_IBUF_354),
    .ADR1(\cell_generation[8].i_cell/pattern_cell<0>16_233 ),
    .ADR2(din_7_IBUF_353),
    .ADR3(N731),
    .O(\pattern<9> [0])
  );
  X_LUT4 #(
    .INIT ( 16'hEA40 ))
  \cell_generation[14].i_cell/pattern_cell<0>31  (
    .ADR0(din_14_IBUF_329),
    .ADR1(\cell_generation[14].i_cell/pattern_cell<0>16_158 ),
    .ADR2(din_13_IBUF_328),
    .ADR3(N711),
    .O(\pattern<15> [0])
  );
  X_LUT3 #(
    .INIT ( 8'h4C ))
  \cell_generation[7].i_cell/count_out_cmp_eq000039_SW0  (
    .ADR0(din_4_IBUF_350),
    .ADR1(N26),
    .ADR2(din_6_IBUF_352),
    .O(N345)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[7].i_cell/count_out_cmp_eq000039  (
    .ADR0(din_5_IBUF_351),
    .ADR1(din_7_IBUF_353),
    .ADR2(\cell_generation[7].i_cell/count_out_cmp_eq000022 ),
    .ADR3(N345),
    .O(\cell_generation[7].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h599A ))
  \cell_generation[13].i_cell/count_out<1>2  (
    .ADR0(\count<12> [1]),
    .ADR1(N112),
    .ADR2(\count<12> [0]),
    .ADR3(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .O(\count<14> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h2604 ))
  \cell_generation[30].i_cell/count_out_cmp_eq000020  (
    .ADR0(\pattern<26> [0]),
    .ADR1(\pattern<26> [1]),
    .ADR2(din_26_IBUF_342),
    .ADR3(din_27_IBUF_343),
    .O(\cell_generation[30].i_cell/count_out_cmp_eq000020_217 )
  );
  X_LUT4 #(
    .INIT ( 16'h599A ))
  \cell_generation[21].i_cell/count_out<1>2  (
    .ADR0(\count<20> [1]),
    .ADR1(N5),
    .ADR2(\count<20> [0]),
    .ADR3(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .O(\count<22> [1])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[23].i_cell/count_out<1>38_SW0  (
    .ADR0(din_21_IBUF_337),
    .ADR1(\pattern<20> [0]),
    .ADR2(\pattern<20> [1]),
    .O(N347)
  );
  X_LUT4 #(
    .INIT ( 16'h75FF ))
  \cell_generation[23].i_cell/count_out<1>38  (
    .ADR0(din_20_IBUF_336),
    .ADR1(\pattern<20> [2]),
    .ADR2(N347),
    .ADR3(din_22_IBUF_338),
    .O(\cell_generation[23].i_cell/count_out<1>38_200 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[21].i_cell/count_out<2>44  (
    .ADR0(din_20_IBUF_336),
    .ADR1(din_18_IBUF_333),
    .ADR2(\pattern<18> [2]),
    .ADR3(\cell_generation[21].i_cell/count_out<2>36_187 ),
    .O(\cell_generation[21].i_cell/count_out<2>44_188 )
  );
  X_LUT4 #(
    .INIT ( 16'h88A8 ))
  \cell_generation[8].i_cell/pattern_cell<1>36  (
    .ADR0(din_7_IBUF_353),
    .ADR1(N349),
    .ADR2(N121),
    .ADR3(din_8_IBUF_354),
    .O(\pattern<9> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h4C08 ))
  \cell_generation[31].i_cell/count_out_cmp_eq000050_SW0  (
    .ADR0(din_28_IBUF_344),
    .ADR1(\pattern<28> [1]),
    .ADR2(\pattern<28> [2]),
    .ADR3(\pattern<28> [0]),
    .O(N351)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[31].i_cell/count_out_cmp_eq000050  (
    .ADR0(din_29_IBUF_345),
    .ADR1(din_31_IBUF_348),
    .ADR2(\cell_generation[31].i_cell/count_out_cmp_eq000031 ),
    .ADR3(N351),
    .O(\cell_generation[31].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF15 ))
  \cell_generation[20].i_cell/count_out<4>66  (
    .ADR0(\count<18> [3]),
    .ADR1(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<2> ),
    .ADR2(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR3(\cell_generation[20].i_cell/count_out<4>51_180 ),
    .O(\cell_generation[20].i_cell/count_out<4>66_181 )
  );
  X_LUT3 #(
    .INIT ( 8'h4D ))
  \cell_generation[25].i_cell/count_out<2>_SW1  (
    .ADR0(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 ),
    .ADR1(N98),
    .ADR2(\count<24>[0] ),
    .O(N353)
  );
  X_LUT4 #(
    .INIT ( 16'h9C63 ))
  \cell_generation[25].i_cell/count_out<2>  (
    .ADR0(N353),
    .ADR1(N111),
    .ADR2(\count<24>[1] ),
    .ADR3(\count<22> [2]),
    .O(\count<26> [2])
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \cell_generation[24].i_cell/count_out<4>1_SW1  (
    .ADR0(\pattern<23> [1]),
    .ADR1(\pattern<23> [2]),
    .O(N355)
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[24].i_cell/count_out<4>1  (
    .ADR0(\count<23> [4]),
    .ADR1(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3> ),
    .ADR2(din_23_IBUF_339),
    .ADR3(N355),
    .O(N11)
  );
  X_LUT4 #(
    .INIT ( 16'h80F0 ))
  \cell_generation[5].i_cell/pattern_cell<0>_SW1  (
    .ADR0(din_2_IBUF_346),
    .ADR1(din_0_IBUF_324),
    .ADR2(din_3_IBUF_349),
    .ADR3(din_1_IBUF_335),
    .O(N303)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \cell_generation[19].i_cell/count_out<0>1  (
    .ADR0(N81),
    .ADR1(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<18> [0]),
    .O(\count<20> [0])
  );
  X_LUT4 #(
    .INIT ( 16'hEBBE ))
  \cell_generation[23].i_cell/count_out<1>110_SW0  (
    .ADR0(\pattern<23> [0]),
    .ADR1(N5),
    .ADR2(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR3(\count<20> [0]),
    .O(N363)
  );
  X_LUT4 #(
    .INIT ( 16'hBF9D ))
  \cell_generation[23].i_cell/count_out<1>110  (
    .ADR0(\pattern<23> [2]),
    .ADR1(\pattern<23> [1]),
    .ADR2(din_23_IBUF_339),
    .ADR3(N363),
    .O(\cell_generation[23].i_cell/count_out<1>110_198 )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \cell_generation[21].i_cell/count_out<2>205  (
    .ADR0(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<18> [0]),
    .ADR2(N81),
    .O(\cell_generation[21].i_cell/count_out<2>205_186 )
  );
  X_LUT4 #(
    .INIT ( 16'h7DFF ))
  \cell_generation[24].i_cell/count_out<4>_SW0  (
    .ADR0(\count<22> [3]),
    .ADR1(\count<22> [2]),
    .ADR2(N111),
    .ADR3(\count<24>[1] ),
    .O(N249)
  );
  X_LUT4 #(
    .INIT ( 16'h0802 ))
  \cell_generation[25].i_cell/count_out<3>42  (
    .ADR0(\count<24>[1] ),
    .ADR1(\count<22> [2]),
    .ADR2(\count<22> [3]),
    .ADR3(N111),
    .O(\cell_generation[25].i_cell/count_out<3>42_205 )
  );
  X_LUT4 #(
    .INIT ( 16'hB424 ))
  \cell_generation[25].i_cell/count_out<3>53_SW0  (
    .ADR0(N111),
    .ADR1(\count<22> [2]),
    .ADR2(\count<22> [3]),
    .ADR3(N56),
    .O(N367)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \cell_generation[25].i_cell/count_out<3>53  (
    .ADR0(\cell_generation[25].i_cell/count_out<3>49_206 ),
    .ADR1(N367),
    .O(\count<26> [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFF15 ))
  \cell_generation[9].i_cell/count_out<2>27  (
    .ADR0(\pattern<6> [1]),
    .ADR1(din_7_IBUF_353),
    .ADR2(\pattern<6> [0]),
    .ADR3(\pattern<6> [2]),
    .O(N69)
  );
  X_LUT4 #(
    .INIT ( 16'hBF9D ))
  \cell_generation[23].i_cell/count_out<0>11  (
    .ADR0(\pattern<23> [2]),
    .ADR1(\pattern<23> [1]),
    .ADR2(din_23_IBUF_339),
    .ADR3(\pattern<23> [0]),
    .O(N43)
  );
  X_LUT4 #(
    .INIT ( 16'h4CCC ))
  \cell_generation[9].i_cell/count_out<2>65  (
    .ADR0(din_5_IBUF_351),
    .ADR1(\count<6> [0]),
    .ADR2(din_3_IBUF_349),
    .ADR3(N223),
    .O(\cell_generation[9].i_cell/count_out<2>65_239 )
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \cell_generation[9].i_cell/count_out<2>177_SW0  (
    .ADR0(din_6_IBUF_352),
    .ADR1(\count<6> [1]),
    .ADR2(din_7_IBUF_353),
    .ADR3(din_9_IBUF_355),
    .O(N369)
  );
  X_LUT4 #(
    .INIT ( 16'h1333 ))
  \cell_generation[9].i_cell/count_out<2>177  (
    .ADR0(din_3_IBUF_349),
    .ADR1(N369),
    .ADR2(din_5_IBUF_351),
    .ADR3(N223),
    .O(\cell_generation[9].i_cell/count_out<2>177_236 )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \cell_generation[9].i_cell/count_out<0>1  (
    .ADR0(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR1(N20),
    .ADR2(N185),
    .O(\count<10> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[13].i_cell/count_out<0>11  (
    .ADR0(\count<12> [0]),
    .ADR1(din_12_IBUF_327),
    .ADR2(\pattern<12> [1]),
    .ADR3(\pattern<12> [2]),
    .O(N24)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \cell_generation[15].i_cell/count_out<3>_SW1  (
    .ADR0(N167),
    .ADR1(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR2(din_15_IBUF_330),
    .ADR3(\pattern<15> [1]),
    .O(N209)
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \cell_generation[30].i_cell/count_out_cmp_eq000049_SW0  (
    .ADR0(\pattern<26> [2]),
    .ADR1(N23),
    .ADR2(din_24_IBUF_340),
    .O(N371)
  );
  X_LUT4 #(
    .INIT ( 16'h135F ))
  \cell_generation[30].i_cell/count_out_cmp_eq000049  (
    .ADR0(N371),
    .ADR1(din_29_IBUF_345),
    .ADR2(din_26_IBUF_342),
    .ADR3(din_27_IBUF_343),
    .O(\cell_generation[30].i_cell/count_out_cmp_eq000049_218 )
  );
  X_LUT4 #(
    .INIT ( 16'h9555 ))
  \cell_generation[19].i_cell/count_out<3>11  (
    .ADR0(\count<18> [3]),
    .ADR1(\count<16> [2]),
    .ADR2(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR3(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .O(N15)
  );
  X_LUT4 #(
    .INIT ( 16'h8A08 ))
  \cell_generation[27].i_cell/count_out<3>_SW2  (
    .ADR0(\count<26> [2]),
    .ADR1(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR2(N99),
    .ADR3(\count<26> [0]),
    .O(N373)
  );
  X_LUT4 #(
    .INIT ( 16'hEA40 ))
  \cell_generation[27].i_cell/count_out<3>  (
    .ADR0(\count<26> [3]),
    .ADR1(\count<26> [1]),
    .ADR2(N373),
    .ADR3(N225),
    .O(\count<28> [3])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \cell_generation[25].i_cell/count_out<0>11  (
    .ADR0(\cell_generation[24].i_cell/count_out_cmp_eq0000_202 ),
    .ADR1(\count<22> [0]),
    .ADR2(N43),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hF8FF ))
  \cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1>111  (
    .ADR0(N22),
    .ADR1(din_16_IBUF_331),
    .ADR2(\pattern<18> [0]),
    .ADR3(\pattern<18> [2]),
    .O(N95)
  );
  X_LUT4 #(
    .INIT ( 16'hF6FF ))
  \cell_generation[29].i_cell/count_out<3>11  (
    .ADR0(\count<26> [1]),
    .ADR1(N12),
    .ADR2(N01),
    .ADR3(\count<28> [2]),
    .O(N1001)
  );
  X_LUT4 #(
    .INIT ( 16'h88F7 ))
  \cell_generation[19].i_cell/pattern_cell<2>_SW1  (
    .ADR0(din_16_IBUF_331),
    .ADR1(N22),
    .ADR2(din_18_IBUF_333),
    .ADR3(\pattern<18> [0]),
    .O(N375)
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \cell_generation[19].i_cell/pattern_cell<2>  (
    .ADR0(\pattern<18> [2]),
    .ADR1(N375),
    .ADR2(din_19_IBUF_334),
    .O(\pattern<20> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9600 ))
  \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>144  (
    .ADR0(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<20> [0]),
    .ADR2(N5),
    .ADR3(\pattern<23> [2]),
    .O(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>144_196 )
  );
  X_LUT4 #(
    .INIT ( 16'h135F ))
  \cell_generation[21].i_cell/count_out<2>36  (
    .ADR0(din_19_IBUF_334),
    .ADR1(N22),
    .ADR2(\pattern<18> [0]),
    .ADR3(din_16_IBUF_331),
    .O(\cell_generation[21].i_cell/count_out<2>36_187 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \cell_generation[21].i_cell/count_out<2>88  (
    .ADR0(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<20> [1]),
    .ADR2(N5),
    .ADR3(\count<20> [0]),
    .O(\cell_generation[21].i_cell/count_out<2>88_190 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[21].i_cell/count_out<2>123_SW0  (
    .ADR0(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR1(\cell_generation[21].i_cell/count_out<2>64_189 ),
    .ADR2(\cell_generation[21].i_cell/count_out<2>88_190 ),
    .O(N377)
  );
  X_LUT4 #(
    .INIT ( 16'hF690 ))
  \cell_generation[21].i_cell/count_out<2>123  (
    .ADR0(N13),
    .ADR1(\count<18> [2]),
    .ADR2(\cell_generation[21].i_cell/count_out<2>19_185 ),
    .ADR3(N377),
    .O(\cell_generation[21].i_cell/count_out<2>123_184 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFBF ))
  \cell_generation[19].i_cell/count_out<2>121  (
    .ADR0(\pattern<20> [0]),
    .ADR1(\count<18> [1]),
    .ADR2(\pattern<20> [2]),
    .ADR3(\pattern<20> [1]),
    .O(N411)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \cell_generation[22].i_cell/count_out<4>_SW1  (
    .ADR0(N262),
    .ADR1(\count<22> [2]),
    .ADR2(\pattern<23> [0]),
    .ADR3(\pattern<23> [1]),
    .O(N379)
  );
  X_LUT4 #(
    .INIT ( 16'h9666 ))
  \cell_generation[22].i_cell/count_out<4>  (
    .ADR0(\count<21> [4]),
    .ADR1(N379),
    .ADR2(\cell_generation[21].i_cell/Madd_count_out_addsub0000_cy<3> ),
    .ADR3(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .O(\count<23> [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0802 ))
  \cell_generation[20].i_cell/count_out<4>189  (
    .ADR0(\count<18> [0]),
    .ADR1(\count<16> [2]),
    .ADR2(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N1041),
    .O(\cell_generation[20].i_cell/count_out<4>189_176 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA9A ))
  \cell_generation[25].i_cell/count_out<0>1  (
    .ADR0(N31),
    .ADR1(\pattern<26> [0]),
    .ADR2(\pattern<26> [2]),
    .ADR3(\pattern<26> [1]),
    .O(\count<26> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ))
  \cell_generation[31].i_cell/count_out<1>1  (
    .ADR0(\count<26> [1]),
    .ADR1(N12),
    .ADR2(N01),
    .ADR3(N17),
    .O(num_patterns_1_OBUF_362)
  );
  X_LUT4 #(
    .INIT ( 16'h88F7 ))
  \cell_generation[27].i_cell/pattern_cell<2>_SW1  (
    .ADR0(din_24_IBUF_340),
    .ADR1(N23),
    .ADR2(din_26_IBUF_342),
    .ADR3(\pattern<26> [0]),
    .O(N381)
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \cell_generation[27].i_cell/pattern_cell<2>  (
    .ADR0(\pattern<26> [2]),
    .ADR1(N381),
    .ADR2(din_27_IBUF_343),
    .O(\pattern<28> [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF9F5 ))
  \cell_generation[29].i_cell/count_out_cmp_eq0000110  (
    .ADR0(\pattern<26> [0]),
    .ADR1(din_24_IBUF_340),
    .ADR2(\pattern<26> [2]),
    .ADR3(N23),
    .O(N38)
  );
  X_LUT4 #(
    .INIT ( 16'hF9F5 ))
  \cell_generation[21].i_cell/count_out_cmp_eq000011  (
    .ADR0(\pattern<18> [0]),
    .ADR1(din_16_IBUF_331),
    .ADR2(\pattern<18> [2]),
    .ADR3(N22),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'h159F ))
  \cell_generation[7].i_cell/count_out<1>83_SW0  (
    .ADR0(\pattern<6> [1]),
    .ADR1(\pattern<6> [0]),
    .ADR2(din_7_IBUF_353),
    .ADR3(din_6_IBUF_352),
    .O(N383)
  );
  X_LUT4 #(
    .INIT ( 16'hAA9A ))
  \cell_generation[7].i_cell/count_out<1>83  (
    .ADR0(\count<6> [1]),
    .ADR1(\pattern<6> [2]),
    .ADR2(\count<6> [0]),
    .ADR3(N383),
    .O(\count<8> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h4824 ))
  \cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1>1  (
    .ADR0(\count<18> [0]),
    .ADR1(\count<18> [1]),
    .ADR2(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N81),
    .O(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> )
  );
  X_LUT4 #(
    .INIT ( 16'h88A9 ))
  \cell_generation[21].i_cell/count_out<2>224_SW0  (
    .ADR0(\count<20> [2]),
    .ADR1(N5),
    .ADR2(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR3(N132),
    .O(N387)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[21].i_cell/count_out<2>224  (
    .ADR0(\cell_generation[21].i_cell/count_out<2>205_186 ),
    .ADR1(N387),
    .ADR2(\cell_generation[21].i_cell/count_out<2>123_184 ),
    .O(\count<22> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h7263 ))
  \cell_generation[8].i_cell/pattern_cell<1>36_SW0  (
    .ADR0(\pattern<6> [2]),
    .ADR1(din_6_IBUF_352),
    .ADR2(\pattern<6> [1]),
    .ADR3(\pattern<6> [0]),
    .O(N349)
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \cell_generation[9].i_cell/count_out<2>132_SW0  (
    .ADR0(\count<6> [0]),
    .ADR1(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR2(N69),
    .O(N389)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[9].i_cell/count_out<2>132  (
    .ADR0(din_6_IBUF_352),
    .ADR1(din_8_IBUF_354),
    .ADR2(\cell_generation[9].i_cell/count_out<2>119_234 ),
    .ADR3(N389),
    .O(\cell_generation[9].i_cell/count_out<2>132_235 )
  );
  X_LUT4 #(
    .INIT ( 16'h6900 ))
  \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>132  (
    .ADR0(N5),
    .ADR1(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR2(N391),
    .ADR3(\count<22> [2]),
    .O(\cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>132_195 )
  );
  X_LUT4 #(
    .INIT ( 16'h2604 ))
  \cell_generation[29].i_cell/count_out<0>_SW0  (
    .ADR0(\pattern<28> [1]),
    .ADR1(\pattern<28> [2]),
    .ADR2(\pattern<28> [0]),
    .ADR3(din_28_IBUF_344),
    .O(N395)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \cell_generation[29].i_cell/count_out<0>  (
    .ADR0(\cell_generation[29].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<26> [0]),
    .ADR3(N395),
    .O(\count<30> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h90D0 ))
  \cell_generation[20].i_cell/count_out<4>89_SW1  (
    .ADR0(N1041),
    .ADR1(\count<16> [2]),
    .ADR2(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR3(\count<16> [3]),
    .O(N397)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \cell_generation[20].i_cell/count_out<4>89  (
    .ADR0(N22),
    .ADR1(N397),
    .ADR2(din_16_IBUF_331),
    .ADR3(din_18_IBUF_333),
    .O(\cell_generation[20].i_cell/count_out<4>89_182 )
  );
  X_LUT4 #(
    .INIT ( 16'hEC4C ))
  \cell_generation[25].i_cell/count_out<1>83_SW0  (
    .ADR0(din_23_IBUF_339),
    .ADR1(\count<24>[1] ),
    .ADR2(din_25_IBUF_341),
    .ADR3(N399),
    .O(N305)
  );
  X_LUT4 #(
    .INIT ( 16'h15FF ))
  \cell_generation[15].i_cell/count_out<2>_SW1  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(\pattern<15> [1]),
    .ADR2(din_15_IBUF_330),
    .ADR3(\count<14> [1]),
    .O(N401)
  );
  X_LUT4 #(
    .INIT ( 16'h6556 ))
  \cell_generation[15].i_cell/count_out<2>  (
    .ADR0(N2),
    .ADR1(N401),
    .ADR2(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N24),
    .O(\count<16> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \cell_generation[20].i_cell/count_out<4>231  (
    .ADR0(N22),
    .ADR1(din_18_IBUF_333),
    .ADR2(din_16_IBUF_331),
    .ADR3(\count<18> [0]),
    .O(N176)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \cell_generation[27].i_cell/count_out<3>21  (
    .ADR0(N23),
    .ADR1(din_26_IBUF_342),
    .ADR2(din_24_IBUF_340),
    .ADR3(\count<26> [0]),
    .O(N60)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \cell_generation[23].i_cell/count_out<0>2  (
    .ADR0(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<20> [0]),
    .ADR2(N5),
    .ADR3(N43),
    .O(\count<24>[0] )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \cell_generation[19].i_cell/count_out<2>2  (
    .ADR0(\count<16> [2]),
    .ADR1(N1041),
    .ADR2(N13),
    .O(\count<20> [2])
  );
  X_LUT4 #(
    .INIT ( 16'h10FF ))
  \cell_generation[20].i_cell/count_out<4>2  (
    .ADR0(N375),
    .ADR1(\pattern<18> [2]),
    .ADR2(din_19_IBUF_334),
    .ADR3(din_20_IBUF_336),
    .O(\cell_generation[20].i_cell/count_out<4>2_177 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \cell_generation[27].i_cell/count_out<4>31  (
    .ADR0(\count<26> [2]),
    .ADR1(\count<26> [1]),
    .ADR2(\cell_generation[25].i_cell/count_out<3>49_206 ),
    .ADR3(N367),
    .O(N170)
  );
  X_LUT4 #(
    .INIT ( 16'hF8FF ))
  \cell_generation[25].i_cell/count_out<3>11  (
    .ADR0(N23),
    .ADR1(din_24_IBUF_340),
    .ADR2(\pattern<26> [0]),
    .ADR3(\pattern<26> [2]),
    .O(N98)
  );
  X_LUT4 #(
    .INIT ( 16'hAA69 ))
  \cell_generation[9].i_cell/count_out<1>1  (
    .ADR0(\count<8> [1]),
    .ADR1(N20),
    .ADR2(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N185),
    .O(\count<10> [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF690 ))
  \cell_generation[27].i_cell/count_out<4>68  (
    .ADR0(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR1(\count<26> [0]),
    .ADR2(\count<27> [4]),
    .ADR3(N405),
    .O(\count<28> [4])
  );
  X_LUT4 #(
    .INIT ( 16'h51FF ))
  \cell_generation[27].i_cell/count_out<1>1  (
    .ADR0(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR1(din_27_IBUF_343),
    .ADR2(N38),
    .ADR3(\count<26> [0]),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'h4CCC ))
  \cell_generation[20].i_cell/count_out<4>521  (
    .ADR0(N22),
    .ADR1(\count<18> [0]),
    .ADR2(din_18_IBUF_333),
    .ADR3(din_16_IBUF_331),
    .O(N177)
  );
  X_LUT4 #(
    .INIT ( 16'hAA9A ))
  \cell_generation[23].i_cell/Madd_count_out_addsub0000_cy<3>132_SW1  (
    .ADR0(\count<20> [0]),
    .ADR1(\pattern<23> [1]),
    .ADR2(\pattern<23> [2]),
    .ADR3(\pattern<23> [0]),
    .O(N391)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \cell_generation[23].i_cell/count_out<1>21_SW0  (
    .ADR0(\pattern<23> [2]),
    .ADR1(\pattern<23> [0]),
    .ADR2(\pattern<23> [1]),
    .ADR3(\count<22> [1]),
    .O(N4111)
  );
  X_LUT4 #(
    .INIT ( 16'h1441 ))
  \cell_generation[23].i_cell/count_out<1>21  (
    .ADR0(N4111),
    .ADR1(\cell_generation[21].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<20> [0]),
    .ADR3(N5),
    .O(\cell_generation[23].i_cell/count_out<1>21_199 )
  );
  X_LUT3 #(
    .INIT ( 8'h54 ))
  \cell_generation[27].i_cell/count_out<4>68_SW0_SW0  (
    .ADR0(N99),
    .ADR1(N367),
    .ADR2(\cell_generation[25].i_cell/count_out<3>49_206 ),
    .O(N413)
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \cell_generation[27].i_cell/count_out<4>68_SW0  (
    .ADR0(\count<27> [4]),
    .ADR1(\count<26> [1]),
    .ADR2(\count<26> [2]),
    .ADR3(N413),
    .O(N405)
  );
  X_MUX2   \cell_generation[19].i_cell/count_out<2>179  (
    .IA(N415),
    .IB(N416),
    .SEL(N411),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'hAFA2 ))
  \cell_generation[19].i_cell/count_out<2>179_F  (
    .ADR0(\cell_generation[19].i_cell/count_out<2>154_171 ),
    .ADR1(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR3(N176),
    .O(N415)
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \cell_generation[19].i_cell/count_out<2>179_G  (
    .ADR0(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR1(\cell_generation[18].i_cell/count_out_cmp_eq0000 ),
    .O(N416)
  );
  X_MUX2   \cell_generation[17].i_cell/count_out<4>102  (
    .IA(N417),
    .IB(N418),
    .SEL(\count<17> [4]),
    .O(\count<18> [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0600 ))
  \cell_generation[17].i_cell/count_out<4>102_F  (
    .ADR0(\cell_generation[16].i_cell/count_out_cmp_eq0000_161 ),
    .ADR1(\count<16> [0]),
    .ADR2(N95),
    .ADR3(N166),
    .O(N417)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \cell_generation[17].i_cell/count_out<4>102_G  (
    .ADR0(\pattern<18> [0]),
    .ADR1(\count<16> [3]),
    .ADR2(\cell_generation[17].i_cell/count_out<4>26_162 ),
    .O(N418)
  );
  X_MUX2   \cell_generation[26].i_cell/count_out_cmp_eq00001  (
    .IA(N419),
    .IB(N420),
    .SEL(din_25_IBUF_341),
    .O(N23)
  );
  X_LUT4 #(
    .INIT ( 16'hFFB9 ))
  \cell_generation[26].i_cell/count_out_cmp_eq00001_F  (
    .ADR0(\pattern<23> [1]),
    .ADR1(\pattern<23> [0]),
    .ADR2(din_23_IBUF_339),
    .ADR3(\pattern<23> [2]),
    .O(N419)
  );
  X_LUT4 #(
    .INIT ( 16'h7263 ))
  \cell_generation[26].i_cell/count_out_cmp_eq00001_G  (
    .ADR0(\pattern<23> [2]),
    .ADR1(din_23_IBUF_339),
    .ADR2(\pattern<23> [1]),
    .ADR3(\pattern<23> [0]),
    .O(N420)
  );
  X_MUX2   \cell_generation[18].i_cell/count_out_cmp_eq00001  (
    .IA(N421),
    .IB(N422),
    .SEL(din_17_IBUF_332),
    .O(N22)
  );
  X_LUT4 #(
    .INIT ( 16'hFFB9 ))
  \cell_generation[18].i_cell/count_out_cmp_eq00001_F  (
    .ADR0(\pattern<15> [1]),
    .ADR1(\pattern<15> [0]),
    .ADR2(din_15_IBUF_330),
    .ADR3(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .O(N421)
  );
  X_LUT4 #(
    .INIT ( 16'h7263 ))
  \cell_generation[18].i_cell/count_out_cmp_eq00001_G  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(din_15_IBUF_330),
    .ADR2(\pattern<15> [1]),
    .ADR3(\pattern<15> [0]),
    .O(N422)
  );
  X_MUX2   \cell_generation[8].i_cell/pattern_cell<0>4  (
    .IA(N423),
    .IB(N424),
    .SEL(din_6_IBUF_352),
    .O(N731)
  );
  X_LUT4 #(
    .INIT ( 16'h06FF ))
  \cell_generation[8].i_cell/pattern_cell<0>4_F  (
    .ADR0(\pattern<6> [1]),
    .ADR1(\pattern<6> [0]),
    .ADR2(\pattern<6> [2]),
    .ADR3(din_7_IBUF_353),
    .O(N423)
  );
  X_LUT4 #(
    .INIT ( 16'h0320 ))
  \cell_generation[8].i_cell/pattern_cell<0>4_G  (
    .ADR0(\pattern<6> [0]),
    .ADR1(\pattern<6> [2]),
    .ADR2(din_7_IBUF_353),
    .ADR3(\pattern<6> [1]),
    .O(N424)
  );
  X_MUX2   \cell_generation[22].i_cell/pattern_cell<0>4  (
    .IA(N425),
    .IB(N426),
    .SEL(din_20_IBUF_336),
    .O(N721)
  );
  X_LUT4 #(
    .INIT ( 16'h06FF ))
  \cell_generation[22].i_cell/pattern_cell<0>4_F  (
    .ADR0(\pattern<20> [1]),
    .ADR1(\pattern<20> [0]),
    .ADR2(\pattern<20> [2]),
    .ADR3(din_21_IBUF_337),
    .O(N425)
  );
  X_LUT4 #(
    .INIT ( 16'h0320 ))
  \cell_generation[22].i_cell/pattern_cell<0>4_G  (
    .ADR0(\pattern<20> [0]),
    .ADR1(\pattern<20> [2]),
    .ADR2(din_21_IBUF_337),
    .ADR3(\pattern<20> [1]),
    .O(N426)
  );
  X_MUX2   \cell_generation[14].i_cell/pattern_cell<0>4  (
    .IA(N427),
    .IB(N428),
    .SEL(din_12_IBUF_327),
    .O(N711)
  );
  X_LUT4 #(
    .INIT ( 16'h06FF ))
  \cell_generation[14].i_cell/pattern_cell<0>4_F  (
    .ADR0(\pattern<12> [1]),
    .ADR1(\pattern<12> [0]),
    .ADR2(\pattern<12> [2]),
    .ADR3(din_13_IBUF_328),
    .O(N427)
  );
  X_LUT4 #(
    .INIT ( 16'h0320 ))
  \cell_generation[14].i_cell/pattern_cell<0>4_G  (
    .ADR0(\pattern<12> [0]),
    .ADR1(\pattern<12> [2]),
    .ADR2(din_13_IBUF_328),
    .ADR3(\pattern<12> [1]),
    .O(N428)
  );
  X_MUX2   \cell_generation[11].i_cell/pattern_cell<0>103  (
    .IA(N429),
    .IB(N430),
    .SEL(din_11_IBUF_326),
    .O(\pattern<12> [0])
  );
  X_LUT3 #(
    .INIT ( 8'hC8 ))
  \cell_generation[11].i_cell/pattern_cell<0>103_F  (
    .ADR0(\pattern<9> [2]),
    .ADR1(din_10_IBUF_325),
    .ADR2(N311),
    .O(N429)
  );
  X_LUT4 #(
    .INIT ( 16'h222F ))
  \cell_generation[11].i_cell/pattern_cell<0>103_G  (
    .ADR0(\cell_generation[11].i_cell/pattern_cell<0>28_154 ),
    .ADR1(\pattern<9> [2]),
    .ADR2(din_9_IBUF_355),
    .ADR3(din_10_IBUF_325),
    .O(N430)
  );
  X_MUX2   \cell_generation[20].i_cell/count_out<4>244_SW0  (
    .IA(N431),
    .IB(N432),
    .SEL(\pattern<20> [1]),
    .O(N343)
  );
  X_LUT3 #(
    .INIT ( 8'hAE ))
  \cell_generation[20].i_cell/count_out<4>244_SW0_F  (
    .ADR0(\cell_generation[20].i_cell/count_out<4>66_181 ),
    .ADR1(\cell_generation[20].i_cell/count_out<4>89_182 ),
    .ADR2(\count<18> [0]),
    .O(N431)
  );
  X_LUT4 #(
    .INIT ( 16'hFFBF ))
  \cell_generation[20].i_cell/count_out<4>244_SW0_G  (
    .ADR0(N15),
    .ADR1(\cell_generation[20].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR2(\count<20> [2]),
    .ADR3(\cell_generation[20].i_cell/count_out<4>2_177 ),
    .O(N432)
  );
  X_MUX2   \cell_generation[23].i_cell/count_out<3>1  (
    .IA(N433),
    .IB(N434),
    .SEL(\pattern<23> [2]),
    .O(N111)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \cell_generation[23].i_cell/count_out<3>1_F  (
    .ADR0(\count<22> [1]),
    .ADR1(\pattern<23> [1]),
    .ADR2(din_23_IBUF_339),
    .ADR3(\count<22> [0]),
    .O(N433)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \cell_generation[23].i_cell/count_out<3>1_G  (
    .ADR0(\pattern<23> [0]),
    .ADR1(\cell_generation[22].i_cell/Madd_count_out_addsub0000_cy<1> ),
    .ADR2(\pattern<23> [1]),
    .O(N434)
  );
  X_LUT4 #(
    .INIT ( 16'h1050 ))
  \cell_generation[7].i_cell/count_out_cmp_eq0000221  (
    .ADR0(din_0_IBUF_324),
    .ADR1(din_1_IBUF_335),
    .ADR2(din_2_IBUF_346),
    .ADR3(din_3_IBUF_349),
    .O(\cell_generation[7].i_cell/count_out_cmp_eq0000221_231 )
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \cell_generation[7].i_cell/count_out_cmp_eq0000222  (
    .ADR0(din_3_IBUF_349),
    .ADR1(din_0_IBUF_324),
    .ADR2(din_2_IBUF_346),
    .O(\cell_generation[7].i_cell/count_out_cmp_eq0000222_232 )
  );
  X_MUX2   \cell_generation[7].i_cell/count_out_cmp_eq000022_f5  (
    .IA(\cell_generation[7].i_cell/count_out_cmp_eq0000222_232 ),
    .IB(\cell_generation[7].i_cell/count_out_cmp_eq0000221_231 ),
    .SEL(din_4_IBUF_350),
    .O(\cell_generation[7].i_cell/count_out_cmp_eq000022 )
  );
  X_LUT4 #(
    .INIT ( 16'h5040 ))
  \cell_generation[5].i_cell/count_out<0>331  (
    .ADR0(din_3_IBUF_349),
    .ADR1(din_0_IBUF_324),
    .ADR2(din_2_IBUF_346),
    .ADR3(din_4_IBUF_350),
    .O(\cell_generation[5].i_cell/count_out<0>331_225 )
  );
  X_LUT3 #(
    .INIT ( 8'hC8 ))
  \cell_generation[5].i_cell/count_out<0>332  (
    .ADR0(din_0_IBUF_324),
    .ADR1(din_2_IBUF_346),
    .ADR2(din_4_IBUF_350),
    .O(\cell_generation[5].i_cell/count_out<0>332_226 )
  );
  X_MUX2   \cell_generation[5].i_cell/count_out<0>33_f5  (
    .IA(\cell_generation[5].i_cell/count_out<0>332_226 ),
    .IB(\cell_generation[5].i_cell/count_out<0>331_225 ),
    .SEL(din_5_IBUF_351),
    .O(\cell_generation[5].i_cell/count_out<0>33 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF4C ))
  \cell_generation[5].i_cell/count_out<0>371  (
    .ADR0(din_0_IBUF_324),
    .ADR1(din_3_IBUF_349),
    .ADR2(din_2_IBUF_346),
    .ADR3(\cell_generation[5].i_cell/count_out<0>33 ),
    .O(\cell_generation[5].i_cell/count_out<0>37 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \cell_generation[5].i_cell/count_out<0>372  (
    .ADR0(din_3_IBUF_349),
    .ADR1(din_1_IBUF_335),
    .ADR2(\cell_generation[5].i_cell/count_out<0>33 ),
    .O(\cell_generation[5].i_cell/count_out<0>371_228 )
  );
  X_MUX2   \cell_generation[5].i_cell/count_out<0>37_f5  (
    .IA(\cell_generation[5].i_cell/count_out<0>371_228 ),
    .IB(\cell_generation[5].i_cell/count_out<0>37 ),
    .SEL(din_5_IBUF_351),
    .O(\count<6> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h2600 ))
  \cell_generation[13].i_cell/count_out_cmp_eq00001  (
    .ADR0(\pattern<12> [0]),
    .ADR1(\pattern<12> [1]),
    .ADR2(din_12_IBUF_327),
    .ADR3(din_13_IBUF_328),
    .O(\cell_generation[13].i_cell/count_out_cmp_eq00001_156 )
  );
  X_MUX2   \cell_generation[13].i_cell/count_out_cmp_eq0000_f5  (
    .IA(\cell_generation[13].i_cell/count_out_cmp_eq00001_156 ),
    .IB(N0),
    .SEL(\pattern<12> [2]),
    .O(\cell_generation[13].i_cell/count_out_cmp_eq0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \cell_generation[31].i_cell/count_out_cmp_eq0000311  (
    .ADR0(din_28_IBUF_344),
    .ADR1(din_30_IBUF_347),
    .O(\cell_generation[31].i_cell/count_out_cmp_eq0000311_222 )
  );
  X_LUT4 #(
    .INIT ( 16'h0103 ))
  \cell_generation[31].i_cell/count_out_cmp_eq0000312  (
    .ADR0(din_28_IBUF_344),
    .ADR1(\pattern<28> [0]),
    .ADR2(\pattern<28> [1]),
    .ADR3(din_30_IBUF_347),
    .O(\cell_generation[31].i_cell/count_out_cmp_eq0000312_223 )
  );
  X_MUX2   \cell_generation[31].i_cell/count_out_cmp_eq000031_f5  (
    .IA(\cell_generation[31].i_cell/count_out_cmp_eq0000312_223 ),
    .IB(\cell_generation[31].i_cell/count_out_cmp_eq0000311_222 ),
    .SEL(\pattern<28> [2]),
    .O(\cell_generation[31].i_cell/count_out_cmp_eq000031 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA48 ))
  \cell_generation[20].i_cell/count_out<4>2031  (
    .ADR0(\count<18> [3]),
    .ADR1(N1611),
    .ADR2(\cell_generation[18].i_cell/Madd_count_out_addsub0000_cy<2> ),
    .ADR3(\cell_generation[20].i_cell/count_out<4>189_176 ),
    .O(\cell_generation[20].i_cell/count_out<4>2031_179 )
  );
  X_MUX2   \cell_generation[20].i_cell/count_out<4>203_f5  (
    .IA(\cell_generation[20].i_cell/count_out<4>2031_179 ),
    .IB(N0),
    .SEL(N411),
    .O(\cell_generation[20].i_cell/count_out<4>203 )
  );
  X_LUT4 #(
    .INIT ( 16'h5595 ))
  \cell_generation[19].i_cell/pattern_cell<0>1  (
    .ADR0(din_19_IBUF_334),
    .ADR1(N22),
    .ADR2(din_16_IBUF_331),
    .ADR3(\pattern<18> [2]),
    .O(\cell_generation[19].i_cell/pattern_cell<0> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \cell_generation[19].i_cell/pattern_cell<0>2  (
    .ADR0(din_19_IBUF_334),
    .ADR1(N37),
    .O(\cell_generation[19].i_cell/pattern_cell<0>1_173 )
  );
  X_MUX2   \cell_generation[19].i_cell/pattern_cell<0>_f5  (
    .IA(\cell_generation[19].i_cell/pattern_cell<0>1_173 ),
    .IB(\cell_generation[19].i_cell/pattern_cell<0> ),
    .SEL(din_18_IBUF_333),
    .O(\pattern<20> [0])
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \cell_generation[25].i_cell/pattern_cell<0>471  (
    .ADR0(din_24_IBUF_340),
    .ADR1(din_23_IBUF_339),
    .O(\cell_generation[25].i_cell/pattern_cell<0>471_208 )
  );
  X_LUT4 #(
    .INIT ( 16'h3D71 ))
  \cell_generation[25].i_cell/pattern_cell<0>472  (
    .ADR0(din_23_IBUF_339),
    .ADR1(din_24_IBUF_340),
    .ADR2(\pattern<23> [1]),
    .ADR3(\pattern<23> [0]),
    .O(\cell_generation[25].i_cell/pattern_cell<0>472_209 )
  );
  X_MUX2   \cell_generation[25].i_cell/pattern_cell<0>47_f5  (
    .IA(\cell_generation[25].i_cell/pattern_cell<0>472_209 ),
    .IB(\cell_generation[25].i_cell/pattern_cell<0>471_208 ),
    .SEL(\pattern<23> [2]),
    .O(\cell_generation[25].i_cell/pattern_cell<0>47 )
  );
  X_LUT4 #(
    .INIT ( 16'h015F ))
  \cell_generation[17].i_cell/pattern_cell<0>471  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(\pattern<15> [0]),
    .ADR2(din_15_IBUF_330),
    .ADR3(din_16_IBUF_331),
    .O(\cell_generation[17].i_cell/pattern_cell<0>471_164 )
  );
  X_LUT4 #(
    .INIT ( 16'h083B ))
  \cell_generation[17].i_cell/pattern_cell<0>472  (
    .ADR0(\pattern<15> [0]),
    .ADR1(din_16_IBUF_331),
    .ADR2(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR3(din_15_IBUF_330),
    .O(\cell_generation[17].i_cell/pattern_cell<0>472_165 )
  );
  X_MUX2   \cell_generation[17].i_cell/pattern_cell<0>47_f5  (
    .IA(\cell_generation[17].i_cell/pattern_cell<0>472_165 ),
    .IB(\cell_generation[17].i_cell/pattern_cell<0>471_164 ),
    .SEL(\pattern<15> [1]),
    .O(\cell_generation[17].i_cell/pattern_cell<0>47 )
  );
  X_LUT4 #(
    .INIT ( 16'h9C63 ))
  \cell_generation[15].i_cell/count_out<0>21  (
    .ADR0(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR1(N24),
    .ADR2(din_15_IBUF_330),
    .ADR3(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .O(\cell_generation[15].i_cell/count_out<0>2 )
  );
  X_LUT4 #(
    .INIT ( 16'h9C63 ))
  \cell_generation[15].i_cell/count_out<0>22  (
    .ADR0(\pattern<15> [0]),
    .ADR1(\cell_generation[13].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\cell_generation[14].i_cell/count_out_cmp_eq0000_157 ),
    .ADR3(N24),
    .O(\cell_generation[15].i_cell/count_out<0>21_160 )
  );
  X_MUX2   \cell_generation[15].i_cell/count_out<0>2_f5  (
    .IA(\cell_generation[15].i_cell/count_out<0>21_160 ),
    .IB(\cell_generation[15].i_cell/count_out<0>2 ),
    .SEL(\pattern<15> [1]),
    .O(\count<16> [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9C63 ))
  \cell_generation[11].i_cell/count_out<1>11  (
    .ADR0(N185),
    .ADR1(\count<8> [1]),
    .ADR2(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N10),
    .O(\cell_generation[11].i_cell/count_out<1>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h9996 ))
  \cell_generation[11].i_cell/count_out<1>12  (
    .ADR0(N10),
    .ADR1(\count<8> [1]),
    .ADR2(\cell_generation[7].i_cell/count_out_cmp_eq0000 ),
    .ADR3(N185),
    .O(\cell_generation[11].i_cell/count_out<1>11_153 )
  );
  X_MUX2   \cell_generation[11].i_cell/count_out<1>1_f5  (
    .IA(\cell_generation[11].i_cell/count_out<1>11_153 ),
    .IB(\cell_generation[11].i_cell/count_out<1>1 ),
    .SEL(N20),
    .O(\count<12> [1])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \cell_generation[27].i_cell/count_out<2>1  (
    .ADR0(\count<26> [2]),
    .ADR1(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .ADR2(\count<26> [0]),
    .ADR3(\count<26> [1]),
    .O(\cell_generation[27].i_cell/count_out<2> )
  );
  X_LUT4 #(
    .INIT ( 16'h666A ))
  \cell_generation[27].i_cell/count_out<2>2  (
    .ADR0(\count<26> [2]),
    .ADR1(\count<26> [1]),
    .ADR2(\count<26> [0]),
    .ADR3(\cell_generation[26].i_cell/count_out_cmp_eq0000 ),
    .O(\cell_generation[27].i_cell/count_out<2>1_213 )
  );
  X_MUX2   \cell_generation[27].i_cell/count_out<2>_f5  (
    .IA(\cell_generation[27].i_cell/count_out<2>1_213 ),
    .IB(\cell_generation[27].i_cell/count_out<2> ),
    .SEL(N99),
    .O(\count<28> [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE1C3 ))
  \cell_generation[25].i_cell/count_out<1>83_SW0_SW02  (
    .ADR0(din_24_IBUF_340),
    .ADR1(\pattern<23> [1]),
    .ADR2(\count<24>[1] ),
    .ADR3(\pattern<23> [0]),
    .O(\cell_generation[25].i_cell/count_out<1>83_SW0_SW01 )
  );
  X_MUX2   \cell_generation[25].i_cell/count_out<1>83_SW0_SW0_f5  (
    .IA(\cell_generation[25].i_cell/count_out<1>83_SW0_SW01 ),
    .IB(\cell_generation[25].i_cell/count_out<1>83_SW0_SW0 ),
    .SEL(\pattern<23> [2]),
    .O(N399)
  );
  X_INV   \cell_generation[25].i_cell/count_out<1>83_SW0_SW01_INV_0  (
    .I(\count<24>[1] ),
    .O(\cell_generation[25].i_cell/count_out<1>83_SW0_SW0 )
  );
  X_IPAD   \din<0>  (
    .PAD(din[0])
  );
  X_IPAD   \din<10>  (
    .PAD(din[10])
  );
  X_IPAD   \din<11>  (
    .PAD(din[11])
  );
  X_IPAD   \din<12>  (
    .PAD(din[12])
  );
  X_IPAD   \din<13>  (
    .PAD(din[13])
  );
  X_IPAD   \din<14>  (
    .PAD(din[14])
  );
  X_IPAD   \din<15>  (
    .PAD(din[15])
  );
  X_IPAD   \din<16>  (
    .PAD(din[16])
  );
  X_IPAD   \din<17>  (
    .PAD(din[17])
  );
  X_IPAD   \din<18>  (
    .PAD(din[18])
  );
  X_IPAD   \din<19>  (
    .PAD(din[19])
  );
  X_IPAD   \din<1>  (
    .PAD(din[1])
  );
  X_IPAD   \din<20>  (
    .PAD(din[20])
  );
  X_IPAD   \din<21>  (
    .PAD(din[21])
  );
  X_IPAD   \din<22>  (
    .PAD(din[22])
  );
  X_IPAD   \din<23>  (
    .PAD(din[23])
  );
  X_IPAD   \din<24>  (
    .PAD(din[24])
  );
  X_IPAD   \din<25>  (
    .PAD(din[25])
  );
  X_IPAD   \din<26>  (
    .PAD(din[26])
  );
  X_IPAD   \din<27>  (
    .PAD(din[27])
  );
  X_IPAD   \din<28>  (
    .PAD(din[28])
  );
  X_IPAD   \din<29>  (
    .PAD(din[29])
  );
  X_IPAD   \din<2>  (
    .PAD(din[2])
  );
  X_IPAD   \din<30>  (
    .PAD(din[30])
  );
  X_IPAD   \din<31>  (
    .PAD(din[31])
  );
  X_IPAD   \din<3>  (
    .PAD(din[3])
  );
  X_IPAD   \din<4>  (
    .PAD(din[4])
  );
  X_IPAD   \din<5>  (
    .PAD(din[5])
  );
  X_IPAD   \din<6>  (
    .PAD(din[6])
  );
  X_IPAD   \din<7>  (
    .PAD(din[7])
  );
  X_IPAD   \din<8>  (
    .PAD(din[8])
  );
  X_IPAD   \din<9>  (
    .PAD(din[9])
  );
  X_OPAD   \num_patterns<0>  (
    .PAD(num_patterns[0])
  );
  X_OPAD   \num_patterns<1>  (
    .PAD(num_patterns[1])
  );
  X_OPAD   \num_patterns<2>  (
    .PAD(num_patterns[2])
  );
  X_OPAD   \num_patterns<3>  (
    .PAD(num_patterns[3])
  );
  X_OPAD   \num_patterns<4>  (
    .PAD(num_patterns[4])
  );
  X_OBUF   num_patterns_0_OBUF (
    .I(num_patterns_0_OBUF_361),
    .O(num_patterns[0])
  );
  X_OBUF   num_patterns_1_OBUF (
    .I(num_patterns_1_OBUF_362),
    .O(num_patterns[1])
  );
  X_OBUF   num_patterns_2_OBUF (
    .I(num_patterns_2_OBUF_363),
    .O(num_patterns[2])
  );
  X_OBUF   num_patterns_3_OBUF (
    .I(num_patterns_3_OBUF_364),
    .O(num_patterns[3])
  );
  X_OBUF   num_patterns_4_OBUF (
    .I(num_patterns_4_OBUF_365),
    .O(num_patterns[4])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

