////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pong_synthesis.v
// /___/   /\     Timestamp: Tue Aug 04 16:10:46 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim pong.ngc pong_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: pong.ngc
// Output file	: B:\Workspace\xilinx\hdmi_tester\netgen\synthesis\pong_synthesis.v
// # of Modules	: 1
// Design Name	: pong
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

module pong (
  clk, vga_v_sync, vga_h_sync, vga_B, vga_G, vga_R, quadA, quadB
);
  input clk;
  output vga_v_sync;
  output vga_h_sync;
  output vga_B;
  output vga_G;
  output vga_R;
  input quadA;
  input quadB;
  wire B_inv;
  wire BouncingObject100_1;
  wire BouncingObject12_2;
  wire BouncingObject33_3;
  wire BouncingObject38_4;
  wire BouncingObject63_5;
  wire BouncingObject7_6;
  wire BouncingObject77_7;
  wire BouncingObject89_8;
  wire BouncingObject92_9;
  wire CollisionX1_10;
  wire \CollisionX1_addsub0000<6>_bdd0 ;
  wire \CollisionX1_addsub0000<6>_bdd2 ;
  wire CollisionX1_and0000;
  wire CollisionX2_14;
  wire CollisionX2_and0000;
  wire CollisionY1_16;
  wire CollisionY1_and0000;
  wire CollisionY2_18;
  wire CollisionY2_and0000;
  wire Madd_add0000_index0000_bdd2;
  wire Madd_add0000_index0000_bdd4;
  wire \Madd_paddle_addsub0003_cy<7>_bdd0 ;
  wire Madd_paddle_index0000_bdd0;
  wire Madd_paddle_index0001_mand1;
  wire Mshreg_quadAr_1_183;
  wire Mshreg_quadBr_1_184;
  wire N0;
  wire N1;
  wire N10;
  wire N16;
  wire N18;
  wire N19;
  wire N2;
  wire N24;
  wire N25;
  wire N30;
  wire N34;
  wire N36;
  wire N38;
  wire N39;
  wire N4;
  wire N44;
  wire N45;
  wire N47;
  wire N49;
  wire N50;
  wire N52;
  wire N53;
  wire N55;
  wire N57;
  wire N58;
  wire N6;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N72;
  wire N74;
  wire N75;
  wire N76;
  wire N77;
  wire N78;
  wire N79;
  wire PaddlePosition_not0001;
  wire PaddlePosition_not0001312_234;
  wire PaddlePosition_not0001317_235;
  wire PaddlePosition_not0001332_236;
  wire PaddlePosition_not0001711_237;
  wire PaddlePosition_not000174_238;
  wire PaddlePosition_not000176_239;
  wire PaddlePosition_not0001_bdd0;
  wire PaddlePosition_not0001_bdd1;
  wire PaddlePosition_xor0000_inv;
  wire ResetCollision_243;
  wire ResetCollision_and0000_norst;
  wire ResetCollision_cmp_eq0000_inv;
  wire ResetCollision_cmp_eq0000_inv12_246;
  wire ResetCollision_cmp_eq0000_inv31_247;
  wire \Result<0>1 ;
  wire \Result<0>2 ;
  wire \Result<1>1 ;
  wire \Result<1>2 ;
  wire \Result<2>1 ;
  wire \Result<2>2 ;
  wire \Result<3>1 ;
  wire \Result<3>2 ;
  wire \Result<4>1 ;
  wire \Result<4>2 ;
  wire \Result<5>1 ;
  wire \Result<5>2 ;
  wire \Result<6>1 ;
  wire \Result<6>2 ;
  wire \Result<7>1 ;
  wire \Result<7>2 ;
  wire \Result<8>1 ;
  wire \Result<8>2 ;
  wire ballX_not0001;
  wire ballY_not0001;
  wire ball_dirX_299;
  wire ball_dirX_not0001;
  wire ball_dirY_301;
  wire ball_dirY_not0001;
  wire ball_inX_303;
  wire ball_inX_mux0000;
  wire ball_inY_307;
  wire ball_inY_mux0000;
  wire clk_BUFGP_310;
  wire paddle_cmp_ge0000;
  wire paddle_cmp_le0000;
  wire quadA_IBUF_320;
  wire quadB_IBUF_324;
  wire \syncgen/CounterXmaxed ;
  wire \syncgen/CounterYmaxed ;
  wire \syncgen/CounterYmaxed12_349 ;
  wire \syncgen/CounterYmaxed4_350 ;
  wire \syncgen/Mcount_CounterX_cy<1>_rt_353 ;
  wire \syncgen/Mcount_CounterX_cy<2>_rt_355 ;
  wire \syncgen/Mcount_CounterX_cy<3>_rt_357 ;
  wire \syncgen/Mcount_CounterX_cy<4>_rt_359 ;
  wire \syncgen/Mcount_CounterX_cy<5>_rt_361 ;
  wire \syncgen/Mcount_CounterX_cy<6>_rt_363 ;
  wire \syncgen/Mcount_CounterX_cy<7>_rt_365 ;
  wire \syncgen/Mcount_CounterX_cy<8>_rt_367 ;
  wire \syncgen/Mcount_CounterX_xor<9>_rt_369 ;
  wire \syncgen/Mcount_CounterY_cy<1>_rt_372 ;
  wire \syncgen/Mcount_CounterY_cy<2>_rt_374 ;
  wire \syncgen/Mcount_CounterY_cy<3>_rt_376 ;
  wire \syncgen/Mcount_CounterY_cy<4>_rt_378 ;
  wire \syncgen/Mcount_CounterY_cy<5>_rt_380 ;
  wire \syncgen/Mcount_CounterY_cy<6>_rt_382 ;
  wire \syncgen/Mcount_CounterY_cy<7>_rt_384 ;
  wire \syncgen/Mcount_CounterY_cy<8>_rt_386 ;
  wire \syncgen/Mcount_CounterY_xor<9>_rt_388 ;
  wire \syncgen/Result<0>1 ;
  wire \syncgen/Result<1>1 ;
  wire \syncgen/Result<2>1 ;
  wire \syncgen/Result<3>1 ;
  wire \syncgen/Result<4>1 ;
  wire \syncgen/Result<5>1 ;
  wire \syncgen/Result<6>1 ;
  wire \syncgen/Result<7>1 ;
  wire \syncgen/Result<8>1 ;
  wire \syncgen/Result<9>1 ;
  wire \syncgen/inDisplayArea_409 ;
  wire \syncgen/inDisplayArea_mux0000103_410 ;
  wire \syncgen/inDisplayArea_mux0000129 ;
  wire \syncgen/inDisplayArea_mux000027_412 ;
  wire \syncgen/inDisplayArea_mux0000310_413 ;
  wire \syncgen/inDisplayArea_mux000034_414 ;
  wire \syncgen/inDisplayArea_mux00004_415 ;
  wire \syncgen/inDisplayArea_mux000042_416 ;
  wire \syncgen/inDisplayArea_mux000065_417 ;
  wire \syncgen/inDisplayArea_mux000074_418 ;
  wire \syncgen/inDisplayArea_mux00008_419 ;
  wire \syncgen/vga_HS_420 ;
  wire \syncgen/vga_HS_cmp_eq00001 ;
  wire \syncgen/vga_HS_cmp_eq000011_422 ;
  wire \syncgen/vga_VS_423 ;
  wire \syncgen/vga_VS_cmp_eq0000 ;
  wire \syncgen/vga_VS_cmp_eq000012_425 ;
  wire \syncgen/vga_VS_cmp_eq000037_426 ;
  wire vga_B_OBUF_428;
  wire vga_R_OBUF_431;
  wire vga_h_sync_OBUF_433;
  wire vga_v_sync_OBUF_435;
  wire [8 : 0] Maccum_ballX_cy;
  wire [9 : 0] Maccum_ballX_lut;
  wire [7 : 0] Maccum_ballY_cy;
  wire [8 : 0] Maccum_ballY_lut;
  wire [7 : 7] Madd_paddle_addsub0003_cy;
  wire [4 : 0] Mcompar_CollisionX1_cmp_eq0000_cy;
  wire [4 : 0] Mcompar_CollisionX1_cmp_eq0000_lut;
  wire [5 : 0] Mcompar_CollisionY1_cmp_eq0000_cy;
  wire [5 : 0] Mcompar_CollisionY1_cmp_eq0000_lut;
  wire [4 : 0] Mcompar_ball_inX_cmp_eq0000_cy;
  wire [4 : 0] Mcompar_ball_inX_cmp_eq0000_lut;
  wire [5 : 0] Mcompar_ball_inX_cmp_eq0001_cy;
  wire [5 : 0] Mcompar_ball_inX_cmp_eq0001_lut;
  wire [5 : 0] Mcompar_ball_inY_cmp_eq0000_cy;
  wire [5 : 0] Mcompar_ball_inY_cmp_eq0000_lut;
  wire [4 : 0] Mcompar_ball_inY_cmp_eq0001_cy;
  wire [4 : 0] Mcompar_ball_inY_cmp_eq0001_lut;
  wire [8 : 0] Mcompar_paddle_cmp_ge0000_cy;
  wire [9 : 0] Mcompar_paddle_cmp_ge0000_lut;
  wire [8 : 0] Mcompar_paddle_cmp_le0000_cy;
  wire [9 : 0] Mcompar_paddle_cmp_le0000_lut;
  wire [7 : 0] Mcount_PaddlePosition_cy;
  wire [8 : 0] Mcount_PaddlePosition_lut;
  wire [8 : 0] PaddlePosition;
  wire [9 : 0] Result;
  wire [9 : 8] add0000_addsub0000;
  wire [9 : 0] ballX;
  wire [8 : 0] ballY;
  wire [9 : 8] ball_inX_addsub0000;
  wire [3 : 3] paddle_addsub0002;
  wire [8 : 4] paddle_addsub0003;
  wire [2 : 1] quadAr;
  wire [2 : 1] quadBr;
  wire [9 : 0] \syncgen/CounterX ;
  wire [9 : 0] \syncgen/CounterY ;
  wire [8 : 0] \syncgen/Mcount_CounterX_cy ;
  wire [0 : 0] \syncgen/Mcount_CounterX_lut ;
  wire [8 : 0] \syncgen/Mcount_CounterY_cy ;
  wire [0 : 0] \syncgen/Mcount_CounterY_lut ;
  wire [9 : 0] \syncgen/Result ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   quadBr_2 (
    .C(clk_BUFGP_310),
    .D(quadBr[1]),
    .Q(quadBr[2])
  );
  FD   quadAr_2 (
    .C(clk_BUFGP_310),
    .D(quadAr[1]),
    .Q(quadAr[2])
  );
  FD   ball_inX (
    .C(clk_BUFGP_310),
    .D(ball_inX_mux0000),
    .Q(ball_inX_303)
  );
  FD   ball_inY (
    .C(clk_BUFGP_310),
    .D(ball_inY_mux0000),
    .Q(ball_inY_307)
  );
  FDR   ResetCollision (
    .C(clk_BUFGP_310),
    .D(ResetCollision_and0000_norst),
    .R(ResetCollision_cmp_eq0000_inv),
    .Q(ResetCollision_243)
  );
  FDRE   CollisionX1 (
    .C(clk_BUFGP_310),
    .CE(CollisionX1_and0000),
    .D(N1),
    .R(ResetCollision_243),
    .Q(CollisionX1_10)
  );
  FDRE   CollisionX2 (
    .C(clk_BUFGP_310),
    .CE(CollisionX2_and0000),
    .D(N1),
    .R(ResetCollision_243),
    .Q(CollisionX2_14)
  );
  FDRE   CollisionY1 (
    .C(clk_BUFGP_310),
    .CE(CollisionY1_and0000),
    .D(N1),
    .R(ResetCollision_243),
    .Q(CollisionY1_16)
  );
  FDRE   CollisionY2 (
    .C(clk_BUFGP_310),
    .CE(CollisionY2_and0000),
    .D(N1),
    .R(ResetCollision_243),
    .Q(CollisionY2_18)
  );
  FD   vga_G_12 (
    .C(clk_BUFGP_310),
    .D(\syncgen/inDisplayArea_409 ),
    .Q(vga_R_OBUF_431)
  );
  FDR   vga_B_13 (
    .C(clk_BUFGP_310),
    .D(\syncgen/inDisplayArea_409 ),
    .R(B_inv),
    .Q(vga_B_OBUF_428)
  );
  FDE   ball_dirX (
    .C(clk_BUFGP_310),
    .CE(ball_dirX_not0001),
    .D(CollisionX2_14),
    .Q(ball_dirX_299)
  );
  FDE   ball_dirY (
    .C(clk_BUFGP_310),
    .CE(ball_dirY_not0001),
    .D(CollisionY2_18),
    .Q(ball_dirY_301)
  );
  FDE   ballX_0 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[0]),
    .Q(ballX[0])
  );
  FDE   ballX_1 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[1]),
    .Q(ballX[1])
  );
  FDE   ballX_2 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[2]),
    .Q(ballX[2])
  );
  FDE   ballX_3 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[3]),
    .Q(ballX[3])
  );
  FDE   ballX_4 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[4]),
    .Q(ballX[4])
  );
  FDE   ballX_5 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[5]),
    .Q(ballX[5])
  );
  FDE   ballX_6 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[6]),
    .Q(ballX[6])
  );
  FDE   ballX_7 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[7]),
    .Q(ballX[7])
  );
  FDE   ballX_8 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[8]),
    .Q(ballX[8])
  );
  FDE   ballX_9 (
    .C(clk_BUFGP_310),
    .CE(ballX_not0001),
    .D(Result[9]),
    .Q(ballX[9])
  );
  FDE   PaddlePosition_0 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<0>1 ),
    .Q(PaddlePosition[0])
  );
  FDE   PaddlePosition_1 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<1>1 ),
    .Q(PaddlePosition[1])
  );
  FDE   PaddlePosition_2 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<2>1 ),
    .Q(PaddlePosition[2])
  );
  FDE   PaddlePosition_3 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<3>1 ),
    .Q(PaddlePosition[3])
  );
  FDE   PaddlePosition_4 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<4>1 ),
    .Q(PaddlePosition[4])
  );
  FDE   PaddlePosition_5 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<5>1 ),
    .Q(PaddlePosition[5])
  );
  FDE   PaddlePosition_6 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<6>1 ),
    .Q(PaddlePosition[6])
  );
  FDE   PaddlePosition_7 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<7>1 ),
    .Q(PaddlePosition[7])
  );
  FDE   PaddlePosition_8 (
    .C(clk_BUFGP_310),
    .CE(PaddlePosition_not0001),
    .D(\Result<8>1 ),
    .Q(PaddlePosition[8])
  );
  FDE   ballY_0 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<0>2 ),
    .Q(ballY[0])
  );
  FDE   ballY_1 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<1>2 ),
    .Q(ballY[1])
  );
  FDE   ballY_2 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<2>2 ),
    .Q(ballY[2])
  );
  FDE   ballY_3 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<3>2 ),
    .Q(ballY[3])
  );
  FDE   ballY_4 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<4>2 ),
    .Q(ballY[4])
  );
  FDE   ballY_5 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<5>2 ),
    .Q(ballY[5])
  );
  FDE   ballY_6 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<6>2 ),
    .Q(ballY[6])
  );
  FDE   ballY_7 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<7>2 ),
    .Q(ballY[7])
  );
  FDE   ballY_8 (
    .C(clk_BUFGP_310),
    .CE(ballY_not0001),
    .D(\Result<8>2 ),
    .Q(ballY[8])
  );
  MUXCY   \Maccum_ballX_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Maccum_ballX_lut[0]),
    .O(Maccum_ballX_cy[0])
  );
  XORCY   \Maccum_ballX_xor<0>  (
    .CI(N0),
    .LI(Maccum_ballX_lut[0]),
    .O(Result[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<1>  (
    .I0(ballX[1]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[1])
  );
  MUXCY   \Maccum_ballX_cy<1>  (
    .CI(Maccum_ballX_cy[0]),
    .DI(ballX[1]),
    .S(Maccum_ballX_lut[1]),
    .O(Maccum_ballX_cy[1])
  );
  XORCY   \Maccum_ballX_xor<1>  (
    .CI(Maccum_ballX_cy[0]),
    .LI(Maccum_ballX_lut[1]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<2>  (
    .I0(ballX[2]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[2])
  );
  MUXCY   \Maccum_ballX_cy<2>  (
    .CI(Maccum_ballX_cy[1]),
    .DI(ballX[2]),
    .S(Maccum_ballX_lut[2]),
    .O(Maccum_ballX_cy[2])
  );
  XORCY   \Maccum_ballX_xor<2>  (
    .CI(Maccum_ballX_cy[1]),
    .LI(Maccum_ballX_lut[2]),
    .O(Result[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<3>  (
    .I0(ballX[3]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[3])
  );
  MUXCY   \Maccum_ballX_cy<3>  (
    .CI(Maccum_ballX_cy[2]),
    .DI(ballX[3]),
    .S(Maccum_ballX_lut[3]),
    .O(Maccum_ballX_cy[3])
  );
  XORCY   \Maccum_ballX_xor<3>  (
    .CI(Maccum_ballX_cy[2]),
    .LI(Maccum_ballX_lut[3]),
    .O(Result[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<4>  (
    .I0(ballX[4]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[4])
  );
  MUXCY   \Maccum_ballX_cy<4>  (
    .CI(Maccum_ballX_cy[3]),
    .DI(ballX[4]),
    .S(Maccum_ballX_lut[4]),
    .O(Maccum_ballX_cy[4])
  );
  XORCY   \Maccum_ballX_xor<4>  (
    .CI(Maccum_ballX_cy[3]),
    .LI(Maccum_ballX_lut[4]),
    .O(Result[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<5>  (
    .I0(ballX[5]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[5])
  );
  MUXCY   \Maccum_ballX_cy<5>  (
    .CI(Maccum_ballX_cy[4]),
    .DI(ballX[5]),
    .S(Maccum_ballX_lut[5]),
    .O(Maccum_ballX_cy[5])
  );
  XORCY   \Maccum_ballX_xor<5>  (
    .CI(Maccum_ballX_cy[4]),
    .LI(Maccum_ballX_lut[5]),
    .O(Result[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<6>  (
    .I0(ballX[6]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[6])
  );
  MUXCY   \Maccum_ballX_cy<6>  (
    .CI(Maccum_ballX_cy[5]),
    .DI(ballX[6]),
    .S(Maccum_ballX_lut[6]),
    .O(Maccum_ballX_cy[6])
  );
  XORCY   \Maccum_ballX_xor<6>  (
    .CI(Maccum_ballX_cy[5]),
    .LI(Maccum_ballX_lut[6]),
    .O(Result[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<7>  (
    .I0(ballX[7]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[7])
  );
  MUXCY   \Maccum_ballX_cy<7>  (
    .CI(Maccum_ballX_cy[6]),
    .DI(ballX[7]),
    .S(Maccum_ballX_lut[7]),
    .O(Maccum_ballX_cy[7])
  );
  XORCY   \Maccum_ballX_xor<7>  (
    .CI(Maccum_ballX_cy[6]),
    .LI(Maccum_ballX_lut[7]),
    .O(Result[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<8>  (
    .I0(ballX[8]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[8])
  );
  MUXCY   \Maccum_ballX_cy<8>  (
    .CI(Maccum_ballX_cy[7]),
    .DI(ballX[8]),
    .S(Maccum_ballX_lut[8]),
    .O(Maccum_ballX_cy[8])
  );
  XORCY   \Maccum_ballX_xor<8>  (
    .CI(Maccum_ballX_cy[7]),
    .LI(Maccum_ballX_lut[8]),
    .O(Result[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballX_lut<9>  (
    .I0(ballX[9]),
    .I1(ball_dirX_299),
    .O(Maccum_ballX_lut[9])
  );
  XORCY   \Maccum_ballX_xor<9>  (
    .CI(Maccum_ballX_cy[8]),
    .LI(Maccum_ballX_lut[9]),
    .O(Result[9])
  );
  MUXCY   \Mcount_PaddlePosition_cy<0>  (
    .CI(PaddlePosition_xor0000_inv),
    .DI(PaddlePosition[0]),
    .S(Mcount_PaddlePosition_lut[0]),
    .O(Mcount_PaddlePosition_cy[0])
  );
  XORCY   \Mcount_PaddlePosition_xor<0>  (
    .CI(PaddlePosition_xor0000_inv),
    .LI(Mcount_PaddlePosition_lut[0]),
    .O(\Result<0>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<1>  (
    .CI(Mcount_PaddlePosition_cy[0]),
    .DI(PaddlePosition[1]),
    .S(Mcount_PaddlePosition_lut[1]),
    .O(Mcount_PaddlePosition_cy[1])
  );
  XORCY   \Mcount_PaddlePosition_xor<1>  (
    .CI(Mcount_PaddlePosition_cy[0]),
    .LI(Mcount_PaddlePosition_lut[1]),
    .O(\Result<1>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<2>  (
    .CI(Mcount_PaddlePosition_cy[1]),
    .DI(PaddlePosition[2]),
    .S(Mcount_PaddlePosition_lut[2]),
    .O(Mcount_PaddlePosition_cy[2])
  );
  XORCY   \Mcount_PaddlePosition_xor<2>  (
    .CI(Mcount_PaddlePosition_cy[1]),
    .LI(Mcount_PaddlePosition_lut[2]),
    .O(\Result<2>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<3>  (
    .CI(Mcount_PaddlePosition_cy[2]),
    .DI(PaddlePosition[3]),
    .S(Mcount_PaddlePosition_lut[3]),
    .O(Mcount_PaddlePosition_cy[3])
  );
  XORCY   \Mcount_PaddlePosition_xor<3>  (
    .CI(Mcount_PaddlePosition_cy[2]),
    .LI(Mcount_PaddlePosition_lut[3]),
    .O(\Result<3>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<4>  (
    .CI(Mcount_PaddlePosition_cy[3]),
    .DI(PaddlePosition[4]),
    .S(Mcount_PaddlePosition_lut[4]),
    .O(Mcount_PaddlePosition_cy[4])
  );
  XORCY   \Mcount_PaddlePosition_xor<4>  (
    .CI(Mcount_PaddlePosition_cy[3]),
    .LI(Mcount_PaddlePosition_lut[4]),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<5>  (
    .CI(Mcount_PaddlePosition_cy[4]),
    .DI(PaddlePosition[5]),
    .S(Mcount_PaddlePosition_lut[5]),
    .O(Mcount_PaddlePosition_cy[5])
  );
  XORCY   \Mcount_PaddlePosition_xor<5>  (
    .CI(Mcount_PaddlePosition_cy[4]),
    .LI(Mcount_PaddlePosition_lut[5]),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<6>  (
    .CI(Mcount_PaddlePosition_cy[5]),
    .DI(PaddlePosition[6]),
    .S(Mcount_PaddlePosition_lut[6]),
    .O(Mcount_PaddlePosition_cy[6])
  );
  XORCY   \Mcount_PaddlePosition_xor<6>  (
    .CI(Mcount_PaddlePosition_cy[5]),
    .LI(Mcount_PaddlePosition_lut[6]),
    .O(\Result<6>1 )
  );
  MUXCY   \Mcount_PaddlePosition_cy<7>  (
    .CI(Mcount_PaddlePosition_cy[6]),
    .DI(PaddlePosition[7]),
    .S(Mcount_PaddlePosition_lut[7]),
    .O(Mcount_PaddlePosition_cy[7])
  );
  XORCY   \Mcount_PaddlePosition_xor<7>  (
    .CI(Mcount_PaddlePosition_cy[6]),
    .LI(Mcount_PaddlePosition_lut[7]),
    .O(\Result<7>1 )
  );
  XORCY   \Mcount_PaddlePosition_xor<8>  (
    .CI(Mcount_PaddlePosition_cy[7]),
    .LI(Mcount_PaddlePosition_lut[8]),
    .O(\Result<8>1 )
  );
  MUXCY   \Maccum_ballY_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Maccum_ballY_lut[0]),
    .O(Maccum_ballY_cy[0])
  );
  XORCY   \Maccum_ballY_xor<0>  (
    .CI(N0),
    .LI(Maccum_ballY_lut[0]),
    .O(\Result<0>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<1>  (
    .I0(ballY[1]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[1])
  );
  MUXCY   \Maccum_ballY_cy<1>  (
    .CI(Maccum_ballY_cy[0]),
    .DI(ballY[1]),
    .S(Maccum_ballY_lut[1]),
    .O(Maccum_ballY_cy[1])
  );
  XORCY   \Maccum_ballY_xor<1>  (
    .CI(Maccum_ballY_cy[0]),
    .LI(Maccum_ballY_lut[1]),
    .O(\Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<2>  (
    .I0(ballY[2]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[2])
  );
  MUXCY   \Maccum_ballY_cy<2>  (
    .CI(Maccum_ballY_cy[1]),
    .DI(ballY[2]),
    .S(Maccum_ballY_lut[2]),
    .O(Maccum_ballY_cy[2])
  );
  XORCY   \Maccum_ballY_xor<2>  (
    .CI(Maccum_ballY_cy[1]),
    .LI(Maccum_ballY_lut[2]),
    .O(\Result<2>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<3>  (
    .I0(ballY[3]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[3])
  );
  MUXCY   \Maccum_ballY_cy<3>  (
    .CI(Maccum_ballY_cy[2]),
    .DI(ballY[3]),
    .S(Maccum_ballY_lut[3]),
    .O(Maccum_ballY_cy[3])
  );
  XORCY   \Maccum_ballY_xor<3>  (
    .CI(Maccum_ballY_cy[2]),
    .LI(Maccum_ballY_lut[3]),
    .O(\Result<3>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<4>  (
    .I0(ballY[4]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[4])
  );
  MUXCY   \Maccum_ballY_cy<4>  (
    .CI(Maccum_ballY_cy[3]),
    .DI(ballY[4]),
    .S(Maccum_ballY_lut[4]),
    .O(Maccum_ballY_cy[4])
  );
  XORCY   \Maccum_ballY_xor<4>  (
    .CI(Maccum_ballY_cy[3]),
    .LI(Maccum_ballY_lut[4]),
    .O(\Result<4>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<5>  (
    .I0(ballY[5]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[5])
  );
  MUXCY   \Maccum_ballY_cy<5>  (
    .CI(Maccum_ballY_cy[4]),
    .DI(ballY[5]),
    .S(Maccum_ballY_lut[5]),
    .O(Maccum_ballY_cy[5])
  );
  XORCY   \Maccum_ballY_xor<5>  (
    .CI(Maccum_ballY_cy[4]),
    .LI(Maccum_ballY_lut[5]),
    .O(\Result<5>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<6>  (
    .I0(ballY[6]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[6])
  );
  MUXCY   \Maccum_ballY_cy<6>  (
    .CI(Maccum_ballY_cy[5]),
    .DI(ballY[6]),
    .S(Maccum_ballY_lut[6]),
    .O(Maccum_ballY_cy[6])
  );
  XORCY   \Maccum_ballY_xor<6>  (
    .CI(Maccum_ballY_cy[5]),
    .LI(Maccum_ballY_lut[6]),
    .O(\Result<6>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<7>  (
    .I0(ballY[7]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[7])
  );
  MUXCY   \Maccum_ballY_cy<7>  (
    .CI(Maccum_ballY_cy[6]),
    .DI(ballY[7]),
    .S(Maccum_ballY_lut[7]),
    .O(Maccum_ballY_cy[7])
  );
  XORCY   \Maccum_ballY_xor<7>  (
    .CI(Maccum_ballY_cy[6]),
    .LI(Maccum_ballY_lut[7]),
    .O(\Result<7>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_ballY_lut<8>  (
    .I0(ballY[8]),
    .I1(ball_dirY_301),
    .O(Maccum_ballY_lut[8])
  );
  XORCY   \Maccum_ballY_xor<8>  (
    .CI(Maccum_ballY_cy[7]),
    .LI(Maccum_ballY_lut[8]),
    .O(\Result<8>2 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_ge0000_lut<0>  (
    .I0(\syncgen/CounterX [0]),
    .I1(PaddlePosition[0]),
    .O(Mcompar_paddle_cmp_ge0000_lut[0])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(\syncgen/CounterX [0]),
    .S(Mcompar_paddle_cmp_ge0000_lut[0]),
    .O(Mcompar_paddle_cmp_ge0000_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_ge0000_lut<1>  (
    .I0(\syncgen/CounterX [1]),
    .I1(PaddlePosition[1]),
    .O(Mcompar_paddle_cmp_ge0000_lut[1])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<1>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[0]),
    .DI(\syncgen/CounterX [1]),
    .S(Mcompar_paddle_cmp_ge0000_lut[1]),
    .O(Mcompar_paddle_cmp_ge0000_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_ge0000_lut<2>  (
    .I0(\syncgen/CounterX [2]),
    .I1(PaddlePosition[2]),
    .O(Mcompar_paddle_cmp_ge0000_lut[2])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<2>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[1]),
    .DI(\syncgen/CounterX [2]),
    .S(Mcompar_paddle_cmp_ge0000_lut[2]),
    .O(Mcompar_paddle_cmp_ge0000_cy[2])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<3>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[2]),
    .DI(\syncgen/CounterX [3]),
    .S(Mcompar_paddle_cmp_ge0000_lut[3]),
    .O(Mcompar_paddle_cmp_ge0000_cy[3])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<4>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[3]),
    .DI(\syncgen/CounterX [4]),
    .S(Mcompar_paddle_cmp_ge0000_lut[4]),
    .O(Mcompar_paddle_cmp_ge0000_cy[4])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<5>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[4]),
    .DI(\syncgen/CounterX [5]),
    .S(Mcompar_paddle_cmp_ge0000_lut[5]),
    .O(Mcompar_paddle_cmp_ge0000_cy[5])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<6>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[5]),
    .DI(\syncgen/CounterX [6]),
    .S(Mcompar_paddle_cmp_ge0000_lut[6]),
    .O(Mcompar_paddle_cmp_ge0000_cy[6])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<7>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[6]),
    .DI(\syncgen/CounterX [7]),
    .S(Mcompar_paddle_cmp_ge0000_lut[7]),
    .O(Mcompar_paddle_cmp_ge0000_cy[7])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<8>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[7]),
    .DI(\syncgen/CounterX [8]),
    .S(Mcompar_paddle_cmp_ge0000_lut[8]),
    .O(Mcompar_paddle_cmp_ge0000_cy[8])
  );
  MUXCY   \Mcompar_paddle_cmp_ge0000_cy<9>  (
    .CI(Mcompar_paddle_cmp_ge0000_cy[8]),
    .DI(\syncgen/CounterX [9]),
    .S(Mcompar_paddle_cmp_ge0000_lut[9]),
    .O(paddle_cmp_ge0000)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_le0000_lut<0>  (
    .I0(PaddlePosition[0]),
    .I1(\syncgen/CounterX [0]),
    .O(Mcompar_paddle_cmp_le0000_lut[0])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<0>  (
    .CI(N1),
    .DI(PaddlePosition[0]),
    .S(Mcompar_paddle_cmp_le0000_lut[0]),
    .O(Mcompar_paddle_cmp_le0000_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_le0000_lut<1>  (
    .I0(PaddlePosition[1]),
    .I1(\syncgen/CounterX [1]),
    .O(Mcompar_paddle_cmp_le0000_lut[1])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<1>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[0]),
    .DI(PaddlePosition[1]),
    .S(Mcompar_paddle_cmp_le0000_lut[1]),
    .O(Mcompar_paddle_cmp_le0000_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_le0000_lut<2>  (
    .I0(PaddlePosition[2]),
    .I1(\syncgen/CounterX [2]),
    .O(Mcompar_paddle_cmp_le0000_lut[2])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<2>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[1]),
    .DI(PaddlePosition[2]),
    .S(Mcompar_paddle_cmp_le0000_lut[2]),
    .O(Mcompar_paddle_cmp_le0000_cy[2])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<3>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[2]),
    .DI(paddle_addsub0002[3]),
    .S(Mcompar_paddle_cmp_le0000_lut[3]),
    .O(Mcompar_paddle_cmp_le0000_cy[3])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<4>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[3]),
    .DI(paddle_addsub0003[4]),
    .S(Mcompar_paddle_cmp_le0000_lut[4]),
    .O(Mcompar_paddle_cmp_le0000_cy[4])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<5>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[4]),
    .DI(paddle_addsub0003[5]),
    .S(Mcompar_paddle_cmp_le0000_lut[5]),
    .O(Mcompar_paddle_cmp_le0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_paddle_cmp_le0000_lut<6>  (
    .I0(\syncgen/CounterX [6]),
    .I1(paddle_addsub0003[6]),
    .O(Mcompar_paddle_cmp_le0000_lut[6])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<6>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[5]),
    .DI(paddle_addsub0003[6]),
    .S(Mcompar_paddle_cmp_le0000_lut[6]),
    .O(Mcompar_paddle_cmp_le0000_cy[6])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<7>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[6]),
    .DI(paddle_addsub0003[7]),
    .S(Mcompar_paddle_cmp_le0000_lut[7]),
    .O(Mcompar_paddle_cmp_le0000_cy[7])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<8>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[7]),
    .DI(paddle_addsub0003[8]),
    .S(Mcompar_paddle_cmp_le0000_lut[8]),
    .O(Mcompar_paddle_cmp_le0000_cy[8])
  );
  MULT_AND   Madd_paddle_index0001_mand (
    .I0(PaddlePosition[8]),
    .I1(Madd_paddle_addsub0003_cy[7]),
    .LO(Madd_paddle_index0001_mand1)
  );
  LUT3 #(
    .INIT ( 8'h93 ))
  \Mcompar_paddle_cmp_le0000_lut<9>  (
    .I0(PaddlePosition[8]),
    .I1(\syncgen/CounterX [9]),
    .I2(Madd_paddle_addsub0003_cy[7]),
    .O(Mcompar_paddle_cmp_le0000_lut[9])
  );
  MUXCY   \Mcompar_paddle_cmp_le0000_cy<9>  (
    .CI(Mcompar_paddle_cmp_le0000_cy[8]),
    .DI(Madd_paddle_index0001_mand1),
    .S(Mcompar_paddle_cmp_le0000_lut[9]),
    .O(paddle_cmp_le0000)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0000_lut<0>  (
    .I0(\syncgen/CounterX [0]),
    .I1(ballX[0]),
    .I2(\syncgen/CounterX [1]),
    .I3(ballX[1]),
    .O(Mcompar_ball_inX_cmp_eq0000_lut[0])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0000_lut[0]),
    .O(Mcompar_ball_inX_cmp_eq0000_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0000_lut<1>  (
    .I0(\syncgen/CounterX [2]),
    .I1(ballX[2]),
    .I2(\syncgen/CounterX [3]),
    .I3(ballX[3]),
    .O(Mcompar_ball_inX_cmp_eq0000_lut[1])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0000_cy<1>  (
    .CI(Mcompar_ball_inX_cmp_eq0000_cy[0]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0000_lut[1]),
    .O(Mcompar_ball_inX_cmp_eq0000_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0000_lut<2>  (
    .I0(\syncgen/CounterX [4]),
    .I1(ballX[4]),
    .I2(\syncgen/CounterX [5]),
    .I3(ballX[5]),
    .O(Mcompar_ball_inX_cmp_eq0000_lut[2])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0000_cy<2>  (
    .CI(Mcompar_ball_inX_cmp_eq0000_cy[1]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0000_lut[2]),
    .O(Mcompar_ball_inX_cmp_eq0000_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0000_lut<3>  (
    .I0(\syncgen/CounterX [6]),
    .I1(ballX[6]),
    .I2(\syncgen/CounterX [7]),
    .I3(ballX[7]),
    .O(Mcompar_ball_inX_cmp_eq0000_lut[3])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0000_cy<3>  (
    .CI(Mcompar_ball_inX_cmp_eq0000_cy[2]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0000_lut[3]),
    .O(Mcompar_ball_inX_cmp_eq0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0000_lut<4>  (
    .I0(\syncgen/CounterX [8]),
    .I1(ballX[8]),
    .I2(\syncgen/CounterX [9]),
    .I3(ballX[9]),
    .O(Mcompar_ball_inX_cmp_eq0000_lut[4])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0000_cy<4>  (
    .CI(Mcompar_ball_inX_cmp_eq0000_cy[3]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0000_lut[4]),
    .O(Mcompar_ball_inX_cmp_eq0000_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<0>  (
    .I0(\syncgen/CounterY [0]),
    .I1(ballY[0]),
    .I2(\syncgen/CounterY [1]),
    .I3(ballY[1]),
    .O(Mcompar_ball_inY_cmp_eq0001_lut[0])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0001_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0001_lut[0]),
    .O(Mcompar_ball_inY_cmp_eq0001_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<1>  (
    .I0(\syncgen/CounterY [2]),
    .I1(ballY[2]),
    .I2(\syncgen/CounterY [3]),
    .I3(ballY[3]),
    .O(Mcompar_ball_inY_cmp_eq0001_lut[1])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0001_cy<1>  (
    .CI(Mcompar_ball_inY_cmp_eq0001_cy[0]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0001_lut[1]),
    .O(Mcompar_ball_inY_cmp_eq0001_cy[1])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0001_cy<2>  (
    .CI(Mcompar_ball_inY_cmp_eq0001_cy[1]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0001_lut[2]),
    .O(Mcompar_ball_inY_cmp_eq0001_cy[2])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0001_cy<3>  (
    .CI(Mcompar_ball_inY_cmp_eq0001_cy[2]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0001_lut[3]),
    .O(Mcompar_ball_inY_cmp_eq0001_cy[3])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0001_cy<4>  (
    .CI(Mcompar_ball_inY_cmp_eq0001_cy[3]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0001_lut[4]),
    .O(Mcompar_ball_inY_cmp_eq0001_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0001_lut<0>  (
    .I0(\syncgen/CounterX [0]),
    .I1(ballX[0]),
    .I2(\syncgen/CounterX [1]),
    .I3(ballX[1]),
    .O(Mcompar_ball_inX_cmp_eq0001_lut[0])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0001_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0001_lut[0]),
    .O(Mcompar_ball_inX_cmp_eq0001_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inX_cmp_eq0001_lut<1>  (
    .I0(\syncgen/CounterX [2]),
    .I1(ballX[2]),
    .I2(\syncgen/CounterX [3]),
    .I3(ballX[3]),
    .O(Mcompar_ball_inX_cmp_eq0001_lut[1])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0001_cy<1>  (
    .CI(Mcompar_ball_inX_cmp_eq0001_cy[0]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0001_lut[1]),
    .O(Mcompar_ball_inX_cmp_eq0001_cy[1])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0001_cy<2>  (
    .CI(Mcompar_ball_inX_cmp_eq0001_cy[1]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0001_lut[2]),
    .O(Mcompar_ball_inX_cmp_eq0001_cy[2])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0001_cy<3>  (
    .CI(Mcompar_ball_inX_cmp_eq0001_cy[2]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0001_lut[3]),
    .O(Mcompar_ball_inX_cmp_eq0001_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h8421 ))
  \Mcompar_ball_inX_cmp_eq0001_lut<4>  (
    .I0(\syncgen/CounterX [9]),
    .I1(\syncgen/CounterX [8]),
    .I2(ball_inX_addsub0000[9]),
    .I3(ball_inX_addsub0000[8]),
    .O(Mcompar_ball_inX_cmp_eq0001_lut[4])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0001_cy<4>  (
    .CI(Mcompar_ball_inX_cmp_eq0001_cy[3]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0001_lut[4]),
    .O(Mcompar_ball_inX_cmp_eq0001_cy[4])
  );
  MUXCY   \Mcompar_ball_inX_cmp_eq0001_cy<5>  (
    .CI(Mcompar_ball_inX_cmp_eq0001_cy[4]),
    .DI(N0),
    .S(Mcompar_ball_inX_cmp_eq0001_lut[5]),
    .O(Mcompar_ball_inX_cmp_eq0001_cy[5])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0000_lut[0]),
    .O(Mcompar_ball_inY_cmp_eq0000_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inY_cmp_eq0000_lut<1>  (
    .I0(\syncgen/CounterY [0]),
    .I1(ballY[0]),
    .I2(\syncgen/CounterY [1]),
    .I3(ballY[1]),
    .O(Mcompar_ball_inY_cmp_eq0000_lut[1])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0000_cy<1>  (
    .CI(Mcompar_ball_inY_cmp_eq0000_cy[0]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0000_lut[1]),
    .O(Mcompar_ball_inY_cmp_eq0000_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inY_cmp_eq0000_lut<2>  (
    .I0(\syncgen/CounterY [2]),
    .I1(ballY[2]),
    .I2(\syncgen/CounterY [3]),
    .I3(ballY[3]),
    .O(Mcompar_ball_inY_cmp_eq0000_lut[2])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0000_cy<2>  (
    .CI(Mcompar_ball_inY_cmp_eq0000_cy[1]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0000_lut[2]),
    .O(Mcompar_ball_inY_cmp_eq0000_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inY_cmp_eq0000_lut<3>  (
    .I0(\syncgen/CounterY [4]),
    .I1(ballY[4]),
    .I2(\syncgen/CounterY [5]),
    .I3(ballY[5]),
    .O(Mcompar_ball_inY_cmp_eq0000_lut[3])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0000_cy<3>  (
    .CI(Mcompar_ball_inY_cmp_eq0000_cy[2]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0000_lut[3]),
    .O(Mcompar_ball_inY_cmp_eq0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_ball_inY_cmp_eq0000_lut<4>  (
    .I0(\syncgen/CounterY [6]),
    .I1(ballY[6]),
    .I2(\syncgen/CounterY [7]),
    .I3(ballY[7]),
    .O(Mcompar_ball_inY_cmp_eq0000_lut[4])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0000_cy<4>  (
    .CI(Mcompar_ball_inY_cmp_eq0000_cy[3]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0000_lut[4]),
    .O(Mcompar_ball_inY_cmp_eq0000_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_ball_inY_cmp_eq0000_lut<5>  (
    .I0(\syncgen/CounterY [8]),
    .I1(ballY[8]),
    .O(Mcompar_ball_inY_cmp_eq0000_lut[5])
  );
  MUXCY   \Mcompar_ball_inY_cmp_eq0000_cy<5>  (
    .CI(Mcompar_ball_inY_cmp_eq0000_cy[4]),
    .DI(N0),
    .S(Mcompar_ball_inY_cmp_eq0000_lut[5]),
    .O(Mcompar_ball_inY_cmp_eq0000_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<0>  (
    .I0(\syncgen/CounterY [0]),
    .I1(ballY[0]),
    .I2(\syncgen/CounterY [1]),
    .I3(ballY[1]),
    .O(Mcompar_CollisionX1_cmp_eq0000_lut[0])
  );
  MUXCY   \Mcompar_CollisionX1_cmp_eq0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_CollisionX1_cmp_eq0000_lut[0]),
    .O(Mcompar_CollisionX1_cmp_eq0000_cy[0])
  );
  MUXCY   \Mcompar_CollisionX1_cmp_eq0000_cy<1>  (
    .CI(Mcompar_CollisionX1_cmp_eq0000_cy[0]),
    .DI(N0),
    .S(Mcompar_CollisionX1_cmp_eq0000_lut[1]),
    .O(Mcompar_CollisionX1_cmp_eq0000_cy[1])
  );
  MUXCY   \Mcompar_CollisionX1_cmp_eq0000_cy<2>  (
    .CI(Mcompar_CollisionX1_cmp_eq0000_cy[1]),
    .DI(N0),
    .S(Mcompar_CollisionX1_cmp_eq0000_lut[2]),
    .O(Mcompar_CollisionX1_cmp_eq0000_cy[2])
  );
  MUXCY   \Mcompar_CollisionX1_cmp_eq0000_cy<3>  (
    .CI(Mcompar_CollisionX1_cmp_eq0000_cy[2]),
    .DI(N0),
    .S(Mcompar_CollisionX1_cmp_eq0000_lut[3]),
    .O(Mcompar_CollisionX1_cmp_eq0000_cy[3])
  );
  MUXCY   \Mcompar_CollisionX1_cmp_eq0000_cy<4>  (
    .CI(Mcompar_CollisionX1_cmp_eq0000_cy[3]),
    .DI(N0),
    .S(Mcompar_CollisionX1_cmp_eq0000_lut[4]),
    .O(Mcompar_CollisionX1_cmp_eq0000_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<0>  (
    .I0(\syncgen/CounterX [0]),
    .I1(ballX[0]),
    .I2(\syncgen/CounterX [1]),
    .I3(ballX[1]),
    .O(Mcompar_CollisionY1_cmp_eq0000_lut[0])
  );
  MUXCY   \Mcompar_CollisionY1_cmp_eq0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_CollisionY1_cmp_eq0000_lut[0]),
    .O(Mcompar_CollisionY1_cmp_eq0000_cy[0])
  );
  MUXCY   \Mcompar_CollisionY1_cmp_eq0000_cy<1>  (
    .CI(Mcompar_CollisionY1_cmp_eq0000_cy[0]),
    .DI(N0),
    .S(Mcompar_CollisionY1_cmp_eq0000_lut[1]),
    .O(Mcompar_CollisionY1_cmp_eq0000_cy[1])
  );
  MUXCY   \Mcompar_CollisionY1_cmp_eq0000_cy<2>  (
    .CI(Mcompar_CollisionY1_cmp_eq0000_cy[1]),
    .DI(N0),
    .S(Mcompar_CollisionY1_cmp_eq0000_lut[2]),
    .O(Mcompar_CollisionY1_cmp_eq0000_cy[2])
  );
  MUXCY   \Mcompar_CollisionY1_cmp_eq0000_cy<3>  (
    .CI(Mcompar_CollisionY1_cmp_eq0000_cy[2]),
    .DI(N0),
    .S(Mcompar_CollisionY1_cmp_eq0000_lut[3]),
    .O(Mcompar_CollisionY1_cmp_eq0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<4>  (
    .I0(\syncgen/CounterX [8]),
    .I1(add0000_addsub0000[8]),
    .I2(\syncgen/CounterX [9]),
    .I3(add0000_addsub0000[9]),
    .O(Mcompar_CollisionY1_cmp_eq0000_lut[4])
  );
  MUXCY   \Mcompar_CollisionY1_cmp_eq0000_cy<4>  (
    .CI(Mcompar_CollisionY1_cmp_eq0000_cy[3]),
    .DI(N0),
    .S(Mcompar_CollisionY1_cmp_eq0000_lut[4]),
    .O(Mcompar_CollisionY1_cmp_eq0000_cy[4])
  );
  MUXCY   \Mcompar_CollisionY1_cmp_eq0000_cy<5>  (
    .CI(Mcompar_CollisionY1_cmp_eq0000_cy[4]),
    .DI(N0),
    .S(Mcompar_CollisionY1_cmp_eq0000_lut[5]),
    .O(Mcompar_CollisionY1_cmp_eq0000_cy[5])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<9>  (
    .CI(\syncgen/Mcount_CounterX_cy [8]),
    .LI(\syncgen/Mcount_CounterX_xor<9>_rt_369 ),
    .O(\syncgen/Result [9])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<8>  (
    .CI(\syncgen/Mcount_CounterX_cy [7]),
    .LI(\syncgen/Mcount_CounterX_cy<8>_rt_367 ),
    .O(\syncgen/Result [8])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<8>  (
    .CI(\syncgen/Mcount_CounterX_cy [7]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<8>_rt_367 ),
    .O(\syncgen/Mcount_CounterX_cy [8])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<7>  (
    .CI(\syncgen/Mcount_CounterX_cy [6]),
    .LI(\syncgen/Mcount_CounterX_cy<7>_rt_365 ),
    .O(\syncgen/Result [7])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<7>  (
    .CI(\syncgen/Mcount_CounterX_cy [6]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<7>_rt_365 ),
    .O(\syncgen/Mcount_CounterX_cy [7])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<6>  (
    .CI(\syncgen/Mcount_CounterX_cy [5]),
    .LI(\syncgen/Mcount_CounterX_cy<6>_rt_363 ),
    .O(\syncgen/Result [6])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<6>  (
    .CI(\syncgen/Mcount_CounterX_cy [5]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<6>_rt_363 ),
    .O(\syncgen/Mcount_CounterX_cy [6])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<5>  (
    .CI(\syncgen/Mcount_CounterX_cy [4]),
    .LI(\syncgen/Mcount_CounterX_cy<5>_rt_361 ),
    .O(\syncgen/Result [5])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<5>  (
    .CI(\syncgen/Mcount_CounterX_cy [4]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<5>_rt_361 ),
    .O(\syncgen/Mcount_CounterX_cy [5])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<4>  (
    .CI(\syncgen/Mcount_CounterX_cy [3]),
    .LI(\syncgen/Mcount_CounterX_cy<4>_rt_359 ),
    .O(\syncgen/Result [4])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<4>  (
    .CI(\syncgen/Mcount_CounterX_cy [3]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<4>_rt_359 ),
    .O(\syncgen/Mcount_CounterX_cy [4])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<3>  (
    .CI(\syncgen/Mcount_CounterX_cy [2]),
    .LI(\syncgen/Mcount_CounterX_cy<3>_rt_357 ),
    .O(\syncgen/Result [3])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<3>  (
    .CI(\syncgen/Mcount_CounterX_cy [2]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<3>_rt_357 ),
    .O(\syncgen/Mcount_CounterX_cy [3])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<2>  (
    .CI(\syncgen/Mcount_CounterX_cy [1]),
    .LI(\syncgen/Mcount_CounterX_cy<2>_rt_355 ),
    .O(\syncgen/Result [2])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<2>  (
    .CI(\syncgen/Mcount_CounterX_cy [1]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<2>_rt_355 ),
    .O(\syncgen/Mcount_CounterX_cy [2])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<1>  (
    .CI(\syncgen/Mcount_CounterX_cy [0]),
    .LI(\syncgen/Mcount_CounterX_cy<1>_rt_353 ),
    .O(\syncgen/Result [1])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<1>  (
    .CI(\syncgen/Mcount_CounterX_cy [0]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<1>_rt_353 ),
    .O(\syncgen/Mcount_CounterX_cy [1])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<0>  (
    .CI(N0),
    .LI(\syncgen/Mcount_CounterX_lut [0]),
    .O(\syncgen/Result [0])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\syncgen/Mcount_CounterX_lut [0]),
    .O(\syncgen/Mcount_CounterX_cy [0])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<9>  (
    .CI(\syncgen/Mcount_CounterY_cy [8]),
    .LI(\syncgen/Mcount_CounterY_xor<9>_rt_388 ),
    .O(\syncgen/Result<9>1 )
  );
  XORCY   \syncgen/Mcount_CounterY_xor<8>  (
    .CI(\syncgen/Mcount_CounterY_cy [7]),
    .LI(\syncgen/Mcount_CounterY_cy<8>_rt_386 ),
    .O(\syncgen/Result<8>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<8>  (
    .CI(\syncgen/Mcount_CounterY_cy [7]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<8>_rt_386 ),
    .O(\syncgen/Mcount_CounterY_cy [8])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<7>  (
    .CI(\syncgen/Mcount_CounterY_cy [6]),
    .LI(\syncgen/Mcount_CounterY_cy<7>_rt_384 ),
    .O(\syncgen/Result<7>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<7>  (
    .CI(\syncgen/Mcount_CounterY_cy [6]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<7>_rt_384 ),
    .O(\syncgen/Mcount_CounterY_cy [7])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<6>  (
    .CI(\syncgen/Mcount_CounterY_cy [5]),
    .LI(\syncgen/Mcount_CounterY_cy<6>_rt_382 ),
    .O(\syncgen/Result<6>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<6>  (
    .CI(\syncgen/Mcount_CounterY_cy [5]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<6>_rt_382 ),
    .O(\syncgen/Mcount_CounterY_cy [6])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<5>  (
    .CI(\syncgen/Mcount_CounterY_cy [4]),
    .LI(\syncgen/Mcount_CounterY_cy<5>_rt_380 ),
    .O(\syncgen/Result<5>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<5>  (
    .CI(\syncgen/Mcount_CounterY_cy [4]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<5>_rt_380 ),
    .O(\syncgen/Mcount_CounterY_cy [5])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<4>  (
    .CI(\syncgen/Mcount_CounterY_cy [3]),
    .LI(\syncgen/Mcount_CounterY_cy<4>_rt_378 ),
    .O(\syncgen/Result<4>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<4>  (
    .CI(\syncgen/Mcount_CounterY_cy [3]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<4>_rt_378 ),
    .O(\syncgen/Mcount_CounterY_cy [4])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<3>  (
    .CI(\syncgen/Mcount_CounterY_cy [2]),
    .LI(\syncgen/Mcount_CounterY_cy<3>_rt_376 ),
    .O(\syncgen/Result<3>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<3>  (
    .CI(\syncgen/Mcount_CounterY_cy [2]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<3>_rt_376 ),
    .O(\syncgen/Mcount_CounterY_cy [3])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<2>  (
    .CI(\syncgen/Mcount_CounterY_cy [1]),
    .LI(\syncgen/Mcount_CounterY_cy<2>_rt_374 ),
    .O(\syncgen/Result<2>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<2>  (
    .CI(\syncgen/Mcount_CounterY_cy [1]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<2>_rt_374 ),
    .O(\syncgen/Mcount_CounterY_cy [2])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<1>  (
    .CI(\syncgen/Mcount_CounterY_cy [0]),
    .LI(\syncgen/Mcount_CounterY_cy<1>_rt_372 ),
    .O(\syncgen/Result<1>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<1>  (
    .CI(\syncgen/Mcount_CounterY_cy [0]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<1>_rt_372 ),
    .O(\syncgen/Mcount_CounterY_cy [1])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<0>  (
    .CI(N0),
    .LI(\syncgen/Mcount_CounterY_lut [0]),
    .O(\syncgen/Result<0>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\syncgen/Mcount_CounterY_lut [0]),
    .O(\syncgen/Mcount_CounterY_cy [0])
  );
  FDRE   \syncgen/CounterY_9  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<9>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [9])
  );
  FDRE   \syncgen/CounterY_8  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<8>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [8])
  );
  FDRE   \syncgen/CounterY_7  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<7>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [7])
  );
  FDRE   \syncgen/CounterY_6  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<6>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [6])
  );
  FDRE   \syncgen/CounterY_5  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<5>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [5])
  );
  FDRE   \syncgen/CounterY_4  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<4>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [4])
  );
  FDRE   \syncgen/CounterY_3  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<3>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [3])
  );
  FDRE   \syncgen/CounterY_2  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<2>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [2])
  );
  FDRE   \syncgen/CounterY_1  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<1>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [1])
  );
  FDRE   \syncgen/CounterY_0  (
    .C(clk_BUFGP_310),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<0>1 ),
    .R(\syncgen/CounterYmaxed ),
    .Q(\syncgen/CounterY [0])
  );
  FDR   \syncgen/CounterX_9  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [9]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [9])
  );
  FDR   \syncgen/CounterX_8  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [8]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [8])
  );
  FDR   \syncgen/CounterX_7  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [7]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [7])
  );
  FDR   \syncgen/CounterX_6  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [6]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [6])
  );
  FDR   \syncgen/CounterX_5  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [5]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [5])
  );
  FDR   \syncgen/CounterX_4  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [4]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [4])
  );
  FDR   \syncgen/CounterX_3  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [3]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [3])
  );
  FDR   \syncgen/CounterX_2  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [2]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [2])
  );
  FDR   \syncgen/CounterX_1  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [1]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [1])
  );
  FDR   \syncgen/CounterX_0  (
    .C(clk_BUFGP_310),
    .D(\syncgen/Result [0]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [0])
  );
  FD   \syncgen/vga_VS  (
    .C(clk_BUFGP_310),
    .D(\syncgen/vga_VS_cmp_eq0000 ),
    .Q(\syncgen/vga_VS_423 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  ballY_not00011 (
    .I0(ResetCollision_243),
    .I1(CollisionY1_16),
    .I2(CollisionY2_18),
    .O(ballY_not0001)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  ballX_not00011 (
    .I0(ResetCollision_243),
    .I1(CollisionX1_10),
    .I2(CollisionX2_14),
    .O(ballX_not0001)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  ball_dirY_not00011 (
    .I0(ResetCollision_243),
    .I1(CollisionY1_16),
    .I2(CollisionY2_18),
    .O(ball_dirY_not0001)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  ball_dirX_not00011 (
    .I0(ResetCollision_243),
    .I1(CollisionX1_10),
    .I2(CollisionX2_14),
    .O(ball_dirX_not0001)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncgen/vga_VS_cmp_eq000012  (
    .I0(\syncgen/CounterY [3]),
    .I1(\syncgen/CounterY [2]),
    .I2(\syncgen/CounterY [1]),
    .I3(\syncgen/CounterY [0]),
    .O(\syncgen/vga_VS_cmp_eq000012_425 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncgen/vga_VS_cmp_eq000037  (
    .I0(\syncgen/CounterY [7]),
    .I1(\syncgen/CounterY [6]),
    .I2(\syncgen/CounterY [5]),
    .I3(\syncgen/CounterY [4]),
    .O(\syncgen/vga_VS_cmp_eq000037_426 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  ResetCollision_cmp_eq00011 (
    .I0(\syncgen/CounterX [1]),
    .I1(\syncgen/CounterX [0]),
    .I2(N6),
    .I3(\syncgen/CounterX [2]),
    .O(ResetCollision_and0000_norst)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/CounterYmaxed4  (
    .I0(\syncgen/CounterY [7]),
    .I1(\syncgen/CounterY [6]),
    .I2(\syncgen/CounterY [5]),
    .I3(\syncgen/CounterY [4]),
    .O(\syncgen/CounterYmaxed4_350 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/CounterYmaxed12  (
    .I0(\syncgen/CounterY [3]),
    .I1(\syncgen/CounterY [2]),
    .I2(\syncgen/CounterY [1]),
    .I3(\syncgen/CounterY [0]),
    .O(\syncgen/CounterYmaxed12_349 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  ResetCollision_cmp_eq0000_inv12 (
    .I0(\syncgen/CounterY [2]),
    .I1(\syncgen/CounterY [5]),
    .I2(\syncgen/CounterY [4]),
    .I3(\syncgen/CounterY [3]),
    .O(ResetCollision_cmp_eq0000_inv12_246)
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  ResetCollision_cmp_eq0000_inv31 (
    .I0(\syncgen/CounterY [8]),
    .I1(\syncgen/CounterY [7]),
    .I2(\syncgen/CounterY [6]),
    .I3(\syncgen/CounterY [9]),
    .O(ResetCollision_cmp_eq0000_inv31_247)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/inDisplayArea_mux000034  (
    .I0(\syncgen/CounterX [1]),
    .I1(\syncgen/CounterX [3]),
    .I2(\syncgen/CounterX [9]),
    .I3(\syncgen/CounterX [5]),
    .O(\syncgen/inDisplayArea_mux000034_414 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/inDisplayArea_mux0000310  (
    .I0(\syncgen/CounterX [4]),
    .I1(\syncgen/CounterX [6]),
    .I2(\syncgen/CounterX [8]),
    .I3(\syncgen/CounterX [7]),
    .O(\syncgen/inDisplayArea_mux0000310_413 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \syncgen/inDisplayArea_mux00004  (
    .I0(\syncgen/CounterX [4]),
    .I1(\syncgen/CounterX [2]),
    .I2(\syncgen/CounterX [1]),
    .I3(\syncgen/CounterX [0]),
    .O(\syncgen/inDisplayArea_mux00004_415 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \syncgen/inDisplayArea_mux00008  (
    .I0(\syncgen/CounterX [9]),
    .I1(\syncgen/CounterX [8]),
    .O(\syncgen/inDisplayArea_mux00008_419 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \syncgen/inDisplayArea_mux000027  (
    .I0(\syncgen/CounterX [7]),
    .I1(\syncgen/CounterX [6]),
    .I2(\syncgen/CounterX [5]),
    .I3(\syncgen/CounterX [3]),
    .O(\syncgen/inDisplayArea_mux000027_412 )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \syncgen/inDisplayArea_mux000042  (
    .I0(\syncgen/inDisplayArea_mux00004_415 ),
    .I1(\syncgen/inDisplayArea_409 ),
    .I2(\syncgen/inDisplayArea_mux00008_419 ),
    .I3(\syncgen/inDisplayArea_mux000027_412 ),
    .O(\syncgen/inDisplayArea_mux000042_416 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \syncgen/inDisplayArea_mux000065  (
    .I0(\syncgen/CounterY [6]),
    .I1(\syncgen/CounterY [5]),
    .I2(\syncgen/CounterY [4]),
    .I3(\syncgen/CounterY [3]),
    .O(\syncgen/inDisplayArea_mux000065_417 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \syncgen/inDisplayArea_mux000074  (
    .I0(\syncgen/CounterY [2]),
    .I1(\syncgen/CounterY [1]),
    .I2(\syncgen/CounterY [7]),
    .O(\syncgen/inDisplayArea_mux000074_418 )
  );
  LUT4 #(
    .INIT ( 16'h3F2F ))
  \syncgen/inDisplayArea_mux0000103  (
    .I0(\syncgen/inDisplayArea_mux000065_417 ),
    .I1(\syncgen/CounterY [8]),
    .I2(\syncgen/CounterY [9]),
    .I3(\syncgen/inDisplayArea_mux000074_418 ),
    .O(\syncgen/inDisplayArea_mux0000103_410 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  PaddlePosition_xor0000_inv111 (
    .I0(quadBr[1]),
    .I1(quadAr[2]),
    .O(PaddlePosition_xor0000_inv)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Madd_ball_inX_index0000_SW0 (
    .I0(ballX[8]),
    .I1(ballX[6]),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'h069F ))
  PaddlePosition_not000111 (
    .I0(quadBr[1]),
    .I1(quadAr[2]),
    .I2(PaddlePosition_not0001_bdd1),
    .I3(PaddlePosition_not0001_bdd0),
    .O(PaddlePosition_not0001)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  PaddlePosition_not0001711 (
    .I0(PaddlePosition[7]),
    .I1(PaddlePosition[6]),
    .I2(PaddlePosition[8]),
    .I3(PaddlePosition_not000176_239),
    .O(PaddlePosition_not0001711_237)
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  PaddlePosition_not0001317 (
    .I0(PaddlePosition[1]),
    .I1(PaddlePosition[0]),
    .I2(PaddlePosition_not0001312_234),
    .I3(PaddlePosition[8]),
    .O(PaddlePosition_not0001317_235)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  PaddlePosition_not0001332 (
    .I0(PaddlePosition[5]),
    .I1(PaddlePosition[4]),
    .I2(PaddlePosition[3]),
    .I3(PaddlePosition[2]),
    .O(PaddlePosition_not0001332_236)
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  ball_inY_mux00001 (
    .I0(ball_inY_307),
    .I1(Mcompar_ball_inY_cmp_eq0000_cy[5]),
    .I2(Mcompar_ball_inY_cmp_eq0001_cy[4]),
    .O(ball_inY_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  BouncingObject1 (
    .I0(\syncgen/CounterX [3]),
    .I1(\syncgen/CounterX [4]),
    .I2(\syncgen/CounterX [5]),
    .I3(N4),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \ball_inX_addsub0000<8>1  (
    .I0(ballX[6]),
    .I1(ballX[8]),
    .I2(ballX[7]),
    .I3(N78),
    .O(ball_inX_addsub0000[8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CollisionX1_addsub0000<6>21  (
    .I0(ballY[4]),
    .I1(ballY[5]),
    .O(\CollisionX1_addsub0000<6>_bdd2 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \add0000_addsub0000<8>1  (
    .I0(ballX[6]),
    .I1(ballX[8]),
    .I2(ballX[7]),
    .I3(N79),
    .O(add0000_addsub0000[8])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \Madd_paddle_addsub0003_xor<6>11  (
    .I0(PaddlePosition[6]),
    .I1(PaddlePosition[5]),
    .I2(PaddlePosition[4]),
    .I3(PaddlePosition[3]),
    .O(paddle_addsub0003[6])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \Madd_paddle_addsub0003_xor<5>11  (
    .I0(PaddlePosition[3]),
    .I1(PaddlePosition[5]),
    .I2(PaddlePosition[4]),
    .O(paddle_addsub0003[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \paddle_addsub0003<4>1  (
    .I0(PaddlePosition[3]),
    .I1(PaddlePosition[4]),
    .O(paddle_addsub0003[4])
  );
  LUT4 #(
    .INIT ( 16'h7222 ))
  ball_inX_mux00001 (
    .I0(ball_inX_303),
    .I1(Mcompar_ball_inX_cmp_eq0001_cy[5]),
    .I2(ball_inY_307),
    .I3(Mcompar_ball_inX_cmp_eq0000_cy[4]),
    .O(ball_inX_mux0000)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \paddle_addsub0003<8>1  (
    .I0(PaddlePosition[8]),
    .I1(PaddlePosition[7]),
    .I2(\Madd_paddle_addsub0003_cy<7>_bdd0 ),
    .O(paddle_addsub0003[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \paddle_addsub0003<7>1  (
    .I0(PaddlePosition[7]),
    .I1(\Madd_paddle_addsub0003_cy<7>_bdd0 ),
    .O(paddle_addsub0003[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Madd_paddle_addsub0003_cy<7>1  (
    .I0(PaddlePosition[7]),
    .I1(N74),
    .O(Madd_paddle_addsub0003_cy[7])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Madd_paddle_index000011 (
    .I0(PaddlePosition[5]),
    .I1(PaddlePosition[4]),
    .I2(PaddlePosition[3]),
    .O(Madd_paddle_index0000_bdd0)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  BouncingObject7 (
    .I0(\syncgen/CounterX [3]),
    .I1(\syncgen/CounterX [8]),
    .I2(\syncgen/CounterX [5]),
    .I3(\syncgen/CounterX [6]),
    .O(BouncingObject7_6)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  BouncingObject12 (
    .I0(\syncgen/CounterX [7]),
    .I1(\syncgen/CounterX [4]),
    .I2(\syncgen/CounterX [9]),
    .O(BouncingObject12_2)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  BouncingObject63 (
    .I0(BouncingObject7_6),
    .I1(BouncingObject12_2),
    .I2(N6),
    .I3(BouncingObject38_4),
    .O(BouncingObject63_5)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  BouncingObject77 (
    .I0(\syncgen/CounterY [5]),
    .I1(\syncgen/CounterY [6]),
    .O(BouncingObject77_7)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \add0000_addsub0000<9>  (
    .I0(ballX[7]),
    .I1(ballX[9]),
    .I2(ballX[8]),
    .I3(N10),
    .O(add0000_addsub0000[9])
  );
  IBUF   quadA_IBUF (
    .I(quadA),
    .O(quadA_IBUF_320)
  );
  IBUF   quadB_IBUF (
    .I(quadB),
    .O(quadB_IBUF_324)
  );
  OBUF   vga_v_sync_OBUF (
    .I(vga_v_sync_OBUF_435),
    .O(vga_v_sync)
  );
  OBUF   vga_h_sync_OBUF (
    .I(vga_h_sync_OBUF_433),
    .O(vga_h_sync)
  );
  OBUF   vga_B_OBUF (
    .I(vga_B_OBUF_428),
    .O(vga_B)
  );
  OBUF   vga_G_OBUF (
    .I(vga_R_OBUF_431),
    .O(vga_G)
  );
  OBUF   vga_R_OBUF (
    .I(vga_R_OBUF_431),
    .O(vga_R)
  );
  FDS   \syncgen/inDisplayArea  (
    .C(clk_BUFGP_310),
    .D(\syncgen/inDisplayArea_mux0000129 ),
    .S(\syncgen/inDisplayArea_mux000042_416 ),
    .Q(\syncgen/inDisplayArea_409 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \syncgen/inDisplayArea_mux00001291  (
    .I0(\syncgen/CounterXmaxed ),
    .I1(\syncgen/inDisplayArea_mux0000103_410 ),
    .O(\syncgen/inDisplayArea_mux0000129 )
  );
  FDR   \syncgen/vga_HS  (
    .C(clk_BUFGP_310),
    .D(\syncgen/vga_HS_cmp_eq00001 ),
    .R(\syncgen/CounterX [4]),
    .Q(\syncgen/vga_HS_420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<8>_rt  (
    .I0(\syncgen/CounterX [8]),
    .O(\syncgen/Mcount_CounterX_cy<8>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<7>_rt  (
    .I0(\syncgen/CounterX [7]),
    .O(\syncgen/Mcount_CounterX_cy<7>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<6>_rt  (
    .I0(\syncgen/CounterX [6]),
    .O(\syncgen/Mcount_CounterX_cy<6>_rt_363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<5>_rt  (
    .I0(\syncgen/CounterX [5]),
    .O(\syncgen/Mcount_CounterX_cy<5>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<4>_rt  (
    .I0(\syncgen/CounterX [4]),
    .O(\syncgen/Mcount_CounterX_cy<4>_rt_359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<3>_rt  (
    .I0(\syncgen/CounterX [3]),
    .O(\syncgen/Mcount_CounterX_cy<3>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<2>_rt  (
    .I0(\syncgen/CounterX [2]),
    .O(\syncgen/Mcount_CounterX_cy<2>_rt_355 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<1>_rt  (
    .I0(\syncgen/CounterX [1]),
    .O(\syncgen/Mcount_CounterX_cy<1>_rt_353 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<8>_rt  (
    .I0(\syncgen/CounterY [8]),
    .O(\syncgen/Mcount_CounterY_cy<8>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<7>_rt  (
    .I0(\syncgen/CounterY [7]),
    .O(\syncgen/Mcount_CounterY_cy<7>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<6>_rt  (
    .I0(\syncgen/CounterY [6]),
    .O(\syncgen/Mcount_CounterY_cy<6>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<5>_rt  (
    .I0(\syncgen/CounterY [5]),
    .O(\syncgen/Mcount_CounterY_cy<5>_rt_380 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<4>_rt  (
    .I0(\syncgen/CounterY [4]),
    .O(\syncgen/Mcount_CounterY_cy<4>_rt_378 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<3>_rt  (
    .I0(\syncgen/CounterY [3]),
    .O(\syncgen/Mcount_CounterY_cy<3>_rt_376 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<2>_rt  (
    .I0(\syncgen/CounterY [2]),
    .O(\syncgen/Mcount_CounterY_cy<2>_rt_374 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<1>_rt  (
    .I0(\syncgen/CounterY [1]),
    .O(\syncgen/Mcount_CounterY_cy<1>_rt_372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_xor<9>_rt  (
    .I0(\syncgen/CounterX [9]),
    .O(\syncgen/Mcount_CounterX_xor<9>_rt_369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_xor<9>_rt  (
    .I0(\syncgen/CounterY [9]),
    .O(\syncgen/Mcount_CounterY_xor<9>_rt_388 )
  );
  LUT4 #(
    .INIT ( 16'h6999 ))
  \Mcompar_paddle_cmp_ge0000_lut<7>  (
    .I0(\syncgen/CounterX [7]),
    .I1(PaddlePosition[7]),
    .I2(PaddlePosition[6]),
    .I3(Madd_paddle_index0000_bdd0),
    .O(Mcompar_paddle_cmp_ge0000_lut[7])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcompar_paddle_cmp_ge0000_lut<6>  (
    .I0(\syncgen/CounterX [6]),
    .I1(PaddlePosition[6]),
    .I2(Madd_paddle_index0000_bdd0),
    .O(Mcompar_paddle_cmp_ge0000_lut[6])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \Mcompar_paddle_cmp_le0000_lut<8>  (
    .I0(PaddlePosition[8]),
    .I1(PaddlePosition[7]),
    .I2(\syncgen/CounterX [8]),
    .I3(\Madd_paddle_addsub0003_cy<7>_bdd0 ),
    .O(Mcompar_paddle_cmp_le0000_lut[8])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcompar_paddle_cmp_le0000_lut<7>  (
    .I0(\syncgen/CounterX [7]),
    .I1(PaddlePosition[7]),
    .I2(\Madd_paddle_addsub0003_cy<7>_bdd0 ),
    .O(Mcompar_paddle_cmp_le0000_lut[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  BouncingObject113_SW0 (
    .I0(ball_inY_307),
    .I1(ball_inX_303),
    .O(N16)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  BouncingObject113_SW1 (
    .I0(BouncingObject63_5),
    .I1(Mcompar_ball_inX_cmp_eq0001_cy[5]),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'hE0 ))
  BouncingObject113_SW2 (
    .I0(BouncingObject100_1),
    .I1(BouncingObject63_5),
    .I2(Mcompar_ball_inX_cmp_eq0001_cy[5]),
    .O(N19)
  );
  LUT4 #(
    .INIT ( 16'h88A0 ))
  CollisionX2_and00001 (
    .I0(Mcompar_CollisionX1_cmp_eq0000_cy[4]),
    .I1(N19),
    .I2(N18),
    .I3(N76),
    .O(CollisionX2_and0000)
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  BouncingObject113_SW6 (
    .I0(BouncingObject100_1),
    .I1(Mcompar_ball_inY_cmp_eq0001_cy[4]),
    .I2(BouncingObject63_5),
    .O(N25)
  );
  LUT4 #(
    .INIT ( 16'hA088 ))
  CollisionY2_and00001 (
    .I0(Mcompar_CollisionY1_cmp_eq0000_cy[5]),
    .I1(N24),
    .I2(N25),
    .I3(BouncingObject92_9),
    .O(CollisionY2_and0000)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Mcompar_ball_inX_cmp_eq0001_lut<5>1  (
    .I0(Madd_add0000_index0000_bdd4),
    .I1(ballX[9]),
    .I2(ballX[7]),
    .I3(N2),
    .O(Mcompar_ball_inX_cmp_eq0001_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<5>1  (
    .I0(Madd_add0000_index0000_bdd2),
    .I1(ballX[9]),
    .I2(ballX[7]),
    .I3(N2),
    .O(Mcompar_CollisionY1_cmp_eq0000_lut[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcompar_ball_inX_cmp_eq0001_lut<3>_SW0  (
    .I0(ballX[7]),
    .I1(\syncgen/CounterX [7]),
    .O(N30)
  );
  LUT4 #(
    .INIT ( 16'h2409 ))
  \Mcompar_ball_inX_cmp_eq0001_lut<3>  (
    .I0(ballX[6]),
    .I1(\syncgen/CounterX [6]),
    .I2(N30),
    .I3(Madd_add0000_index0000_bdd4),
    .O(Mcompar_ball_inX_cmp_eq0001_lut[3])
  );
  LUT4 #(
    .INIT ( 16'h0861 ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<3>  (
    .I0(Madd_add0000_index0000_bdd2),
    .I1(ballX[6]),
    .I2(\syncgen/CounterX [6]),
    .I3(N30),
    .O(Mcompar_CollisionY1_cmp_eq0000_lut[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<3>_SW0  (
    .I0(ballY[7]),
    .I1(\syncgen/CounterY [7]),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'h0861 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<3>  (
    .I0(\CollisionX1_addsub0000<6>_bdd2 ),
    .I1(ballY[6]),
    .I2(\syncgen/CounterY [6]),
    .I3(N34),
    .O(Mcompar_ball_inY_cmp_eq0001_lut[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<3>_SW0  (
    .I0(ballY[7]),
    .I1(\syncgen/CounterY [7]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'h9204 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<3>  (
    .I0(\CollisionX1_addsub0000<6>_bdd0 ),
    .I1(ballY[6]),
    .I2(\syncgen/CounterY [6]),
    .I3(N36),
    .O(Mcompar_CollisionX1_cmp_eq0000_lut[3])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \CollisionX1_addsub0000<6>11  (
    .I0(ballY[3]),
    .I1(ballY[4]),
    .I2(ballY[5]),
    .O(\CollisionX1_addsub0000<6>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hBE ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<4>_SW0  (
    .I0(\syncgen/CounterY [9]),
    .I1(ballY[8]),
    .I2(\syncgen/CounterY [8]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hF97E ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<4>_SW1  (
    .I0(ballY[6]),
    .I1(ballY[8]),
    .I2(\syncgen/CounterY [9]),
    .I3(\syncgen/CounterY [8]),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'h2373 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<4>  (
    .I0(\CollisionX1_addsub0000<6>_bdd0 ),
    .I1(N38),
    .I2(ballY[7]),
    .I3(N39),
    .O(Mcompar_CollisionX1_cmp_eq0000_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h078F ))
  B_inv1 (
    .I0(paddle_cmp_ge0000),
    .I1(paddle_cmp_le0000),
    .I2(N44),
    .I3(N45),
    .O(B_inv)
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \ball_inX_addsub0000<9>  (
    .I0(ballX[8]),
    .I1(ballX[9]),
    .I2(ballX[6]),
    .I3(N47),
    .O(ball_inX_addsub0000[9])
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  CollisionX1_and00001 (
    .I0(paddle_cmp_ge0000),
    .I1(paddle_cmp_le0000),
    .I2(N50),
    .I3(N49),
    .O(CollisionX1_and0000)
  );
  LUT4 #(
    .INIT ( 16'hC840 ))
  CollisionY1_and00001 (
    .I0(paddle_cmp_le0000),
    .I1(Mcompar_CollisionY1_cmp_eq0000_cy[5]),
    .I2(N52),
    .I3(N53),
    .O(CollisionY1_and0000)
  );
  LUT4 #(
    .INIT ( 16'h6999 ))
  \Mcompar_paddle_cmp_ge0000_lut<5>  (
    .I0(\syncgen/CounterX [5]),
    .I1(PaddlePosition[5]),
    .I2(PaddlePosition[3]),
    .I3(PaddlePosition[4]),
    .O(Mcompar_paddle_cmp_ge0000_lut[5])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcompar_paddle_cmp_ge0000_lut<4>  (
    .I0(\syncgen/CounterX [4]),
    .I1(PaddlePosition[3]),
    .I2(PaddlePosition[4]),
    .O(Mcompar_paddle_cmp_ge0000_lut[4])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  BouncingObject38 (
    .I0(\syncgen/CounterY [7]),
    .I1(\syncgen/CounterY [8]),
    .I2(BouncingObject33_3),
    .O(BouncingObject38_4)
  );
  LUT4 #(
    .INIT ( 16'hF080 ))
  BouncingObject92_SW4 (
    .I0(BouncingObject89_8),
    .I1(BouncingObject100_1),
    .I2(Mcompar_ball_inY_cmp_eq0000_cy[5]),
    .I3(BouncingObject63_5),
    .O(N52)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcompar_paddle_cmp_ge0000_lut<3>  (
    .I0(\syncgen/CounterX [3]),
    .I1(PaddlePosition[3]),
    .O(Mcompar_paddle_cmp_ge0000_lut[3])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  BouncingObject92_SW5_SW0 (
    .I0(BouncingObject89_8),
    .I1(BouncingObject100_1),
    .I2(BouncingObject63_5),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hFFC8 ))
  BouncingObject92_SW5_SW1 (
    .I0(N75),
    .I1(BouncingObject100_1),
    .I2(BouncingObject77_7),
    .I3(BouncingObject63_5),
    .O(N58)
  );
  LUT4 #(
    .INIT ( 16'hA080 ))
  BouncingObject92_SW2 (
    .I0(Mcompar_ball_inX_cmp_eq0000_cy[4]),
    .I1(N60),
    .I2(Mcompar_CollisionX1_cmp_eq0000_cy[4]),
    .I3(BouncingObject63_5),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'h2148 ))
  \Mcompar_ball_inX_cmp_eq0001_lut<2>  (
    .I0(ballX[5]),
    .I1(ballX[4]),
    .I2(\syncgen/CounterX [5]),
    .I3(\syncgen/CounterX [4]),
    .O(Mcompar_ball_inX_cmp_eq0001_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h2148 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<2>  (
    .I0(\syncgen/CounterY [5]),
    .I1(ballY[4]),
    .I2(ballY[5]),
    .I3(\syncgen/CounterY [4]),
    .O(Mcompar_ball_inY_cmp_eq0001_lut[2])
  );
  LUT4 #(
    .INIT ( 16'hF666 ))
  PaddlePosition_not000161 (
    .I0(quadAr[1]),
    .I1(quadBr[2]),
    .I2(PaddlePosition_not000174_238),
    .I3(PaddlePosition_not0001711_237),
    .O(PaddlePosition_not0001_bdd1)
  );
  LUT4 #(
    .INIT ( 16'h6006 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<1>  (
    .I0(ballY[3]),
    .I1(\syncgen/CounterY [3]),
    .I2(ballY[2]),
    .I3(\syncgen/CounterY [2]),
    .O(Mcompar_CollisionX1_cmp_eq0000_lut[1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<4>_SW2  (
    .I0(ballY[5]),
    .I1(ballY[4]),
    .I2(ballY[7]),
    .I3(ballY[6]),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'h0861 ))
  \Mcompar_ball_inY_cmp_eq0001_lut<4>  (
    .I0(N62),
    .I1(ballY[8]),
    .I2(\syncgen/CounterY [8]),
    .I3(\syncgen/CounterY [9]),
    .O(Mcompar_ball_inY_cmp_eq0001_lut[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<2>_SW0  (
    .I0(\syncgen/CounterY [5]),
    .I1(ballY[5]),
    .O(N64)
  );
  LUT4 #(
    .INIT ( 16'h0861 ))
  \Mcompar_CollisionX1_cmp_eq0000_lut<2>  (
    .I0(ballY[3]),
    .I1(ballY[4]),
    .I2(\syncgen/CounterY [4]),
    .I3(N64),
    .O(Mcompar_CollisionX1_cmp_eq0000_lut[2])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \Mcompar_paddle_cmp_le0000_lut<5>  (
    .I0(PaddlePosition[5]),
    .I1(PaddlePosition[3]),
    .I2(\syncgen/CounterX [5]),
    .I3(PaddlePosition[4]),
    .O(Mcompar_paddle_cmp_le0000_lut[5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mcompar_paddle_cmp_le0000_lut<4>  (
    .I0(PaddlePosition[3]),
    .I1(PaddlePosition[4]),
    .I2(\syncgen/CounterX [4]),
    .O(Mcompar_paddle_cmp_le0000_lut[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcompar_paddle_cmp_le0000_lut<3>  (
    .I0(PaddlePosition[3]),
    .I1(\syncgen/CounterX [3]),
    .O(Mcompar_paddle_cmp_le0000_lut[3])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Mcompar_paddle_cmp_ge0000_lut<8>_SW0  (
    .I0(PaddlePosition[5]),
    .I1(PaddlePosition[4]),
    .I2(PaddlePosition[3]),
    .I3(PaddlePosition[7]),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hC369 ))
  \Mcompar_paddle_cmp_ge0000_lut<8>  (
    .I0(PaddlePosition[6]),
    .I1(\syncgen/CounterX [8]),
    .I2(PaddlePosition[8]),
    .I3(N66),
    .O(Mcompar_paddle_cmp_ge0000_lut[8])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Mcompar_paddle_cmp_ge0000_lut<9>_SW0  (
    .I0(PaddlePosition[4]),
    .I1(PaddlePosition[3]),
    .I2(PaddlePosition[7]),
    .I3(PaddlePosition[8]),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'h0F87 ))
  \Mcompar_paddle_cmp_ge0000_lut<9>  (
    .I0(PaddlePosition[6]),
    .I1(PaddlePosition[5]),
    .I2(\syncgen/CounterX [9]),
    .I3(N68),
    .O(Mcompar_paddle_cmp_ge0000_lut[9])
  );
  MUXF5   BouncingObject92_SW1 (
    .I0(N70),
    .I1(N1),
    .S(BouncingObject63_5),
    .O(N45)
  );
  LUT4 #(
    .INIT ( 16'hFFC8 ))
  BouncingObject92_SW1_F (
    .I0(BouncingObject89_8),
    .I1(BouncingObject100_1),
    .I2(BouncingObject77_7),
    .I3(N16),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'h6006 ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<1>  (
    .I0(ballX[3]),
    .I1(\syncgen/CounterX [3]),
    .I2(ballX[2]),
    .I3(\syncgen/CounterX [2]),
    .O(Mcompar_CollisionY1_cmp_eq0000_lut[1])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  ResetCollision_cmp_eq0000_inv33 (
    .I0(\syncgen/CounterY [1]),
    .I1(\syncgen/CounterY [0]),
    .I2(ResetCollision_cmp_eq0000_inv12_246),
    .I3(ResetCollision_cmp_eq0000_inv31_247),
    .O(ResetCollision_cmp_eq0000_inv)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<2>_SW0  (
    .I0(ballX[5]),
    .I1(\syncgen/CounterX [5]),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'h0861 ))
  \Mcompar_CollisionY1_cmp_eq0000_lut<2>  (
    .I0(ballX[3]),
    .I1(ballX[4]),
    .I2(\syncgen/CounterX [4]),
    .I3(N72),
    .O(Mcompar_CollisionY1_cmp_eq0000_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/inDisplayArea_mux0000317  (
    .I0(\syncgen/inDisplayArea_mux000034_414 ),
    .I1(\syncgen/CounterX [0]),
    .I2(\syncgen/CounterX [2]),
    .I3(\syncgen/inDisplayArea_mux0000310_413 ),
    .O(\syncgen/CounterXmaxed )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \syncgen/CounterYmaxed20  (
    .I0(\syncgen/CounterYmaxed12_349 ),
    .I1(\syncgen/CounterY [9]),
    .I2(\syncgen/CounterYmaxed4_350 ),
    .I3(\syncgen/CounterY [8]),
    .O(\syncgen/CounterYmaxed )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \syncgen/vga_VS_cmp_eq000039  (
    .I0(\syncgen/vga_VS_cmp_eq000012_425 ),
    .I1(\syncgen/vga_VS_cmp_eq000037_426 ),
    .I2(\syncgen/CounterY [9]),
    .I3(\syncgen/CounterY [8]),
    .O(\syncgen/vga_VS_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mcount_PaddlePosition_lut<0>  (
    .I0(PaddlePosition[0]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<1>  (
    .I0(PaddlePosition[1]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<2>  (
    .I0(PaddlePosition[2]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<3>  (
    .I0(PaddlePosition[3]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<4>  (
    .I0(PaddlePosition[4]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[4])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<5>  (
    .I0(PaddlePosition[5]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[5])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<6>  (
    .I0(PaddlePosition[6]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[6])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<7>  (
    .I0(PaddlePosition[7]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[7])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_PaddlePosition_lut<8>  (
    .I0(PaddlePosition[8]),
    .I1(quadBr[1]),
    .I2(quadAr[2]),
    .O(Mcount_PaddlePosition_lut[8])
  );
  LUT4 #(
    .INIT ( 16'h2808 ))
  BouncingObject92_SW3_SW0 (
    .I0(N77),
    .I1(\syncgen/CounterY [5]),
    .I2(\syncgen/CounterY [6]),
    .I3(\syncgen/CounterY [3]),
    .O(N55)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_310)
  );
  INV   \Maccum_ballX_lut<0>_INV_0  (
    .I(ballX[0]),
    .O(Maccum_ballX_lut[0])
  );
  INV   \Maccum_ballY_lut<0>_INV_0  (
    .I(ballY[0]),
    .O(Maccum_ballY_lut[0])
  );
  INV   \Mcompar_ball_inY_cmp_eq0000_lut<0>_INV_0  (
    .I(\syncgen/CounterY [9]),
    .O(Mcompar_ball_inY_cmp_eq0000_lut[0])
  );
  INV   \syncgen/Mcount_CounterX_lut<0>_INV_0  (
    .I(\syncgen/CounterX [0]),
    .O(\syncgen/Mcount_CounterX_lut [0])
  );
  INV   \syncgen/Mcount_CounterY_lut<0>_INV_0  (
    .I(\syncgen/CounterY [0]),
    .O(\syncgen/Mcount_CounterY_lut [0])
  );
  INV   \syncgen/vga_v_sync1_INV_0  (
    .I(\syncgen/vga_VS_423 ),
    .O(vga_v_sync_OBUF_435)
  );
  INV   \syncgen/vga_h_sync1_INV_0  (
    .I(\syncgen/vga_HS_420 ),
    .O(vga_h_sync_OBUF_433)
  );
  INV   \paddle_addsub0002<3>1_INV_0  (
    .I(PaddlePosition[3]),
    .O(paddle_addsub0002[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncgen/vga_HS_cmp_eq000011  (
    .I0(\syncgen/CounterX [5]),
    .I1(\syncgen/CounterX [6]),
    .I2(\syncgen/CounterX [7]),
    .I3(\syncgen/CounterX [8]),
    .O(\syncgen/vga_HS_cmp_eq000011_422 )
  );
  MUXF5   \syncgen/vga_HS_cmp_eq00001_f5  (
    .I0(\syncgen/vga_HS_cmp_eq000011_422 ),
    .I1(N0),
    .S(\syncgen/CounterX [9]),
    .O(\syncgen/vga_HS_cmp_eq00001 )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  PaddlePosition_not000174 (
    .I0(PaddlePosition[5]),
    .I1(PaddlePosition[4]),
    .I2(PaddlePosition[3]),
    .I3(PaddlePosition[2]),
    .LO(PaddlePosition_not000174_238)
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  PaddlePosition_not000176 (
    .I0(PaddlePosition[1]),
    .I1(PaddlePosition[0]),
    .LO(PaddlePosition_not000176_239)
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  PaddlePosition_not0001312 (
    .I0(PaddlePosition[7]),
    .I1(PaddlePosition[6]),
    .LO(PaddlePosition_not0001312_234)
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  BouncingObject1_SW0 (
    .I0(\syncgen/CounterX [7]),
    .I1(\syncgen/CounterX [9]),
    .I2(\syncgen/CounterX [8]),
    .I3(\syncgen/CounterX [6]),
    .LO(N4)
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \Madd_paddle_addsub0003_cy<7>21  (
    .I0(PaddlePosition[6]),
    .I1(PaddlePosition[5]),
    .I2(PaddlePosition[4]),
    .I3(PaddlePosition[3]),
    .LO(N74),
    .O(\Madd_paddle_addsub0003_cy<7>_bdd0 )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  BouncingObject33 (
    .I0(\syncgen/CounterY [4]),
    .I1(\syncgen/CounterY [3]),
    .I2(\syncgen/CounterY [6]),
    .I3(\syncgen/CounterY [5]),
    .LO(BouncingObject33_3)
  );
  LUT3_D #(
    .INIT ( 8'h20 ))
  BouncingObject89 (
    .I0(\syncgen/CounterY [6]),
    .I1(\syncgen/CounterY [5]),
    .I2(\syncgen/CounterY [3]),
    .LO(N75),
    .O(BouncingObject89_8)
  );
  LUT4_D #(
    .INIT ( 16'hECCC ))
  BouncingObject92 (
    .I0(BouncingObject77_7),
    .I1(BouncingObject89_8),
    .I2(paddle_cmp_ge0000),
    .I3(paddle_cmp_le0000),
    .LO(N76),
    .O(BouncingObject92_9)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  BouncingObject100 (
    .I0(\syncgen/CounterY [4]),
    .I1(\syncgen/CounterY [7]),
    .I2(\syncgen/CounterY [8]),
    .LO(N77),
    .O(BouncingObject100_1)
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  Madd_add0000_index000031 (
    .I0(ballX[4]),
    .I1(ballX[5]),
    .LO(N78),
    .O(Madd_add0000_index0000_bdd4)
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  BouncingObject113_SW5 (
    .I0(Mcompar_ball_inY_cmp_eq0001_cy[4]),
    .I1(BouncingObject63_5),
    .LO(N24)
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \add0000_addsub0000<9>_SW0  (
    .I0(ballX[6]),
    .I1(ballX[3]),
    .I2(ballX[4]),
    .I3(ballX[5]),
    .LO(N10)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  Madd_add0000_index000021 (
    .I0(ballX[3]),
    .I1(ballX[4]),
    .I2(ballX[5]),
    .LO(N79),
    .O(Madd_add0000_index0000_bdd2)
  );
  LUT4_L #(
    .INIT ( 16'hFFEA ))
  BouncingObject92_SW0 (
    .I0(N16),
    .I1(BouncingObject89_8),
    .I2(BouncingObject100_1),
    .I3(BouncingObject63_5),
    .LO(N44)
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \ball_inX_addsub0000<9>_SW0  (
    .I0(ballX[5]),
    .I1(ballX[4]),
    .I2(ballX[7]),
    .LO(N47)
  );
  LUT4_L #(
    .INIT ( 16'hA080 ))
  BouncingObject92_SW3 (
    .I0(Mcompar_ball_inX_cmp_eq0000_cy[4]),
    .I1(N55),
    .I2(Mcompar_CollisionX1_cmp_eq0000_cy[4]),
    .I3(BouncingObject63_5),
    .LO(N50)
  );
  LUT4_L #(
    .INIT ( 16'hA280 ))
  BouncingObject92_SW5 (
    .I0(Mcompar_ball_inY_cmp_eq0000_cy[5]),
    .I1(paddle_cmp_ge0000),
    .I2(N58),
    .I3(N57),
    .LO(N53)
  );
  LUT4_L #(
    .INIT ( 16'hF999 ))
  PaddlePosition_not000121 (
    .I0(quadAr[1]),
    .I1(quadBr[2]),
    .I2(PaddlePosition_not0001317_235),
    .I3(PaddlePosition_not0001332_236),
    .LO(PaddlePosition_not0001_bdd0)
  );
  LUT4_L #(
    .INIT ( 16'h0080 ))
  BouncingObject92_SW2_SW0 (
    .I0(BouncingObject100_1),
    .I1(\syncgen/CounterY [6]),
    .I2(\syncgen/CounterY [3]),
    .I3(\syncgen/CounterY [5]),
    .LO(N60)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_quadBr_1 (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk_BUFGP_310),
    .D(quadB_IBUF_324),
    .Q(Mshreg_quadBr_1_184)
  );
  FD   quadBr_1 (
    .C(clk_BUFGP_310),
    .D(Mshreg_quadBr_1_184),
    .Q(quadBr[1])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_quadAr_1 (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk_BUFGP_310),
    .D(quadA_IBUF_320),
    .Q(Mshreg_quadAr_1_183)
  );
  FD   quadAr_1 (
    .C(clk_BUFGP_310),
    .D(Mshreg_quadAr_1_183),
    .Q(quadAr[1])
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

