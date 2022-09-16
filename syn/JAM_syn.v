/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Tue Aug 30 01:43:57 2022
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U3 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U4 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
  AND2X2 U5 ( .A(A[7]), .B(carry[7]), .Y(n2) );
  AND2X2 U6 ( .A(A[8]), .B(n2), .Y(n3) );
  XOR2X1 U7 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
endmodule


module JAM_DW01_add_1 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X2 U3 ( .A(A[7]), .B(carry[7]), .Y(n2) );
  AND2X2 U4 ( .A(A[8]), .B(n2), .Y(n3) );
  XOR2X1 U5 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
  XOR2X1 U6 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XOR2X1 U7 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, \array[0][2] , \array[0][1] , \array[0][0] ,
         \array[1][2] , \array[1][1] , \array[1][0] , \array[2][2] ,
         \array[2][1] , \array[2][0] , \array[3][2] , \array[3][1] ,
         \array[3][0] , \array[4][2] , \array[4][1] , \array[4][0] ,
         \array[5][2] , \array[5][1] , \array[5][0] , \array[6][2] ,
         \array[6][1] , \array[6][0] , \array[7][2] , \array[7][1] ,
         \array[7][0] , N93, N94, \cnt_read[3] , N106, N107, N108, N109, N110,
         N111, N159, N160, N252, N253, N254, N255, N256, N257, N382, N383,
         N384, N420, N421, N422, N423, N424, N425, N426, N427, N428, N429,
         N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N441,
         N442, N480, N481, N482, N483, N569, n86, n89, n93, n105, n150, n154,
         n157, n158, n159, n162, n163, n165, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, N604,
         N603, N602, N601, N600, N599, N598, N597, N596, N595, n477, n478,
         n479, n480, n481, n483, n485, n487, n489, n491, n492, n493, n494,
         n497, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743;
  wire   [1:0] cur_state;
  wire   [3:0] min;
  wire   [9:0] sum;

  JAM_DW01_add_0 add_239 ( .A(sum), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), 
        .SUM({N439, N438, N437, N436, N435, N434, N433, N432, N431, N430}) );
  JAM_DW01_add_1 add_227_aco ( .A({N604, N603, N602, N601, N600, N599, N598, 
        N597, N596, N595}), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({
        N429, N428, N427, N426, N425, N424, N423, N422, N421, N420}) );
  DFFX1 \min_reg[3]  ( .D(n446), .CK(CLK), .QN(n86) );
  DFFX1 \min_reg[0]  ( .D(n449), .CK(CLK), .QN(n89) );
  EDFFTRX1 \min_addr_reg[2]  ( .RN(n541), .D(N82), .E(n680), .CK(CLK), .Q(N88), 
        .QN(n93) );
  EDFFTRX1 \point_reg[2]  ( .RN(n541), .D(n695), .E(n679), .CK(CLK), .Q(N85), 
        .QN(n105) );
  DFFX1 \sum_reg[8]  ( .D(n413), .CK(CLK), .Q(sum[8]), .QN(n157) );
  DFFX1 \sum_reg[7]  ( .D(n414), .CK(CLK), .Q(sum[7]), .QN(n158) );
  DFFX1 \sum_reg[9]  ( .D(n412), .CK(CLK), .Q(sum[9]), .QN(n154) );
  DFFX1 \MatchCount_reg[3]  ( .D(n398), .CK(CLK), .Q(n747), .QN(n150) );
  EDFFTRX1 \min_addr_reg[1]  ( .RN(n541), .D(N81), .E(n680), .CK(CLK), .Q(N87), 
        .QN(n596) );
  EDFFTRX1 \min_addr_reg[0]  ( .RN(n480), .D(N80), .E(n680), .CK(CLK), .Q(N86), 
        .QN(n595) );
  DFFX1 \cnt_read_reg[0]  ( .D(N480), .CK(CLK), .Q(N89), .QN(n676) );
  DFFX1 \array_reg[2][1]  ( .D(n426), .CK(CLK), .Q(\array[2][1] ), .QN(n729)
         );
  DFFX1 \array_reg[0][2]  ( .D(n420), .CK(CLK), .Q(\array[0][2] ), .QN(n711)
         );
  DFFX1 \array_reg[0][1]  ( .D(n445), .CK(CLK), .Q(\array[0][1] ), .QN(n689)
         );
  DFFX1 \array_reg[1][1]  ( .D(n423), .CK(CLK), .Q(\array[1][1] ), .QN(n720)
         );
  DFFX1 \n_point_reg[2]  ( .D(n416), .CK(CLK), .Q(N82), .QN(n558) );
  DFFX1 \array_reg[2][0]  ( .D(n427), .CK(CLK), .Q(\array[2][0] ), .QN(n731)
         );
  DFFX1 \array_reg[4][0]  ( .D(n433), .CK(CLK), .Q(\array[4][0] ), .QN(n733)
         );
  DFFX1 \n_point_reg[0]  ( .D(n418), .CK(CLK), .Q(N80), .QN(n560) );
  DFFX1 \n_point_reg[1]  ( .D(n417), .CK(CLK), .Q(N81), .QN(n559) );
  DFFX1 \array_reg[1][0]  ( .D(n424), .CK(CLK), .Q(\array[1][0] ), .QN(n721)
         );
  DFFX1 \MinCost_reg[3]  ( .D(n404), .CK(CLK), .Q(n757), .QN(n639) );
  DFFX1 \MinCost_reg[2]  ( .D(n403), .CK(CLK), .Q(n758), .QN(n640) );
  DFFX1 \MinCost_reg[9]  ( .D(n411), .CK(CLK), .Q(n751), .QN(n636) );
  DFFX1 \MinCost_reg[7]  ( .D(n408), .CK(CLK), .Q(n753), .QN(n637) );
  DFFX1 \MinCost_reg[6]  ( .D(n407), .CK(CLK), .Q(n754), .QN(n638) );
  DFFX1 \MinCost_reg[4]  ( .D(n405), .CK(CLK), .Q(n756) );
  DFFX1 \MinCost_reg[8]  ( .D(n409), .CK(CLK), .Q(n752) );
  DFFX1 \MinCost_reg[5]  ( .D(n406), .CK(CLK), .Q(n755) );
  DFFX1 \MinCost_reg[1]  ( .D(n402), .CK(CLK), .Q(n759), .QN(n641) );
  DFFX1 \MinCost_reg[0]  ( .D(n410), .CK(CLK), .Q(n760) );
  DFFX1 \cnt_read_reg[3]  ( .D(N483), .CK(CLK), .Q(\cnt_read[3] ), .QN(n739)
         );
  DFFX1 \cur_state_reg[0]  ( .D(N93), .CK(CLK), .Q(cur_state[0]), .QN(n715) );
  DFFX1 \cur_state_reg[1]  ( .D(N94), .CK(CLK), .Q(cur_state[1]), .QN(n682) );
  DFFX1 \MatchCount_reg[0]  ( .D(n400), .CK(CLK), .Q(n750), .QN(n741) );
  DFFX1 \array_reg[0][0]  ( .D(n421), .CK(CLK), .Q(\array[0][0] ), .QN(n712)
         );
  DFFX1 \MatchCount_reg[1]  ( .D(n401), .CK(CLK), .Q(n749), .QN(n742) );
  DFFX1 \MatchCount_reg[2]  ( .D(n399), .CK(CLK), .Q(n748), .QN(n743) );
  DFFX1 Valid_reg ( .D(n419), .CK(CLK), .Q(n761) );
  DFFX1 \point_reg[0]  ( .D(n444), .CK(CLK), .Q(N83), .QN(n479) );
  DFFX1 \point_reg[1]  ( .D(n443), .CK(CLK), .Q(N84), .QN(n478) );
  DFFX1 \min_reg[2]  ( .D(n447), .CK(CLK), .Q(min[2]), .QN(n737) );
  DFFX1 \min_reg[1]  ( .D(n448), .CK(CLK), .Q(min[1]), .QN(n738) );
  DFFX1 \W_reg[2]  ( .D(n415), .CK(CLK), .Q(n746) );
  EDFFXL \sum_reg[4]  ( .D(n649), .E(n193), .CK(CLK), .Q(sum[4]), .QN(n645) );
  EDFFXL \sum_reg[1]  ( .D(n652), .E(n193), .CK(CLK), .Q(sum[1]), .QN(n646) );
  EDFFXL \sum_reg[5]  ( .D(n648), .E(n193), .CK(CLK), .Q(sum[5]), .QN(n644) );
  EDFFHQX1 \W_reg[1]  ( .D(n216), .E(n217), .CK(CLK), .Q(n491) );
  EDFFHQX1 \W_reg[0]  ( .D(n221), .E(n217), .CK(CLK), .Q(n492) );
  EDFFHQX1 \J_reg[2]  ( .D(n658), .E(n217), .CK(CLK), .Q(n493) );
  EDFFHQX1 \J_reg[1]  ( .D(n659), .E(n217), .CK(CLK), .Q(n494) );
  EDFFHQX1 \J_reg[0]  ( .D(n660), .E(n217), .CK(CLK), .Q(n497) );
  DFFX2 \array_reg[5][0]  ( .D(n436), .CK(CLK), .Q(\array[5][0] ), .QN(n713)
         );
  DFFX2 \array_reg[5][2]  ( .D(n434), .CK(CLK), .Q(\array[5][2] ), .QN(n725)
         );
  DFFX2 \array_reg[5][1]  ( .D(n435), .CK(CLK), .Q(\array[5][1] ), .QN(n734)
         );
  DFFX2 \array_reg[6][2]  ( .D(n437), .CK(CLK), .Q(\array[6][2] ), .QN(n726)
         );
  DFFX2 \array_reg[6][0]  ( .D(n439), .CK(CLK), .Q(\array[6][0] ), .QN(n730)
         );
  DFFX2 \array_reg[6][1]  ( .D(n438), .CK(CLK), .Q(\array[6][1] ), .QN(n728)
         );
  DFFX2 \array_reg[3][1]  ( .D(n429), .CK(CLK), .Q(\array[3][1] ), .QN(n710)
         );
  DFFX2 \array_reg[7][2]  ( .D(n440), .CK(CLK), .Q(\array[7][2] ), .QN(n716)
         );
  DFFX2 \cnt_read_reg[1]  ( .D(N481), .CK(CLK), .Q(N90), .QN(n613) );
  DFFX2 \array_reg[2][2]  ( .D(n425), .CK(CLK), .Q(\array[2][2] ), .QN(n727)
         );
  DFFX2 \array_reg[3][2]  ( .D(n428), .CK(CLK), .Q(\array[3][2] ), .QN(n722)
         );
  DFFX2 \array_reg[3][0]  ( .D(n430), .CK(CLK), .Q(\array[3][0] ), .QN(n736)
         );
  DFFX2 \array_reg[7][1]  ( .D(n441), .CK(CLK), .Q(\array[7][1] ), .QN(n707)
         );
  DFFX2 \array_reg[1][2]  ( .D(n422), .CK(CLK), .Q(\array[1][2] ), .QN(n719)
         );
  DFFX2 \array_reg[7][0]  ( .D(n442), .CK(CLK), .Q(\array[7][0] ), .QN(n694)
         );
  DFFX2 \array_reg[4][2]  ( .D(n431), .CK(CLK), .Q(\array[4][2] ), .QN(n732)
         );
  EDFFX1 \sum_reg[0]  ( .D(n653), .E(n193), .CK(CLK), .Q(sum[0]), .QN(n165) );
  DFFX2 \array_reg[4][1]  ( .D(n432), .CK(CLK), .Q(\array[4][1] ), .QN(n735)
         );
  EDFFX1 \sum_reg[2]  ( .D(n651), .E(n193), .CK(CLK), .Q(sum[2]), .QN(n163) );
  EDFFX1 \sum_reg[6]  ( .D(n647), .E(n193), .CK(CLK), .Q(sum[6]), .QN(n159) );
  EDFFX1 \sum_reg[3]  ( .D(n650), .E(n193), .CK(CLK), .Q(sum[3]), .QN(n162) );
  DFFX1 \cnt_read_reg[2]  ( .D(N482), .CK(CLK), .Q(N91), .QN(n678) );
  OAI31XL U423 ( .A0(n354), .A1(\array[2][0] ), .A2(n355), .B0(n708), .Y(n342)
         );
  OAI211X1 U424 ( .A0(n532), .A1(n269), .B0(n279), .C0(n291), .Y(n280) );
  OAI211X1 U425 ( .A0(n531), .A1(n324), .B0(n279), .C0(n329), .Y(n322) );
  OAI211X1 U426 ( .A0(n531), .A1(n295), .B0(n303), .C0(n304), .Y(n292) );
  OAI211X1 U427 ( .A0(n531), .A1(n534), .B0(n263), .C0(n264), .Y(n253) );
  OAI211X1 U428 ( .A0(n531), .A1(n533), .B0(n369), .C0(n541), .Y(n248) );
  OAI211X1 U429 ( .A0(n531), .A1(n269), .B0(n278), .C0(n279), .Y(n266) );
  OA21XL U430 ( .A0(n675), .A1(n748), .B0(n172), .Y(n171) );
  OA22X1 U431 ( .A0(n93), .A1(n582), .B0(N88), .B1(n581), .Y(n477) );
  CLKINVX1 U432 ( .A(RST), .Y(n480) );
  CLKBUFX3 U433 ( .A(N83), .Y(n540) );
  NOR4X1 U434 ( .A(n676), .B(N90), .C(N91), .D(\cnt_read[3] ), .Y(n219) );
  OAI31X1 U435 ( .A0(n361), .A1(\array[4][0] ), .A2(n362), .B0(n724), .Y(n241)
         );
  NAND4XL U436 ( .A(N81), .B(N82), .C(N80), .D(n392), .Y(n382) );
  NAND3XL U437 ( .A(N82), .B(n666), .C(N81), .Y(n233) );
  NAND3X2 U438 ( .A(n204), .B(n532), .C(n205), .Y(n193) );
  OAI32XL U439 ( .A0(n362), .A1(\array[4][1] ), .A2(n734), .B0(n725), .B1(
        \array[4][2] ), .Y(n363) );
  OA22XL U440 ( .A0(\array[4][2] ), .A1(n478), .B0(\array[2][2] ), .B1(n539), 
        .Y(n526) );
  NOR4XL U441 ( .A(N91), .B(N90), .C(N89), .D(n739), .Y(n392) );
  NAND2XL U442 ( .A(N90), .B(N89), .Y(n395) );
  OAI32XL U443 ( .A0(n365), .A1(\array[6][1] ), .A2(n707), .B0(n716), .B1(
        \array[6][2] ), .Y(n366) );
  OAI32XL U444 ( .A0(n348), .A1(\array[5][1] ), .A2(n728), .B0(n726), .B1(
        \array[5][2] ), .Y(n349) );
  OAI31X1 U445 ( .A0(n347), .A1(\array[5][0] ), .A2(n348), .B0(n723), .Y(n239)
         );
  INVXL U446 ( .A(n497), .Y(n481) );
  INVX12 U447 ( .A(n481), .Y(J[0]) );
  INVXL U448 ( .A(n494), .Y(n483) );
  INVX12 U449 ( .A(n483), .Y(J[1]) );
  INVXL U450 ( .A(n493), .Y(n485) );
  INVX12 U451 ( .A(n485), .Y(J[2]) );
  INVXL U452 ( .A(n492), .Y(n487) );
  INVX12 U453 ( .A(n487), .Y(W[0]) );
  INVXL U454 ( .A(n491), .Y(n489) );
  INVX12 U455 ( .A(n489), .Y(W[1]) );
  OAI22X1 U456 ( .A0(sum[9]), .A1(n636), .B0(n642), .B1(n629), .Y(N441) );
  OAI22X1 U457 ( .A0(n93), .A1(n586), .B0(N88), .B1(n585), .Y(N160) );
  OAI22X1 U458 ( .A0(n105), .A1(n564), .B0(n538), .B1(n563), .Y(N111) );
  OAI22X1 U459 ( .A0(n558), .A1(n549), .B0(N82), .B1(n548), .Y(N107) );
  OAI22X1 U460 ( .A0(n576), .A1(n105), .B0(n538), .B1(n575), .Y(N109) );
  INVX12 U461 ( .A(n742), .Y(MatchCount[1]) );
  BUFX12 U462 ( .A(n755), .Y(MinCost[5]) );
  OAI22X1 U463 ( .A0(n557), .A1(n558), .B0(N82), .B1(n556), .Y(N106) );
  OAI22X1 U464 ( .A0(n105), .A1(n568), .B0(n538), .B1(n567), .Y(N110) );
  BUFX12 U465 ( .A(n747), .Y(MatchCount[3]) );
  BUFX12 U466 ( .A(n761), .Y(Valid) );
  BUFX12 U467 ( .A(n746), .Y(W[2]) );
  INVX12 U468 ( .A(n638), .Y(MinCost[6]) );
  INVX12 U469 ( .A(n640), .Y(MinCost[2]) );
  INVX12 U470 ( .A(n637), .Y(MinCost[7]) );
  INVX12 U471 ( .A(n636), .Y(MinCost[9]) );
  INVX12 U472 ( .A(n743), .Y(MatchCount[2]) );
  BUFX16 U473 ( .A(n760), .Y(MinCost[0]) );
  INVX12 U474 ( .A(n641), .Y(MinCost[1]) );
  INVX12 U475 ( .A(n639), .Y(MinCost[3]) );
  BUFX12 U476 ( .A(n756), .Y(MinCost[4]) );
  INVX12 U477 ( .A(n741), .Y(MatchCount[0]) );
  BUFX12 U478 ( .A(n752), .Y(MinCost[8]) );
  AOI32XL U479 ( .A0(n628), .A1(n643), .A2(n627), .B0(n752), .B1(n157), .Y(
        n629) );
  NAND3BXL U480 ( .AN(N441), .B(n631), .C(n630), .Y(n634) );
  INVXL U481 ( .A(N107), .Y(n686) );
  AOI22X1 U482 ( .A0(N439), .A1(n661), .B0(N429), .B1(n666), .Y(n194) );
  NAND2X1 U483 ( .A(n512), .B(n194), .Y(n412) );
  AO21XL U484 ( .A0(n646), .A1(n619), .B0(n759), .Y(n618) );
  NOR2BXL U485 ( .AN(MinCost[0]), .B(sum[0]), .Y(n619) );
  NOR2BXL U486 ( .AN(sum[3]), .B(n757), .Y(n633) );
  NOR2XL U487 ( .A(n645), .B(n756), .Y(n632) );
  NOR2XL U488 ( .A(n644), .B(n755), .Y(n624) );
  NOR2XL U489 ( .A(n157), .B(n752), .Y(n617) );
  NOR2BXL U490 ( .AN(sum[0]), .B(MinCost[0]), .Y(n614) );
  OR2X1 U491 ( .A(n223), .B(n683), .Y(n370) );
  CLKINVX1 U492 ( .A(n540), .Y(n702) );
  NOR3X1 U493 ( .A(n239), .B(n241), .C(n343), .Y(n229) );
  OAI31XL U494 ( .A0(n346), .A1(n342), .A2(n344), .B0(n714), .Y(n234) );
  CLKINVX1 U495 ( .A(n269), .Y(n699) );
  CLKBUFX3 U496 ( .A(N85), .Y(n538) );
  CLKBUFX3 U497 ( .A(n222), .Y(n531) );
  NAND2X1 U498 ( .A(cur_state[0]), .B(n682), .Y(n204) );
  CLKBUFX3 U499 ( .A(n181), .Y(n532) );
  NAND3X2 U500 ( .A(n702), .B(n105), .C(n539), .Y(n269) );
  NOR2X1 U501 ( .A(n531), .B(N88), .Y(n265) );
  OR2X1 U502 ( .A(n154), .B(n193), .Y(n512) );
  INVX3 U503 ( .A(n218), .Y(n666) );
  INVX3 U504 ( .A(n284), .Y(n661) );
  INVX3 U505 ( .A(n220), .Y(n664) );
  INVX3 U506 ( .A(n210), .Y(n662) );
  CLKINVX1 U507 ( .A(n247), .Y(n657) );
  CLKINVX1 U508 ( .A(n246), .Y(n654) );
  CLKINVX1 U509 ( .A(n533), .Y(n701) );
  OA21XL U510 ( .A0(n174), .A1(n675), .B0(n173), .Y(n172) );
  NAND2X2 U511 ( .A(n681), .B(n480), .Y(n218) );
  NAND2X2 U512 ( .A(n683), .B(n541), .Y(n284) );
  NAND2X1 U513 ( .A(n679), .B(n480), .Y(n220) );
  NAND2X2 U514 ( .A(n684), .B(n541), .Y(n210) );
  CLKINVX1 U515 ( .A(n207), .Y(n663) );
  NOR2X1 U516 ( .A(n692), .B(n284), .Y(n257) );
  NOR2X1 U517 ( .A(n693), .B(n284), .Y(n277) );
  NOR2X1 U518 ( .A(n697), .B(n284), .Y(n255) );
  NAND2X1 U519 ( .A(n480), .B(n367), .Y(n247) );
  CLKINVX1 U520 ( .A(n224), .Y(n656) );
  NAND2X1 U521 ( .A(n666), .B(n370), .Y(n372) );
  OAI221XL U522 ( .A0(n235), .A1(n246), .B0(n247), .B1(n478), .C0(n341), .Y(
        n443) );
  NAND2X1 U523 ( .A(n247), .B(n541), .Y(n246) );
  NAND2X1 U524 ( .A(n228), .B(n654), .Y(n341) );
  CLKINVX1 U525 ( .A(n235), .Y(n696) );
  CLKBUFX3 U526 ( .A(n251), .Y(n533) );
  NAND2X1 U527 ( .A(n340), .B(n702), .Y(n251) );
  CLKINVX1 U528 ( .A(n367), .Y(n679) );
  CLKINVX1 U529 ( .A(n534), .Y(n703) );
  CLKINVX1 U530 ( .A(n310), .Y(n705) );
  CLKINVX1 U531 ( .A(n295), .Y(n700) );
  CLKINVX1 U532 ( .A(n229), .Y(n695) );
  CLKINVX1 U533 ( .A(n324), .Y(n698) );
  OAI21X2 U534 ( .A0(n180), .A1(n532), .B0(n537), .Y(n173) );
  INVXL U535 ( .A(N441), .Y(n740) );
  OAI21XL U536 ( .A0(n172), .A1(n743), .B0(n175), .Y(n399) );
  NAND4X1 U537 ( .A(n176), .B(n174), .C(n173), .D(n743), .Y(n175) );
  NAND2X1 U538 ( .A(N442), .B(n740), .Y(n180) );
  CLKINVX1 U539 ( .A(n176), .Y(n675) );
  AO22X1 U540 ( .A0(N569), .A1(n666), .B0(n664), .B1(n219), .Y(n207) );
  OA22X1 U541 ( .A0(N569), .A1(n218), .B0(n219), .B1(n220), .Y(n209) );
  OAI22XL U542 ( .A0(n731), .A1(n266), .B0(n671), .B1(n274), .Y(n427) );
  AOI222XL U543 ( .A0(n275), .A1(n699), .B0(n662), .B1(n276), .C0(n277), .C1(
        n269), .Y(n274) );
  OAI22XL U544 ( .A0(n730), .A1(n533), .B0(n694), .B1(n534), .Y(n276) );
  OAI22XL U545 ( .A0(n727), .A1(n266), .B0(n671), .B1(n267), .Y(n425) );
  AOI222XL U546 ( .A0(n699), .A1(n257), .B0(n662), .B1(n268), .C0(n255), .C1(
        n269), .Y(n267) );
  OAI22XL U547 ( .A0(n726), .A1(n533), .B0(n716), .B1(n534), .Y(n268) );
  OAI21XL U548 ( .A0(n663), .A1(n676), .B0(n210), .Y(n221) );
  OAI22XL U549 ( .A0(n722), .A1(n280), .B0(n670), .B1(n281), .Y(n428) );
  AOI222XL U550 ( .A0(n662), .A1(n282), .B0(n255), .B1(n535), .C0(n704), .C1(
        n257), .Y(n281) );
  OAI222XL U551 ( .A0(n726), .A1(n534), .B0(n716), .B1(n269), .C0(n725), .C1(
        n533), .Y(n282) );
  NOR2X1 U552 ( .A(n477), .B(n284), .Y(n275) );
  OAI22XL U553 ( .A0(n733), .A1(n292), .B0(n673), .B1(n301), .Y(n433) );
  AOI222XL U554 ( .A0(n662), .A1(n302), .B0(n277), .B1(n295), .C0(n700), .C1(
        n275), .Y(n301) );
  OAI222XL U555 ( .A0(n730), .A1(n269), .B0(n694), .B1(n535), .C0(n713), .C1(
        n534), .Y(n302) );
  CLKINVX1 U556 ( .A(n306), .Y(n668) );
  CLKINVX1 U557 ( .A(n331), .Y(n667) );
  OA21X2 U558 ( .A0(n532), .A1(n534), .B0(n264), .Y(n279) );
  OA21XL U559 ( .A0(n532), .A1(n295), .B0(n279), .Y(n320) );
  OAI22XL U560 ( .A0(n735), .A1(n292), .B0(n673), .B1(n298), .Y(n432) );
  AOI22X1 U561 ( .A0(n661), .A1(n299), .B0(n662), .B1(n300), .Y(n298) );
  OAI222XL U562 ( .A0(n728), .A1(n269), .B0(n707), .B1(n535), .C0(n734), .C1(
        n534), .Y(n300) );
  OAI22XL U563 ( .A0(n688), .A1(n295), .B0(n700), .B1(n687), .Y(n299) );
  CLKINVX1 U564 ( .A(n266), .Y(n671) );
  CLKINVX1 U565 ( .A(n280), .Y(n670) );
  CLKINVX1 U566 ( .A(n322), .Y(n669) );
  NAND2X1 U567 ( .A(n248), .B(n541), .Y(n250) );
  OAI22XL U568 ( .A0(n689), .A1(n248), .B0(n368), .B1(n250), .Y(n445) );
  AOI2BB2XL U569 ( .B0(N110), .B1(n533), .A0N(n533), .A1N(n688), .Y(n368) );
  OAI22XL U570 ( .A0(n712), .A1(n248), .B0(n252), .B1(n250), .Y(n421) );
  AOI2BB2XL U571 ( .B0(N111), .B1(n533), .A0N(n533), .A1N(n477), .Y(n252) );
  OAI22XL U572 ( .A0(n711), .A1(n248), .B0(n249), .B1(n250), .Y(n420) );
  AOI2BB2XL U573 ( .B0(N109), .B1(n533), .A0N(n533), .A1N(n692), .Y(n249) );
  NAND3X1 U574 ( .A(n531), .B(n204), .C(n657), .Y(n224) );
  OAI211X1 U575 ( .A0(n236), .A1(n220), .B0(n233), .C0(n237), .Y(n418) );
  OA21XL U576 ( .A0(n238), .A1(n239), .B0(n235), .Y(n236) );
  AOI2BB2X1 U577 ( .B0(n666), .B1(n560), .A0N(n560), .A1N(n224), .Y(n237) );
  AOI31X1 U578 ( .A0(n709), .A1(n240), .A2(n717), .B0(n241), .Y(n238) );
  OAI22XL U579 ( .A0(n737), .A1(n370), .B0(n691), .B1(n372), .Y(n447) );
  OAI22XL U580 ( .A0(n738), .A1(n370), .B0(n686), .B1(n372), .Y(n448) );
  OAI211X1 U581 ( .A0(n247), .A1(n702), .B0(n345), .C0(n341), .Y(n444) );
  NAND3BX1 U582 ( .AN(n343), .B(n234), .C(n654), .Y(n345) );
  CLKINVX1 U583 ( .A(n292), .Y(n673) );
  NAND2X1 U584 ( .A(n480), .B(n373), .Y(n223) );
  OAI211X1 U585 ( .A0(n677), .A1(n218), .B0(n383), .C0(n284), .Y(N93) );
  CLKINVX1 U586 ( .A(n382), .Y(n677) );
  NAND3X1 U587 ( .A(n541), .B(n715), .C(n245), .Y(n383) );
  CLKINVX1 U588 ( .A(n253), .Y(n672) );
  OA21XL U589 ( .A0(n219), .A1(n367), .B0(n371), .Y(n205) );
  OAI21XL U590 ( .A0(n218), .A1(n382), .B0(n284), .Y(N94) );
  INVX1 U591 ( .A(N109), .Y(n697) );
  NOR2XL U592 ( .A(n697), .B(N106), .Y(n378) );
  CLKINVX1 U593 ( .A(n379), .Y(n685) );
  OAI32XL U594 ( .A0(n378), .A1(N110), .A2(n686), .B0(n691), .B1(N109), .Y(
        n379) );
  CLKINVX1 U595 ( .A(n540), .Y(n578) );
  NOR2X1 U596 ( .A(n393), .B(n218), .Y(N483) );
  XOR2X1 U597 ( .A(n739), .B(n394), .Y(n393) );
  NOR2X1 U598 ( .A(n678), .B(n395), .Y(n394) );
  CLKINVX1 U599 ( .A(n539), .Y(n577) );
  INVXL U600 ( .A(N106), .Y(n691) );
  CLKBUFX3 U601 ( .A(n480), .Y(n541) );
  INVX1 U602 ( .A(N110), .Y(n687) );
  OAI21XL U603 ( .A0(N107), .A1(n687), .B0(N108), .Y(n377) );
  CLKINVX1 U604 ( .A(n373), .Y(n680) );
  NOR2X1 U605 ( .A(n687), .B(n531), .Y(n273) );
  INVXL U606 ( .A(N108), .Y(n690) );
  NOR2X1 U607 ( .A(n697), .B(n531), .Y(n294) );
  INVXL U608 ( .A(N111), .Y(n693) );
  INVX1 U609 ( .A(N160), .Y(n688) );
  NOR2X1 U610 ( .A(n693), .B(n531), .Y(n261) );
  CLKINVX1 U611 ( .A(N159), .Y(n692) );
  NOR2X1 U612 ( .A(n742), .B(n741), .Y(n174) );
  AOI31X1 U613 ( .A0(n709), .A1(n342), .A2(n229), .B0(n343), .Y(n235) );
  INVX3 U614 ( .A(n531), .Y(n683) );
  NOR2X1 U615 ( .A(n539), .B(n538), .Y(n340) );
  CLKINVX1 U616 ( .A(n204), .Y(n681) );
  AND2X2 U617 ( .A(n229), .B(n344), .Y(n228) );
  CLKBUFX3 U618 ( .A(n256), .Y(n534) );
  NAND2X1 U619 ( .A(n540), .B(n340), .Y(n256) );
  CLKINVX1 U620 ( .A(n239), .Y(n714) );
  OR2X1 U621 ( .A(n241), .B(n717), .Y(n346) );
  CLKINVX1 U622 ( .A(n344), .Y(n709) );
  NAND2X1 U623 ( .A(n715), .B(n682), .Y(n367) );
  NAND3X1 U624 ( .A(n535), .B(n269), .C(n310), .Y(n330) );
  NAND3X2 U625 ( .A(n702), .B(n478), .C(n538), .Y(n295) );
  NAND3X1 U626 ( .A(n540), .B(n478), .C(n538), .Y(n310) );
  NAND3X1 U627 ( .A(n539), .B(n702), .C(n538), .Y(n324) );
  NAND3X2 U628 ( .A(n539), .B(n540), .C(n538), .Y(n333) );
  CLKINVX1 U629 ( .A(n535), .Y(n704) );
  INVX3 U630 ( .A(n532), .Y(n684) );
  OAI22XL U631 ( .A0(n728), .A1(n535), .B0(n707), .B1(n295), .Y(n315) );
  NAND3X1 U632 ( .A(n707), .B(n716), .C(n694), .Y(n388) );
  CLKINVX1 U633 ( .A(n631), .Y(n642) );
  CLKINVX1 U634 ( .A(n617), .Y(n643) );
  OAI32X1 U635 ( .A0(n170), .A1(n675), .A2(n743), .B0(n171), .B1(n150), .Y(
        n398) );
  NAND3X1 U636 ( .A(n173), .B(n150), .C(n174), .Y(n170) );
  CLKBUFX3 U637 ( .A(n536), .Y(n537) );
  AOI2BB1X1 U638 ( .A0N(n532), .A1N(n740), .B0(RST), .Y(n536) );
  OAI2BB1XL U639 ( .A0N(n749), .A1N(n178), .B0(n179), .Y(n401) );
  NAND4XL U640 ( .A(n176), .B(n750), .C(n173), .D(n742), .Y(n179) );
  OAI21XL U641 ( .A0(n750), .A1(n675), .B0(n173), .Y(n178) );
  OAI22XL U642 ( .A0(n741), .A1(n173), .B0(n674), .B1(n177), .Y(n400) );
  NOR3XL U643 ( .A(n741), .B(RST), .C(N441), .Y(n177) );
  CLKINVX1 U644 ( .A(n173), .Y(n674) );
  NOR2X1 U645 ( .A(n180), .B(RST), .Y(n176) );
  OAI211X1 U646 ( .A0(n536), .A1(n646), .B0(n183), .C0(n541), .Y(n402) );
  NAND2XL U647 ( .A(MinCost[1]), .B(n537), .Y(n183) );
  OAI211X1 U648 ( .A0(n537), .A1(n157), .B0(n190), .C0(n541), .Y(n409) );
  NAND2XL U649 ( .A(MinCost[8]), .B(n537), .Y(n190) );
  OAI211X1 U650 ( .A0(n537), .A1(n644), .B0(n187), .C0(n541), .Y(n406) );
  NAND2XL U651 ( .A(MinCost[5]), .B(n537), .Y(n187) );
  OAI211X1 U652 ( .A0(n537), .A1(n645), .B0(n186), .C0(n541), .Y(n405) );
  NAND2XL U653 ( .A(MinCost[4]), .B(n537), .Y(n186) );
  OAI211X1 U654 ( .A0(n537), .A1(n165), .B0(n191), .C0(n541), .Y(n410) );
  NAND2XL U655 ( .A(MinCost[0]), .B(n537), .Y(n191) );
  OAI211X1 U656 ( .A0(n537), .A1(n162), .B0(n185), .C0(n541), .Y(n404) );
  NAND2XL U657 ( .A(MinCost[3]), .B(n536), .Y(n185) );
  OAI211X1 U658 ( .A0(n537), .A1(n154), .B0(n192), .C0(n541), .Y(n411) );
  NAND2XL U659 ( .A(n751), .B(n537), .Y(n192) );
  OAI211X1 U660 ( .A0(n537), .A1(n158), .B0(n189), .C0(n541), .Y(n408) );
  NAND2XL U661 ( .A(n753), .B(n536), .Y(n189) );
  OAI211X1 U662 ( .A0(n537), .A1(n159), .B0(n188), .C0(n541), .Y(n407) );
  NAND2XL U663 ( .A(n754), .B(n536), .Y(n188) );
  OAI211X1 U664 ( .A0(n537), .A1(n163), .B0(n184), .C0(n541), .Y(n403) );
  NAND2XL U665 ( .A(n758), .B(n536), .Y(n184) );
  CLKINVX1 U666 ( .A(n197), .Y(n647) );
  AOI222XL U667 ( .A0(N426), .A1(n666), .B0(Cost[6]), .B1(n664), .C0(N436), 
        .C1(n661), .Y(n197) );
  OAI21XL U668 ( .A0(n157), .A1(n193), .B0(n195), .Y(n413) );
  AOI22X1 U669 ( .A0(N438), .A1(n661), .B0(N428), .B1(n666), .Y(n195) );
  CLKINVX1 U670 ( .A(n198), .Y(n648) );
  AOI222XL U671 ( .A0(N425), .A1(n666), .B0(Cost[5]), .B1(n664), .C0(N435), 
        .C1(n661), .Y(n198) );
  OAI21XL U672 ( .A0(n158), .A1(n193), .B0(n196), .Y(n414) );
  AOI22X1 U673 ( .A0(N437), .A1(n661), .B0(N427), .B1(n666), .Y(n196) );
  CLKINVX1 U674 ( .A(n213), .Y(n660) );
  AOI221XL U675 ( .A0(N384), .A1(n207), .B0(\array[0][0] ), .B1(n661), .C0(
        n214), .Y(n213) );
  OAI22XL U676 ( .A0(n209), .A1(n731), .B0(n210), .B1(n721), .Y(n214) );
  CLKINVX1 U677 ( .A(n211), .Y(n659) );
  AOI221XL U678 ( .A0(N383), .A1(n207), .B0(\array[0][1] ), .B1(n661), .C0(
        n212), .Y(n211) );
  OAI22XL U679 ( .A0(n209), .A1(n729), .B0(n210), .B1(n720), .Y(n212) );
  CLKINVX1 U680 ( .A(n206), .Y(n658) );
  AOI221XL U681 ( .A0(N382), .A1(n207), .B0(\array[0][2] ), .B1(n661), .C0(
        n208), .Y(n206) );
  OAI22XL U682 ( .A0(n209), .A1(n727), .B0(n210), .B1(n719), .Y(n208) );
  CLKINVX1 U683 ( .A(n199), .Y(n649) );
  AOI222XL U684 ( .A0(N424), .A1(n666), .B0(Cost[4]), .B1(n664), .C0(N434), 
        .C1(n661), .Y(n199) );
  CLKINVX1 U685 ( .A(n200), .Y(n650) );
  AOI222XL U686 ( .A0(N423), .A1(n666), .B0(Cost[3]), .B1(n664), .C0(N433), 
        .C1(n661), .Y(n200) );
  CLKINVX1 U687 ( .A(n201), .Y(n651) );
  AOI222XL U688 ( .A0(N422), .A1(n666), .B0(Cost[2]), .B1(n664), .C0(N432), 
        .C1(n661), .Y(n201) );
  CLKINVX1 U689 ( .A(n202), .Y(n652) );
  AOI222XL U690 ( .A0(N421), .A1(n666), .B0(Cost[1]), .B1(n664), .C0(N431), 
        .C1(n661), .Y(n202) );
  CLKINVX1 U691 ( .A(n203), .Y(n653) );
  AOI222XL U692 ( .A0(N420), .A1(n666), .B0(Cost[0]), .B1(n664), .C0(N430), 
        .C1(n661), .Y(n203) );
  OAI22XL U693 ( .A0(n730), .A1(n322), .B0(n669), .B1(n328), .Y(n439) );
  AOI222XL U694 ( .A0(N255), .A1(n662), .B0(n277), .B1(n324), .C0(n698), .C1(
        n275), .Y(n328) );
  OAI22XL U695 ( .A0(n719), .A1(n253), .B0(n672), .B1(n254), .Y(n422) );
  AOI222XL U696 ( .A0(\array[7][2] ), .A1(n662), .B0(n255), .B1(n534), .C0(
        n257), .C1(n703), .Y(n254) );
  OAI22XL U697 ( .A0(n720), .A1(n253), .B0(n672), .B1(n258), .Y(n423) );
  AOI22X1 U698 ( .A0(n661), .A1(n259), .B0(\array[7][1] ), .B1(n662), .Y(n258)
         );
  OAI22XL U699 ( .A0(n534), .A1(n688), .B0(n703), .B1(n687), .Y(n259) );
  OAI211X1 U700 ( .A0(n532), .A1(n535), .B0(n320), .C0(n321), .Y(n306) );
  AOI32X1 U701 ( .A0(N86), .A1(n596), .A2(n305), .B0(n705), .B1(n683), .Y(n321) );
  OAI211X1 U702 ( .A0(n531), .A1(n333), .B0(n320), .C0(n339), .Y(n331) );
  AOI32X1 U703 ( .A0(N86), .A1(N87), .A2(n305), .B0(n684), .B1(n330), .Y(n339)
         );
  OAI22XL U704 ( .A0(n734), .A1(n306), .B0(n668), .B1(n312), .Y(n435) );
  AOI2BB2X1 U705 ( .B0(n661), .B1(n313), .A0N(n314), .A1N(n210), .Y(n312) );
  AOI221XL U706 ( .A0(n703), .A1(\array[4][1] ), .B0(n701), .B1(\array[3][1] ), 
        .C0(n315), .Y(n314) );
  OAI22XL U707 ( .A0(n688), .A1(n310), .B0(n705), .B1(n687), .Y(n313) );
  OAI22XL U708 ( .A0(n725), .A1(n306), .B0(n668), .B1(n307), .Y(n434) );
  AOI221XL U709 ( .A0(n684), .A1(n308), .B0(n683), .B1(n309), .C0(RST), .Y(
        n307) );
  OAI221XL U710 ( .A0(n732), .A1(n534), .B0(n722), .B1(n533), .C0(n311), .Y(
        n308) );
  OAI22XL U711 ( .A0(n692), .A1(n310), .B0(n705), .B1(n697), .Y(n309) );
  OAI22XL U712 ( .A0(n716), .A1(n331), .B0(n667), .B1(n332), .Y(n440) );
  AOI211X1 U713 ( .A0(n294), .A1(n333), .B0(n334), .C0(RST), .Y(n332) );
  OAI2BB2XL U714 ( .B0(n333), .B1(n692), .A0N(N254), .A1N(n684), .Y(n334) );
  OAI22XL U715 ( .A0(n713), .A1(n306), .B0(n668), .B1(n316), .Y(n436) );
  AOI221XL U716 ( .A0(n684), .A1(n317), .B0(n683), .B1(n318), .C0(RST), .Y(
        n316) );
  OAI221XL U717 ( .A0(n733), .A1(n534), .B0(n736), .B1(n533), .C0(n319), .Y(
        n317) );
  OAI22XL U718 ( .A0(n477), .A1(n310), .B0(n705), .B1(n693), .Y(n318) );
  OAI22XL U719 ( .A0(n707), .A1(n331), .B0(n667), .B1(n335), .Y(n441) );
  AOI211X1 U720 ( .A0(n273), .A1(n333), .B0(n336), .C0(RST), .Y(n335) );
  OAI2BB2XL U721 ( .B0(n333), .B1(n688), .A0N(N253), .A1N(n684), .Y(n336) );
  OAI22XL U722 ( .A0(n694), .A1(n331), .B0(n667), .B1(n337), .Y(n442) );
  AOI211X1 U723 ( .A0(n261), .A1(n333), .B0(n338), .C0(RST), .Y(n337) );
  OAI2BB2XL U724 ( .B0(n333), .B1(n477), .A0N(N252), .A1N(n684), .Y(n338) );
  AOI2BB1X1 U725 ( .A0N(n532), .A1N(n533), .B0(RST), .Y(n264) );
  NAND4X1 U726 ( .A(\cnt_read[3] ), .B(n657), .C(n531), .D(n532), .Y(n217) );
  OAI31XL U727 ( .A0(n678), .A1(n655), .A2(n663), .B0(n215), .Y(n415) );
  NAND2XL U728 ( .A(W[2]), .B(n655), .Y(n215) );
  CLKINVX1 U729 ( .A(n217), .Y(n655) );
  OAI2BB1X1 U730 ( .A0N(n666), .A1N(N90), .B0(n209), .Y(n216) );
  NAND3X1 U731 ( .A(N87), .B(n595), .C(n265), .Y(n278) );
  OAI22XL U732 ( .A0(n729), .A1(n266), .B0(n671), .B1(n270), .Y(n426) );
  AOI211X1 U733 ( .A0(n684), .A1(n271), .B0(n272), .C0(RST), .Y(n270) );
  OAI22XL U734 ( .A0(n728), .A1(n533), .B0(n707), .B1(n534), .Y(n271) );
  AO22XL U735 ( .A0(N160), .A1(n699), .B0(n269), .B1(n273), .Y(n272) );
  OAI31XL U736 ( .A0(n218), .A1(N81), .A2(n560), .B0(n233), .Y(n232) );
  OAI211X1 U737 ( .A0(n230), .A1(n559), .B0(n231), .C0(n665), .Y(n417) );
  OAI21XL U738 ( .A0(n696), .A1(n234), .B0(n664), .Y(n231) );
  AOI2BB1X1 U739 ( .A0N(n218), .A1N(N80), .B0(n656), .Y(n230) );
  CLKINVX1 U740 ( .A(n232), .Y(n665) );
  AOI32X1 U741 ( .A0(N86), .A1(N87), .A2(n265), .B0(n704), .B1(n683), .Y(n291)
         );
  OAI22XL U742 ( .A0(n736), .A1(n280), .B0(n670), .B1(n288), .Y(n430) );
  AOI211X1 U743 ( .A0(n261), .A1(n535), .B0(n289), .C0(RST), .Y(n288) );
  OAI22XL U744 ( .A0(n290), .A1(n532), .B0(n477), .B1(n535), .Y(n289) );
  AOI222XL U745 ( .A0(n701), .A1(\array[5][0] ), .B0(n699), .B1(\array[7][0] ), 
        .C0(n703), .C1(\array[6][0] ), .Y(n290) );
  AOI32X1 U746 ( .A0(N87), .A1(n595), .A2(n305), .B0(n684), .B1(n330), .Y(n329) );
  OAI22XL U747 ( .A0(n728), .A1(n322), .B0(n669), .B1(n326), .Y(n438) );
  AOI211X1 U748 ( .A0(n273), .A1(n324), .B0(n327), .C0(RST), .Y(n326) );
  AO22X1 U749 ( .A0(n698), .A1(N160), .B0(N256), .B1(n684), .Y(n327) );
  OAI22XL U750 ( .A0(n726), .A1(n322), .B0(n669), .B1(n323), .Y(n437) );
  AOI211X1 U751 ( .A0(n294), .A1(n324), .B0(n325), .C0(RST), .Y(n323) );
  AO22X1 U752 ( .A0(n698), .A1(N159), .B0(N257), .B1(n684), .Y(n325) );
  OAI22XL U753 ( .A0(n710), .A1(n280), .B0(n670), .B1(n285), .Y(n429) );
  AOI211X1 U754 ( .A0(n273), .A1(n535), .B0(n286), .C0(RST), .Y(n285) );
  OAI22XL U755 ( .A0(n287), .A1(n532), .B0(n688), .B1(n535), .Y(n286) );
  AOI222XL U756 ( .A0(n701), .A1(\array[5][1] ), .B0(n699), .B1(\array[7][1] ), 
        .C0(n703), .C1(\array[6][1] ), .Y(n287) );
  NAND3X1 U757 ( .A(n595), .B(n596), .C(n265), .Y(n369) );
  OAI22XL U758 ( .A0(n89), .A1(n370), .B0(n690), .B1(n372), .Y(n449) );
  OAI31XL U759 ( .A0(n704), .A1(n703), .A2(n699), .B0(n684), .Y(n303) );
  AOI31X1 U760 ( .A0(n595), .A1(n596), .A2(n305), .B0(RST), .Y(n304) );
  OAI22XL U761 ( .A0(n732), .A1(n292), .B0(n673), .B1(n293), .Y(n431) );
  AOI211X1 U762 ( .A0(n294), .A1(n295), .B0(n296), .C0(RST), .Y(n293) );
  OAI22XL U763 ( .A0(n297), .A1(n532), .B0(n692), .B1(n295), .Y(n296) );
  AOI222XL U764 ( .A0(n703), .A1(\array[5][2] ), .B0(n704), .B1(\array[7][2] ), 
        .C0(n699), .C1(\array[6][2] ), .Y(n297) );
  OAI22XL U765 ( .A0(n558), .A1(n224), .B0(RST), .B1(n225), .Y(n416) );
  AOI22X1 U766 ( .A0(n681), .A1(n226), .B0(n679), .B1(n227), .Y(n225) );
  OAI21XL U767 ( .A0(n559), .A1(n560), .B0(n558), .Y(n226) );
  NAND2BX1 U768 ( .AN(n228), .B(n229), .Y(n227) );
  NAND3X1 U769 ( .A(N86), .B(n596), .C(n265), .Y(n263) );
  OAI22XL U770 ( .A0(n721), .A1(n253), .B0(n672), .B1(n260), .Y(n424) );
  AOI211X1 U771 ( .A0(n261), .A1(n534), .B0(n262), .C0(RST), .Y(n260) );
  OAI22XL U772 ( .A0(n532), .A1(n694), .B0(n477), .B1(n534), .Y(n262) );
  NOR2X1 U773 ( .A(RST), .B(n683), .Y(n371) );
  OAI2BB2XL U774 ( .B0(n245), .B1(n246), .A0N(Valid), .A1N(n657), .Y(n419) );
  OAI211X1 U775 ( .A0(n397), .A1(n218), .B0(n220), .C0(n210), .Y(N481) );
  XOR2X1 U776 ( .A(N90), .B(n676), .Y(n397) );
  OAI21XL U777 ( .A0(n370), .A1(n86), .B0(n371), .Y(n446) );
  OAI211X1 U778 ( .A0(n374), .A1(n375), .B0(n376), .C0(n681), .Y(n373) );
  OAI31XL U779 ( .A0(n381), .A1(n380), .A2(n89), .B0(n86), .Y(n374) );
  OAI32XL U780 ( .A0(n738), .A1(N107), .A2(n380), .B0(N106), .B1(n737), .Y(
        n375) );
  OAI31XL U781 ( .A0(n377), .A1(N111), .A2(n378), .B0(n685), .Y(n376) );
  CLKBUFX3 U782 ( .A(N84), .Y(n539) );
  NOR2X1 U783 ( .A(n396), .B(n218), .Y(N482) );
  XOR2X1 U784 ( .A(n395), .B(N91), .Y(n396) );
  NOR2X1 U785 ( .A(n691), .B(min[2]), .Y(n380) );
  OAI21XL U786 ( .A0(N89), .A1(n204), .B0(n205), .Y(N480) );
  OAI21XL U787 ( .A0(min[1]), .A1(n686), .B0(n690), .Y(n381) );
  NAND4X2 U788 ( .A(N90), .B(n676), .C(n678), .D(n739), .Y(N569) );
  OAI21XL U789 ( .A0(\array[6][1] ), .A1(n734), .B0(\array[6][0] ), .Y(n347)
         );
  CLKINVX1 U790 ( .A(n349), .Y(n723) );
  OAI31X1 U791 ( .A0(n364), .A1(\array[6][0] ), .A2(n365), .B0(n706), .Y(n343)
         );
  OAI21XL U792 ( .A0(\array[7][1] ), .A1(n728), .B0(\array[7][0] ), .Y(n364)
         );
  CLKINVX1 U793 ( .A(n366), .Y(n706) );
  NOR2X1 U794 ( .A(n726), .B(\array[7][2] ), .Y(n365) );
  OAI21XL U795 ( .A0(\array[5][1] ), .A1(n735), .B0(\array[5][0] ), .Y(n361)
         );
  CLKINVX1 U796 ( .A(n363), .Y(n724) );
  NOR2X1 U797 ( .A(n725), .B(\array[6][2] ), .Y(n348) );
  NOR2X1 U798 ( .A(n732), .B(\array[5][2] ), .Y(n362) );
  NAND2X1 U799 ( .A(cur_state[1]), .B(n715), .Y(n222) );
  OAI32X1 U800 ( .A0(n359), .A1(\array[1][1] ), .A2(n729), .B0(n727), .B1(
        \array[1][2] ), .Y(n360) );
  CLKINVX1 U801 ( .A(n357), .Y(n717) );
  OAI31XL U802 ( .A0(n358), .A1(\array[1][0] ), .A2(n359), .B0(n718), .Y(n357)
         );
  OAI21XL U803 ( .A0(\array[2][1] ), .A1(n720), .B0(\array[2][0] ), .Y(n358)
         );
  CLKINVX1 U804 ( .A(n360), .Y(n718) );
  OAI221X1 U805 ( .A0(n350), .A1(n351), .B0(\array[3][2] ), .B1(n732), .C0(
        n352), .Y(n344) );
  NAND4BX1 U806 ( .AN(n350), .B(\array[4][0] ), .C(n353), .D(n736), .Y(n352)
         );
  NOR2X1 U807 ( .A(n722), .B(\array[4][2] ), .Y(n350) );
  NAND2X1 U808 ( .A(\array[3][1] ), .B(n735), .Y(n353) );
  NAND2X1 U809 ( .A(cur_state[1]), .B(cur_state[0]), .Y(n181) );
  NAND2X1 U810 ( .A(\array[4][1] ), .B(n710), .Y(n351) );
  NOR2X1 U811 ( .A(n719), .B(\array[2][2] ), .Y(n359) );
  OAI21XL U812 ( .A0(\array[3][1] ), .A1(n729), .B0(\array[3][0] ), .Y(n354)
         );
  CLKINVX1 U813 ( .A(n356), .Y(n708) );
  OAI32X1 U814 ( .A0(n355), .A1(\array[2][1] ), .A2(n710), .B0(n722), .B1(
        \array[2][2] ), .Y(n356) );
  NOR2X1 U815 ( .A(n93), .B(n531), .Y(n305) );
  NOR2X1 U816 ( .A(n727), .B(\array[3][2] ), .Y(n355) );
  AOI2BB2X1 U817 ( .B0(n700), .B1(\array[7][2] ), .A0N(n726), .A1N(n535), .Y(
        n311) );
  AOI2BB2X1 U818 ( .B0(n700), .B1(\array[7][0] ), .A0N(n730), .A1N(n535), .Y(
        n319) );
  CLKBUFX3 U819 ( .A(n283), .Y(n535) );
  NAND3X1 U820 ( .A(n540), .B(n105), .C(n539), .Y(n283) );
  OAI21XL U821 ( .A0(\array[0][2] ), .A1(n719), .B0(n242), .Y(n240) );
  OAI22XL U822 ( .A0(\array[1][2] ), .A1(n711), .B0(n243), .B1(n244), .Y(n242)
         );
  NOR2X1 U823 ( .A(\array[0][1] ), .B(n720), .Y(n244) );
  AOI211X1 U824 ( .A0(\array[0][1] ), .A1(n720), .B0(n721), .C0(\array[0][0] ), 
        .Y(n243) );
  NOR4X1 U825 ( .A(n391), .B(n733), .C(n722), .D(n351), .Y(n384) );
  NAND2X1 U826 ( .A(\array[6][0] ), .B(\array[5][1] ), .Y(n391) );
  NAND4X1 U827 ( .A(n384), .B(n385), .C(n386), .D(n387), .Y(n245) );
  NOR4X1 U828 ( .A(n388), .B(\array[5][2] ), .C(\array[6][2] ), .D(
        \array[6][1] ), .Y(n387) );
  NOR4X1 U829 ( .A(n389), .B(\array[3][0] ), .C(\array[5][0] ), .D(
        \array[4][2] ), .Y(n386) );
  NOR4X1 U830 ( .A(n390), .B(n712), .C(n689), .D(n731), .Y(n385) );
  NAND3X1 U831 ( .A(n721), .B(n729), .C(\array[1][2] ), .Y(n389) );
  NAND3X1 U832 ( .A(\array[0][2] ), .B(\array[2][2] ), .C(\array[1][1] ), .Y(
        n390) );
  OA22X1 U833 ( .A0(\array[4][0] ), .A1(n577), .B0(\array[2][0] ), .B1(n539), 
        .Y(n518) );
  NOR2X1 U834 ( .A(n479), .B(n539), .Y(n516) );
  NOR2X1 U835 ( .A(n479), .B(n577), .Y(n515) );
  AOI222XL U836 ( .A0(n518), .A1(n479), .B0(n516), .B1(\array[3][0] ), .C0(
        n515), .C1(\array[5][0] ), .Y(n513) );
  OAI2BB2XL U837 ( .B0(n538), .B1(n513), .A0N(\array[7][0] ), .A1N(n538), .Y(
        N255) );
  OA22X1 U838 ( .A0(\array[4][1] ), .A1(n478), .B0(\array[2][1] ), .B1(n539), 
        .Y(n521) );
  AOI222XL U839 ( .A0(n521), .A1(n479), .B0(n516), .B1(\array[3][1] ), .C0(
        n515), .C1(\array[5][1] ), .Y(n514) );
  OAI2BB2XL U840 ( .B0(n538), .B1(n514), .A0N(\array[7][1] ), .A1N(n538), .Y(
        N256) );
  AOI222XL U841 ( .A0(n526), .A1(n479), .B0(n516), .B1(\array[3][2] ), .C0(
        n515), .C1(\array[5][2] ), .Y(n517) );
  OAI2BB2XL U842 ( .B0(n538), .B1(n517), .A0N(\array[7][2] ), .A1N(n538), .Y(
        N257) );
  NOR2X1 U843 ( .A(n540), .B(n539), .Y(n525) );
  NOR2X1 U844 ( .A(n478), .B(n540), .Y(n524) );
  AOI222XL U845 ( .A0(n540), .A1(n518), .B0(\array[1][0] ), .B1(n525), .C0(
        \array[3][0] ), .C1(n524), .Y(n520) );
  AND2X1 U846 ( .A(n538), .B(n479), .Y(n528) );
  AND2X1 U847 ( .A(n538), .B(n540), .Y(n527) );
  AOI22X1 U848 ( .A0(\array[5][0] ), .A1(n528), .B0(\array[6][0] ), .B1(n527), 
        .Y(n519) );
  OAI21XL U849 ( .A0(n538), .A1(n520), .B0(n519), .Y(N252) );
  AOI222XL U850 ( .A0(n540), .A1(n521), .B0(\array[1][1] ), .B1(n525), .C0(
        \array[3][1] ), .C1(n524), .Y(n523) );
  AOI22X1 U851 ( .A0(\array[5][1] ), .A1(n528), .B0(\array[6][1] ), .B1(n527), 
        .Y(n522) );
  OAI21XL U852 ( .A0(n538), .A1(n523), .B0(n522), .Y(N253) );
  AOI222XL U853 ( .A0(n540), .A1(n526), .B0(\array[1][2] ), .B1(n525), .C0(
        \array[3][2] ), .C1(n524), .Y(n530) );
  AOI22X1 U854 ( .A0(\array[5][2] ), .A1(n528), .B0(\array[6][2] ), .B1(n527), 
        .Y(n529) );
  OAI21XL U855 ( .A0(n538), .A1(n530), .B0(n529), .Y(N254) );
  AND2X1 U856 ( .A(sum[0]), .B(N569), .Y(N595) );
  AND2X1 U857 ( .A(sum[1]), .B(N569), .Y(N596) );
  AND2X1 U858 ( .A(sum[2]), .B(N569), .Y(N597) );
  AND2X1 U859 ( .A(sum[3]), .B(N569), .Y(N598) );
  AND2X1 U860 ( .A(sum[4]), .B(N569), .Y(N599) );
  AND2X1 U861 ( .A(sum[5]), .B(N569), .Y(N600) );
  AND2X1 U862 ( .A(sum[6]), .B(N569), .Y(N601) );
  AND2X1 U863 ( .A(sum[7]), .B(N569), .Y(N602) );
  AND2X1 U864 ( .A(sum[8]), .B(N569), .Y(N603) );
  AND2X1 U865 ( .A(N569), .B(sum[9]), .Y(N604) );
  NOR2X1 U866 ( .A(n559), .B(N80), .Y(n555) );
  NOR2X1 U867 ( .A(n559), .B(n560), .Y(n554) );
  NOR2X1 U868 ( .A(n560), .B(N81), .Y(n552) );
  NOR2X1 U869 ( .A(N80), .B(N81), .Y(n551) );
  AO22X1 U870 ( .A0(\array[5][0] ), .A1(n552), .B0(\array[4][0] ), .B1(n551), 
        .Y(n542) );
  AOI221XL U871 ( .A0(\array[6][0] ), .A1(n555), .B0(\array[7][0] ), .B1(n554), 
        .C0(n542), .Y(n545) );
  AO22X1 U872 ( .A0(\array[1][0] ), .A1(n552), .B0(\array[0][0] ), .B1(n551), 
        .Y(n543) );
  AOI221XL U873 ( .A0(\array[2][0] ), .A1(n555), .B0(\array[3][0] ), .B1(n554), 
        .C0(n543), .Y(n544) );
  OAI22XL U874 ( .A0(n558), .A1(n545), .B0(N82), .B1(n544), .Y(N108) );
  AO22X1 U875 ( .A0(\array[5][1] ), .A1(n552), .B0(\array[4][1] ), .B1(n551), 
        .Y(n546) );
  AOI221XL U876 ( .A0(\array[6][1] ), .A1(n555), .B0(\array[7][1] ), .B1(n554), 
        .C0(n546), .Y(n549) );
  AO22X1 U877 ( .A0(\array[1][1] ), .A1(n552), .B0(\array[0][1] ), .B1(n551), 
        .Y(n547) );
  AOI221XL U878 ( .A0(\array[2][1] ), .A1(n555), .B0(\array[3][1] ), .B1(n554), 
        .C0(n547), .Y(n548) );
  AO22X1 U879 ( .A0(\array[5][2] ), .A1(n552), .B0(\array[4][2] ), .B1(n551), 
        .Y(n550) );
  AOI221XL U880 ( .A0(\array[6][2] ), .A1(n555), .B0(\array[7][2] ), .B1(n554), 
        .C0(n550), .Y(n557) );
  AO22X1 U881 ( .A0(\array[1][2] ), .A1(n552), .B0(\array[0][2] ), .B1(n551), 
        .Y(n553) );
  AOI221XL U882 ( .A0(\array[2][2] ), .A1(n555), .B0(\array[3][2] ), .B1(n554), 
        .C0(n553), .Y(n556) );
  NOR2X1 U883 ( .A(n577), .B(n540), .Y(n574) );
  NOR2X1 U884 ( .A(n577), .B(n578), .Y(n573) );
  NOR2X1 U885 ( .A(n578), .B(n539), .Y(n571) );
  NOR2X1 U886 ( .A(n540), .B(n539), .Y(n570) );
  AO22X1 U887 ( .A0(\array[5][0] ), .A1(n571), .B0(\array[4][0] ), .B1(n570), 
        .Y(n561) );
  AOI221XL U888 ( .A0(\array[6][0] ), .A1(n574), .B0(\array[7][0] ), .B1(n573), 
        .C0(n561), .Y(n564) );
  AO22X1 U889 ( .A0(\array[1][0] ), .A1(n571), .B0(\array[0][0] ), .B1(n570), 
        .Y(n562) );
  AOI221XL U890 ( .A0(\array[2][0] ), .A1(n574), .B0(\array[3][0] ), .B1(n573), 
        .C0(n562), .Y(n563) );
  AO22X1 U891 ( .A0(\array[5][1] ), .A1(n571), .B0(\array[4][1] ), .B1(n570), 
        .Y(n565) );
  AOI221XL U892 ( .A0(\array[6][1] ), .A1(n574), .B0(\array[7][1] ), .B1(n573), 
        .C0(n565), .Y(n568) );
  AO22X1 U893 ( .A0(\array[1][1] ), .A1(n571), .B0(\array[0][1] ), .B1(n570), 
        .Y(n566) );
  AOI221XL U894 ( .A0(\array[2][1] ), .A1(n574), .B0(\array[3][1] ), .B1(n573), 
        .C0(n566), .Y(n567) );
  AO22X1 U895 ( .A0(\array[5][2] ), .A1(n571), .B0(\array[4][2] ), .B1(n570), 
        .Y(n569) );
  AOI221XL U896 ( .A0(\array[6][2] ), .A1(n574), .B0(\array[7][2] ), .B1(n573), 
        .C0(n569), .Y(n576) );
  AO22X1 U897 ( .A0(\array[1][2] ), .A1(n571), .B0(\array[0][2] ), .B1(n570), 
        .Y(n572) );
  AOI221XL U898 ( .A0(\array[2][2] ), .A1(n574), .B0(\array[3][2] ), .B1(n573), 
        .C0(n572), .Y(n575) );
  NOR2X1 U899 ( .A(n596), .B(N86), .Y(n592) );
  NOR2X1 U900 ( .A(n596), .B(n595), .Y(n591) );
  NOR2X1 U901 ( .A(n595), .B(N87), .Y(n589) );
  NOR2X1 U902 ( .A(N86), .B(N87), .Y(n588) );
  AO22X1 U903 ( .A0(\array[5][0] ), .A1(n589), .B0(\array[4][0] ), .B1(n588), 
        .Y(n579) );
  AOI221XL U904 ( .A0(\array[6][0] ), .A1(n592), .B0(\array[7][0] ), .B1(n591), 
        .C0(n579), .Y(n582) );
  AO22X1 U905 ( .A0(\array[1][0] ), .A1(n589), .B0(\array[0][0] ), .B1(n588), 
        .Y(n580) );
  AOI221XL U906 ( .A0(\array[2][0] ), .A1(n592), .B0(\array[3][0] ), .B1(n591), 
        .C0(n580), .Y(n581) );
  AO22X1 U907 ( .A0(\array[5][1] ), .A1(n589), .B0(\array[4][1] ), .B1(n588), 
        .Y(n583) );
  AOI221XL U908 ( .A0(\array[6][1] ), .A1(n592), .B0(\array[7][1] ), .B1(n591), 
        .C0(n583), .Y(n586) );
  AO22X1 U909 ( .A0(\array[1][1] ), .A1(n589), .B0(\array[0][1] ), .B1(n588), 
        .Y(n584) );
  AOI221XL U910 ( .A0(\array[2][1] ), .A1(n592), .B0(\array[3][1] ), .B1(n591), 
        .C0(n584), .Y(n585) );
  AO22X1 U911 ( .A0(\array[5][2] ), .A1(n589), .B0(\array[4][2] ), .B1(n588), 
        .Y(n587) );
  AOI221XL U912 ( .A0(\array[6][2] ), .A1(n592), .B0(\array[7][2] ), .B1(n591), 
        .C0(n587), .Y(n594) );
  AO22X1 U913 ( .A0(\array[1][2] ), .A1(n589), .B0(\array[0][2] ), .B1(n588), 
        .Y(n590) );
  AOI221XL U914 ( .A0(\array[2][2] ), .A1(n592), .B0(\array[3][2] ), .B1(n591), 
        .C0(n590), .Y(n593) );
  OAI22XL U915 ( .A0(n594), .A1(n93), .B0(N88), .B1(n593), .Y(N159) );
  NOR2X1 U916 ( .A(n613), .B(N89), .Y(n610) );
  NOR2X1 U917 ( .A(n613), .B(n676), .Y(n609) );
  NOR2X1 U918 ( .A(n676), .B(N90), .Y(n607) );
  NOR2X1 U919 ( .A(N89), .B(N90), .Y(n606) );
  AO22X1 U920 ( .A0(\array[5][0] ), .A1(n607), .B0(\array[4][0] ), .B1(n606), 
        .Y(n597) );
  AOI221XL U921 ( .A0(\array[6][0] ), .A1(n610), .B0(\array[7][0] ), .B1(n609), 
        .C0(n597), .Y(n600) );
  AO22X1 U922 ( .A0(\array[1][0] ), .A1(n607), .B0(\array[0][0] ), .B1(n606), 
        .Y(n598) );
  AOI221XL U923 ( .A0(\array[2][0] ), .A1(n610), .B0(\array[3][0] ), .B1(n609), 
        .C0(n598), .Y(n599) );
  OAI22XL U924 ( .A0(n678), .A1(n600), .B0(N91), .B1(n599), .Y(N384) );
  AO22X1 U925 ( .A0(\array[5][1] ), .A1(n607), .B0(\array[4][1] ), .B1(n606), 
        .Y(n601) );
  AOI221XL U926 ( .A0(\array[6][1] ), .A1(n610), .B0(\array[7][1] ), .B1(n609), 
        .C0(n601), .Y(n604) );
  AO22X1 U927 ( .A0(\array[1][1] ), .A1(n607), .B0(\array[0][1] ), .B1(n606), 
        .Y(n602) );
  AOI221XL U928 ( .A0(\array[2][1] ), .A1(n610), .B0(\array[3][1] ), .B1(n609), 
        .C0(n602), .Y(n603) );
  OAI22XL U929 ( .A0(n678), .A1(n604), .B0(N91), .B1(n603), .Y(N383) );
  AO22X1 U930 ( .A0(\array[5][2] ), .A1(n607), .B0(\array[4][2] ), .B1(n606), 
        .Y(n605) );
  AOI221XL U931 ( .A0(\array[6][2] ), .A1(n610), .B0(\array[7][2] ), .B1(n609), 
        .C0(n605), .Y(n612) );
  AO22X1 U932 ( .A0(\array[1][2] ), .A1(n607), .B0(\array[0][2] ), .B1(n606), 
        .Y(n608) );
  AOI221XL U933 ( .A0(\array[2][2] ), .A1(n610), .B0(\array[3][2] ), .B1(n609), 
        .C0(n608), .Y(n611) );
  OAI22XL U934 ( .A0(n612), .A1(n678), .B0(N91), .B1(n611), .Y(N382) );
  OAI22XL U935 ( .A0(sum[1]), .A1(n614), .B0(n614), .B1(n641), .Y(n616) );
  NAND2X1 U936 ( .A(sum[7]), .B(n637), .Y(n628) );
  NAND2X1 U937 ( .A(sum[6]), .B(n638), .Y(n623) );
  NOR3BXL U938 ( .AN(n623), .B(n617), .C(n624), .Y(n615) );
  NAND3X1 U939 ( .A(n616), .B(n628), .C(n615), .Y(n635) );
  NAND2X1 U940 ( .A(sum[9]), .B(n636), .Y(n631) );
  NOR2X1 U941 ( .A(n633), .B(n632), .Y(n622) );
  NAND2X1 U942 ( .A(sum[2]), .B(n640), .Y(n630) );
  OAI211X1 U943 ( .A0(n619), .A1(n646), .B0(n618), .C0(n630), .Y(n620) );
  OAI221XL U944 ( .A0(sum[2]), .A1(n640), .B0(sum[3]), .B1(n639), .C0(n620), 
        .Y(n621) );
  AOI222XL U945 ( .A0(n755), .A1(n644), .B0(n756), .B1(n645), .C0(n622), .C1(
        n621), .Y(n626) );
  NAND2BX1 U946 ( .AN(n624), .B(n623), .Y(n625) );
  OAI222XL U947 ( .A0(n626), .A1(n625), .B0(sum[6]), .B1(n638), .C0(sum[7]), 
        .C1(n637), .Y(n627) );
  NOR4X1 U948 ( .A(n635), .B(n634), .C(n633), .D(n632), .Y(N442) );
endmodule

