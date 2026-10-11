/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Oct 10 23:04:53 2026
/////////////////////////////////////////////////////////////


module rst_synchronizer_0 ( clk, rst, synch_rst );
  input clk, rst;
  output synch_rst;
  wire   \Q[0] ;

  DFFRQX2M \Q_reg[1]  ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(synch_rst) );
  DFFRQX2M \Q_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(\Q[0] ) );
endmodule


module clk_gating ( clk, en, gclk );
  input clk, en;
  output gclk;
  wire   en_latched;

  TLATNX2M en_latched_reg ( .D(en), .GN(clk), .Q(en_latched) );
  CLKAND2X6M U2 ( .A(en_latched), .B(clk), .Y(gclk) );
endmodule


module Reg_file_ADDR_WIDTH4_DATA_WIDTH8 ( CLK, RST, Address, WrEn, RdEn, 
        WrData, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
  wire   N10, N11, N12, N13, n345, n346, n347, n348, n349, n350, \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[6][7] , \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] ,
         \mem[6][2] , \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] ,
         \mem[7][5] , \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] ,
         \mem[7][0] , \mem[8][7] , \mem[8][6] , \mem[8][5] , \mem[8][4] ,
         \mem[8][3] , \mem[8][2] , \mem[8][1] , \mem[8][0] , \mem[9][7] ,
         \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] , \mem[9][2] ,
         \mem[9][1] , \mem[9][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[11][7] , \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] ,
         \mem[11][2] , \mem[11][1] , \mem[11][0] , \mem[12][7] , \mem[12][6] ,
         \mem[12][5] , \mem[12][4] , \mem[12][3] , \mem[12][2] , \mem[12][1] ,
         \mem[12][0] , \mem[13][7] , \mem[13][6] , \mem[13][5] , \mem[13][4] ,
         \mem[13][3] , \mem[13][2] , \mem[13][1] , \mem[13][0] , \mem[14][7] ,
         \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] , \mem[14][2] ,
         \mem[14][1] , \mem[14][0] , \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         N48, N49, N50, N51, N52, N53, N54, N55, n2, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n25, n27, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n1, n3, n4, n5, n6, n7, n26, n29, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
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
         n341, n342, n343, n344;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFRHQX8M \mem_reg[1][4]  ( .D(n161), .CK(CLK), .RN(n330), .Q(REG1[4]) );
  DFFRHQX8M \mem_reg[1][3]  ( .D(n160), .CK(CLK), .RN(n329), .Q(REG1[3]) );
  DFFRHQX8M \mem_reg[2][6]  ( .D(n155), .CK(CLK), .RN(n329), .Q(REG2[6]) );
  DFFRHQX8M \mem_reg[2][5]  ( .D(n154), .CK(CLK), .RN(n329), .Q(REG2[5]) );
  DFFRHQX8M \mem_reg[2][4]  ( .D(n153), .CK(CLK), .RN(n329), .Q(REG2[4]) );
  DFFRHQX8M \mem_reg[2][3]  ( .D(n152), .CK(CLK), .RN(n329), .Q(REG2[3]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n44), .CK(CLK), .RN(n331), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n43), .CK(CLK), .RN(n331), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n42), .CK(CLK), .RN(n331), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n41), .CK(CLK), .RN(n331), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n40), .CK(CLK), .RN(n331), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n39), .CK(CLK), .RN(n331), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n38), .CK(CLK), .RN(n331), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n37), .CK(CLK), .RN(n330), .Q(RdData[0]) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n132), .CK(CLK), .RN(n328), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n131), .CK(CLK), .RN(n327), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n130), .CK(CLK), .RN(n327), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n129), .CK(CLK), .RN(n327), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n128), .CK(CLK), .RN(n327), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n127), .CK(CLK), .RN(n327), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n126), .CK(CLK), .RN(n327), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n125), .CK(CLK), .RN(n327), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n116), .CK(CLK), .RN(n326), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n115), .CK(CLK), .RN(n326), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n114), .CK(CLK), .RN(n326), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n113), .CK(CLK), .RN(n326), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n112), .CK(CLK), .RN(n326), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n111), .CK(CLK), .RN(n326), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n110), .CK(CLK), .RN(n326), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n109), .CK(CLK), .RN(n326), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[9][7]  ( .D(n100), .CK(CLK), .RN(n325), .Q(\mem[9][7] ) );
  DFFRQX2M \mem_reg[9][6]  ( .D(n99), .CK(CLK), .RN(n325), .Q(\mem[9][6] ) );
  DFFRQX2M \mem_reg[9][5]  ( .D(n98), .CK(CLK), .RN(n325), .Q(\mem[9][5] ) );
  DFFRQX2M \mem_reg[9][4]  ( .D(n97), .CK(CLK), .RN(n325), .Q(\mem[9][4] ) );
  DFFRQX2M \mem_reg[9][3]  ( .D(n96), .CK(CLK), .RN(n325), .Q(\mem[9][3] ) );
  DFFRQX2M \mem_reg[9][2]  ( .D(n95), .CK(CLK), .RN(n325), .Q(\mem[9][2] ) );
  DFFRQX2M \mem_reg[9][1]  ( .D(n94), .CK(CLK), .RN(n325), .Q(\mem[9][1] ) );
  DFFRQX2M \mem_reg[9][0]  ( .D(n93), .CK(CLK), .RN(n324), .Q(\mem[9][0] ) );
  DFFRQX2M \mem_reg[11][7]  ( .D(n84), .CK(CLK), .RN(n324), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n83), .CK(CLK), .RN(n324), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n82), .CK(CLK), .RN(n324), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n81), .CK(CLK), .RN(n324), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n80), .CK(CLK), .RN(n323), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n79), .CK(CLK), .RN(n323), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n78), .CK(CLK), .RN(n323), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n77), .CK(CLK), .RN(n323), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[13][7]  ( .D(n68), .CK(CLK), .RN(n323), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n67), .CK(CLK), .RN(n322), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n66), .CK(CLK), .RN(n323), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n65), .CK(CLK), .RN(n322), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n64), .CK(CLK), .RN(n322), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n63), .CK(CLK), .RN(n322), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n62), .CK(CLK), .RN(n322), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n61), .CK(CLK), .RN(n322), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[15][7]  ( .D(n52), .CK(CLK), .RN(n321), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n51), .CK(CLK), .RN(n321), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n50), .CK(CLK), .RN(n321), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n49), .CK(CLK), .RN(n321), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n48), .CK(CLK), .RN(n321), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n47), .CK(CLK), .RN(n321), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n46), .CK(CLK), .RN(n321), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n45), .CK(CLK), .RN(n326), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n140), .CK(CLK), .RN(n328), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n139), .CK(CLK), .RN(n328), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n138), .CK(CLK), .RN(n328), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n137), .CK(CLK), .RN(n328), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n136), .CK(CLK), .RN(n328), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n135), .CK(CLK), .RN(n328), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n134), .CK(CLK), .RN(n328), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n133), .CK(CLK), .RN(n328), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n124), .CK(CLK), .RN(n327), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n123), .CK(CLK), .RN(n327), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n122), .CK(CLK), .RN(n327), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n121), .CK(CLK), .RN(n327), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n120), .CK(CLK), .RN(n327), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n119), .CK(CLK), .RN(n327), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n118), .CK(CLK), .RN(n326), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n117), .CK(CLK), .RN(n326), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[8][7]  ( .D(n108), .CK(CLK), .RN(n326), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n107), .CK(CLK), .RN(n326), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n106), .CK(CLK), .RN(n325), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n105), .CK(CLK), .RN(n325), .Q(\mem[8][4] ) );
  DFFRQX2M \mem_reg[8][3]  ( .D(n104), .CK(CLK), .RN(n325), .Q(\mem[8][3] ) );
  DFFRQX2M \mem_reg[8][2]  ( .D(n103), .CK(CLK), .RN(n325), .Q(\mem[8][2] ) );
  DFFRQX2M \mem_reg[8][1]  ( .D(n102), .CK(CLK), .RN(n325), .Q(\mem[8][1] ) );
  DFFRQX2M \mem_reg[8][0]  ( .D(n101), .CK(CLK), .RN(n325), .Q(\mem[8][0] ) );
  DFFRQX2M \mem_reg[10][7]  ( .D(n92), .CK(CLK), .RN(n324), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n91), .CK(CLK), .RN(n324), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n90), .CK(CLK), .RN(n324), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n89), .CK(CLK), .RN(n324), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n88), .CK(CLK), .RN(n324), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n87), .CK(CLK), .RN(n324), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n86), .CK(CLK), .RN(n324), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n85), .CK(CLK), .RN(n324), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[12][7]  ( .D(n76), .CK(CLK), .RN(n323), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n75), .CK(CLK), .RN(n323), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n74), .CK(CLK), .RN(n323), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n73), .CK(CLK), .RN(n323), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n72), .CK(CLK), .RN(n323), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n71), .CK(CLK), .RN(n323), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n70), .CK(CLK), .RN(n323), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n69), .CK(CLK), .RN(n322), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[14][7]  ( .D(n60), .CK(CLK), .RN(n322), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n59), .CK(CLK), .RN(n322), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n58), .CK(CLK), .RN(n322), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n57), .CK(CLK), .RN(n322), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n56), .CK(CLK), .RN(n322), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n55), .CK(CLK), .RN(n321), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n54), .CK(CLK), .RN(n322), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n53), .CK(CLK), .RN(n321), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[2][1]  ( .D(n150), .CK(CLK), .RN(n329), .Q(REG2[1]) );
  DFFSQX4M \mem_reg[2][0]  ( .D(n149), .CK(CLK), .SN(n321), .Q(REG2[0]) );
  DFFRQX4M \mem_reg[2][2]  ( .D(n151), .CK(CLK), .RN(n329), .Q(REG2[2]) );
  DFFSQX4M \mem_reg[3][5]  ( .D(n146), .CK(CLK), .SN(n321), .Q(REG3[5]) );
  DFFRQX4M \mem_reg[3][4]  ( .D(n145), .CK(CLK), .RN(n329), .Q(REG3[4]) );
  DFFRQX4M \mem_reg[3][3]  ( .D(n144), .CK(CLK), .RN(n328), .Q(REG3[3]) );
  DFFRQX4M \mem_reg[3][7]  ( .D(n148), .CK(CLK), .RN(n329), .Q(REG3[7]) );
  DFFRQX4M \mem_reg[3][2]  ( .D(n143), .CK(CLK), .RN(n328), .Q(REG3[2]) );
  DFFRQX4M \mem_reg[3][1]  ( .D(n142), .CK(CLK), .RN(n328), .Q(REG3[1]) );
  DFFRQX4M \mem_reg[3][6]  ( .D(n147), .CK(CLK), .RN(n329), .Q(REG3[6]) );
  DFFRQX2M RdData_Valid_reg ( .D(n320), .CK(CLK), .RN(n321), .Q(RdData_Valid)
         );
  DFFRQX2M \mem_reg[0][3]  ( .D(n168), .CK(CLK), .RN(n330), .Q(REG0[3]) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n167), .CK(CLK), .RN(n330), .Q(REG0[2]) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n165), .CK(CLK), .RN(n330), .Q(REG0[0]) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n166), .CK(CLK), .RN(n330), .Q(REG0[1]) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n141), .CK(CLK), .RN(n328), .Q(REG3[0]) );
  DFFRHQX8M \mem_reg[0][5]  ( .D(n170), .CK(CLK), .RN(n330), .Q(REG0[5]) );
  DFFRHQX8M \mem_reg[0][4]  ( .D(n169), .CK(CLK), .RN(n330), .Q(REG0[4]) );
  DFFSHQX8M \mem_reg[2][7]  ( .D(n156), .CK(CLK), .SN(n321), .Q(REG2[7]) );
  DFFRHQX4M \mem_reg[1][6]  ( .D(n163), .CK(CLK), .RN(n330), .Q(n346) );
  DFFRHQX4M \mem_reg[1][2]  ( .D(n159), .CK(CLK), .RN(n329), .Q(n348) );
  DFFRHQX4M \mem_reg[1][1]  ( .D(n158), .CK(CLK), .RN(n329), .Q(n349) );
  DFFRHQX4M \mem_reg[1][0]  ( .D(n157), .CK(CLK), .RN(n329), .Q(n350) );
  DFFRHQX4M \mem_reg[0][6]  ( .D(n171), .CK(CLK), .RN(n330), .Q(REG0[6]) );
  DFFRHQX4M \mem_reg[0][7]  ( .D(n172), .CK(CLK), .RN(n330), .Q(REG0[7]) );
  DFFRHQX1M \mem_reg[1][5]  ( .D(n162), .CK(CLK), .RN(n330), .Q(n347) );
  DFFRHQX2M \mem_reg[1][7]  ( .D(n164), .CK(CLK), .RN(n330), .Q(n345) );
  BUFX12M U3 ( .A(n345), .Y(REG1[7]) );
  CLKINVX16M U4 ( .A(n7), .Y(REG1[5]) );
  INVX4M U5 ( .A(n347), .Y(n7) );
  CLKBUFX32M U6 ( .A(n348), .Y(REG1[2]) );
  AND2X2M U7 ( .A(WrEn), .B(n277), .Y(n1) );
  NOR2X6M U8 ( .A(N10), .B(N11), .Y(n3) );
  AND2X2M U9 ( .A(N10), .B(n1), .Y(n4) );
  NOR2X2M U10 ( .A(n278), .B(N11), .Y(n268) );
  AND2X2M U11 ( .A(n278), .B(n1), .Y(n5) );
  INVX2M U12 ( .A(N13), .Y(n277) );
  NOR2X2M U13 ( .A(n276), .B(N10), .Y(n267) );
  INVX2M U14 ( .A(N12), .Y(n344) );
  BUFX10M U15 ( .A(n346), .Y(REG1[6]) );
  AOI22X1M U16 ( .A0(REG0[3]), .A1(n294), .B0(REG1[3]), .B1(n290), .Y(n213) );
  AOI22X1M U17 ( .A0(REG0[2]), .A1(n295), .B0(REG1[2]), .B1(n291), .Y(n201) );
  AOI22X1M U18 ( .A0(REG0[6]), .A1(n292), .B0(REG1[6]), .B1(n289), .Y(n249) );
  AOI22X1M U19 ( .A0(REG0[7]), .A1(n293), .B0(REG1[7]), .B1(n289), .Y(n264) );
  AOI22X1M U20 ( .A0(REG0[5]), .A1(n294), .B0(REG1[5]), .B1(n290), .Y(n237) );
  AO22XLM U21 ( .A0(REG0[4]), .A1(n294), .B0(REG1[4]), .B1(n290), .Y(n225) );
  INVXLM U22 ( .A(n225), .Y(n6) );
  OAI2BB2X1M U23 ( .B0(n336), .B1(n297), .A0N(REG1[3]), .A1N(n297), .Y(n160)
         );
  OAI2BB2X1M U24 ( .B0(n335), .B1(n297), .A0N(REG1[7]), .A1N(n297), .Y(n164)
         );
  OAI2BB2X1M U25 ( .B0(n340), .B1(n297), .A0N(REG1[6]), .A1N(n297), .Y(n163)
         );
  OAI2BB2X1M U26 ( .B0(n342), .B1(n297), .A0N(REG1[4]), .A1N(n297), .Y(n161)
         );
  OAI2BB2X1M U27 ( .B0(n337), .B1(n297), .A0N(REG1[2]), .A1N(n297), .Y(n159)
         );
  BUFX8M U28 ( .A(n35), .Y(n297) );
  OAI2BB2X1M U29 ( .B0(n341), .B1(n297), .A0N(REG1[5]), .A1N(n297), .Y(n162)
         );
  INVX24M U30 ( .A(n350), .Y(n26) );
  CLKINVX40M U31 ( .A(n26), .Y(REG1[0]) );
  INVX12M U32 ( .A(n349), .Y(n29) );
  CLKINVX40M U33 ( .A(n29), .Y(REG1[1]) );
  INVX2M U34 ( .A(N10), .Y(n278) );
  NAND2X4M U35 ( .A(n344), .B(n277), .Y(n263) );
  NAND2X4M U36 ( .A(N13), .B(N12), .Y(n260) );
  NAND2X4M U37 ( .A(N12), .B(n277), .Y(n269) );
  NAND2X4M U38 ( .A(N13), .B(n344), .Y(n257) );
  BUFX6M U39 ( .A(n332), .Y(n330) );
  NOR2X4M U40 ( .A(n344), .B(n276), .Y(n12) );
  NOR2X4M U41 ( .A(n344), .B(N11), .Y(n16) );
  AND3X2M U42 ( .A(WrEn), .B(N13), .C(n278), .Y(n14) );
  NOR2X4M U43 ( .A(n276), .B(N12), .Y(n19) );
  NOR2X4M U44 ( .A(N12), .B(N11), .Y(n22) );
  AND3X2M U45 ( .A(WrEn), .B(N13), .C(N10), .Y(n11) );
  INVX8M U46 ( .A(WrData[4]), .Y(n342) );
  INVX8M U47 ( .A(WrData[5]), .Y(n341) );
  INVX8M U48 ( .A(WrData[6]), .Y(n340) );
  CLKBUFX6M U49 ( .A(n281), .Y(n282) );
  CLKBUFX6M U50 ( .A(n293), .Y(n294) );
  CLKBUFX6M U51 ( .A(n284), .Y(n286) );
  CLKBUFX6M U52 ( .A(n288), .Y(n290) );
  CLKBUFX6M U53 ( .A(n280), .Y(n283) );
  BUFX2M U54 ( .A(n279), .Y(n280) );
  BUFX4M U55 ( .A(n284), .Y(n285) );
  BUFX4M U56 ( .A(n288), .Y(n289) );
  BUFX2M U57 ( .A(n279), .Y(n281) );
  BUFX4M U58 ( .A(n17), .Y(n313) );
  BUFX4M U59 ( .A(n20), .Y(n309) );
  BUFX4M U60 ( .A(n23), .Y(n305) );
  BUFX4M U61 ( .A(n13), .Y(n317) );
  BUFX4M U62 ( .A(n15), .Y(n315) );
  BUFX4M U63 ( .A(n18), .Y(n311) );
  BUFX4M U64 ( .A(n21), .Y(n307) );
  BUFX4M U65 ( .A(n2), .Y(n319) );
  BUFX4M U66 ( .A(n15), .Y(n314) );
  BUFX4M U67 ( .A(n17), .Y(n312) );
  BUFX4M U68 ( .A(n18), .Y(n310) );
  BUFX4M U69 ( .A(n20), .Y(n308) );
  BUFX4M U70 ( .A(n21), .Y(n306) );
  BUFX4M U71 ( .A(n23), .Y(n304) );
  BUFX4M U72 ( .A(n13), .Y(n316) );
  BUFX4M U73 ( .A(n2), .Y(n318) );
  CLKBUFX8M U74 ( .A(n334), .Y(n321) );
  CLKBUFX8M U75 ( .A(n333), .Y(n323) );
  CLKBUFX8M U76 ( .A(n333), .Y(n324) );
  CLKBUFX8M U77 ( .A(n333), .Y(n325) );
  CLKBUFX8M U78 ( .A(n334), .Y(n326) );
  CLKBUFX8M U79 ( .A(n332), .Y(n327) );
  CLKBUFX8M U80 ( .A(RST), .Y(n328) );
  BUFX6M U81 ( .A(n332), .Y(n329) );
  CLKBUFX8M U82 ( .A(n333), .Y(n322) );
  BUFX4M U83 ( .A(n332), .Y(n331) );
  CLKBUFX6M U84 ( .A(n292), .Y(n295) );
  BUFX2M U85 ( .A(n3), .Y(n292) );
  CLKBUFX6M U86 ( .A(n284), .Y(n287) );
  CLKBUFX6M U87 ( .A(n268), .Y(n291) );
  BUFX2M U88 ( .A(n266), .Y(n279) );
  BUFX2M U89 ( .A(n3), .Y(n293) );
  BUFX2M U90 ( .A(n267), .Y(n284) );
  BUFX2M U91 ( .A(n268), .Y(n288) );
  CLKBUFX8M U92 ( .A(n25), .Y(n303) );
  NAND2XLM U93 ( .A(n4), .B(n12), .Y(n25) );
  CLKBUFX8M U94 ( .A(n31), .Y(n301) );
  NAND2XLM U95 ( .A(n4), .B(n16), .Y(n31) );
  CLKBUFX8M U96 ( .A(n33), .Y(n299) );
  NAND2XLM U97 ( .A(n4), .B(n19), .Y(n33) );
  NAND2XLM U98 ( .A(n4), .B(n22), .Y(n35) );
  CLKBUFX8M U99 ( .A(n27), .Y(n302) );
  NAND2XLM U100 ( .A(n5), .B(n12), .Y(n27) );
  CLKBUFX8M U101 ( .A(n32), .Y(n300) );
  NAND2XLM U102 ( .A(n5), .B(n16), .Y(n32) );
  CLKBUFX8M U103 ( .A(n34), .Y(n298) );
  NAND2XLM U104 ( .A(n5), .B(n19), .Y(n34) );
  CLKBUFX8M U105 ( .A(n36), .Y(n296) );
  NAND2XLM U106 ( .A(n5), .B(n22), .Y(n36) );
  NAND2X2M U107 ( .A(n19), .B(n14), .Y(n20) );
  NAND2X2M U108 ( .A(n16), .B(n14), .Y(n17) );
  NAND2X2M U109 ( .A(n22), .B(n14), .Y(n23) );
  NAND2X2M U110 ( .A(n14), .B(n12), .Y(n13) );
  NAND2X2M U111 ( .A(n19), .B(n11), .Y(n18) );
  NAND2X2M U112 ( .A(n16), .B(n11), .Y(n15) );
  NAND2X2M U113 ( .A(n22), .B(n11), .Y(n21) );
  NAND2X2M U114 ( .A(n11), .B(n12), .Y(n2) );
  INVX4M U115 ( .A(n320), .Y(n343) );
  BUFX2M U116 ( .A(n334), .Y(n333) );
  BUFX2M U117 ( .A(n334), .Y(n332) );
  INVX2M U118 ( .A(N11), .Y(n276) );
  CLKBUFX6M U119 ( .A(RdEn), .Y(n320) );
  INVX8M U120 ( .A(WrData[0]), .Y(n339) );
  INVX8M U121 ( .A(WrData[1]), .Y(n338) );
  INVX8M U122 ( .A(WrData[2]), .Y(n337) );
  INVX8M U123 ( .A(WrData[3]), .Y(n336) );
  INVX8M U124 ( .A(WrData[7]), .Y(n335) );
  BUFX2M U125 ( .A(RST), .Y(n334) );
  AO22X1M U126 ( .A0(RdData[1]), .A1(n343), .B0(N54), .B1(n320), .Y(n38) );
  AO22X1M U127 ( .A0(RdData[2]), .A1(n343), .B0(N53), .B1(n320), .Y(n39) );
  AO22X1M U128 ( .A0(RdData[3]), .A1(n343), .B0(N52), .B1(n320), .Y(n40) );
  AO22X1M U129 ( .A0(RdData[4]), .A1(n343), .B0(N51), .B1(n320), .Y(n41) );
  AO22X1M U130 ( .A0(RdData[5]), .A1(n343), .B0(N50), .B1(n320), .Y(n42) );
  AO22X1M U131 ( .A0(RdData[6]), .A1(n343), .B0(N49), .B1(n320), .Y(n43) );
  AO22X1M U132 ( .A0(RdData[7]), .A1(n343), .B0(N48), .B1(n320), .Y(n44) );
  AO22X1M U133 ( .A0(RdData[0]), .A1(n343), .B0(n320), .B1(N55), .Y(n37) );
  OAI2BB2X1M U134 ( .B0(n339), .B1(n303), .A0N(\mem[7][0] ), .A1N(n303), .Y(
        n109) );
  OAI2BB2X1M U135 ( .B0(n338), .B1(n303), .A0N(\mem[7][1] ), .A1N(n303), .Y(
        n110) );
  OAI2BB2X1M U136 ( .B0(n337), .B1(n303), .A0N(\mem[7][2] ), .A1N(n303), .Y(
        n111) );
  OAI2BB2X1M U137 ( .B0(n336), .B1(n303), .A0N(\mem[7][3] ), .A1N(n303), .Y(
        n112) );
  OAI2BB2X1M U138 ( .B0(n342), .B1(n303), .A0N(\mem[7][4] ), .A1N(n303), .Y(
        n113) );
  OAI2BB2X1M U139 ( .B0(n341), .B1(n303), .A0N(\mem[7][5] ), .A1N(n303), .Y(
        n114) );
  OAI2BB2X1M U140 ( .B0(n340), .B1(n303), .A0N(\mem[7][6] ), .A1N(n303), .Y(
        n115) );
  OAI2BB2X1M U141 ( .B0(n335), .B1(n303), .A0N(\mem[7][7] ), .A1N(n303), .Y(
        n116) );
  OAI2BB2X1M U142 ( .B0(n339), .B1(n301), .A0N(\mem[5][0] ), .A1N(n301), .Y(
        n125) );
  OAI2BB2X1M U143 ( .B0(n338), .B1(n301), .A0N(\mem[5][1] ), .A1N(n301), .Y(
        n126) );
  OAI2BB2X1M U144 ( .B0(n337), .B1(n301), .A0N(\mem[5][2] ), .A1N(n301), .Y(
        n127) );
  OAI2BB2X1M U145 ( .B0(n336), .B1(n301), .A0N(\mem[5][3] ), .A1N(n301), .Y(
        n128) );
  OAI2BB2X1M U146 ( .B0(n342), .B1(n301), .A0N(\mem[5][4] ), .A1N(n301), .Y(
        n129) );
  OAI2BB2X1M U147 ( .B0(n341), .B1(n301), .A0N(\mem[5][5] ), .A1N(n301), .Y(
        n130) );
  OAI2BB2X1M U148 ( .B0(n340), .B1(n301), .A0N(\mem[5][6] ), .A1N(n301), .Y(
        n131) );
  OAI2BB2X1M U149 ( .B0(n335), .B1(n301), .A0N(\mem[5][7] ), .A1N(n301), .Y(
        n132) );
  OAI2BB2X1M U150 ( .B0(n339), .B1(n299), .A0N(REG3[0]), .A1N(n299), .Y(n141)
         );
  OAI2BB2X1M U151 ( .B0(n338), .B1(n299), .A0N(REG3[1]), .A1N(n299), .Y(n142)
         );
  OAI2BB2X1M U152 ( .B0(n337), .B1(n299), .A0N(REG3[2]), .A1N(n299), .Y(n143)
         );
  OAI2BB2X1M U153 ( .B0(n336), .B1(n299), .A0N(REG3[3]), .A1N(n299), .Y(n144)
         );
  OAI2BB2X1M U154 ( .B0(n342), .B1(n299), .A0N(REG3[4]), .A1N(n299), .Y(n145)
         );
  OAI2BB2X1M U155 ( .B0(n340), .B1(n299), .A0N(REG3[6]), .A1N(n299), .Y(n147)
         );
  OAI2BB2X1M U156 ( .B0(n335), .B1(n299), .A0N(REG3[7]), .A1N(n299), .Y(n148)
         );
  OAI2BB2X1M U157 ( .B0(n339), .B1(n297), .A0N(REG1[0]), .A1N(n297), .Y(n157)
         );
  OAI2BB2X1M U158 ( .B0(n338), .B1(n297), .A0N(REG1[1]), .A1N(n297), .Y(n158)
         );
  OAI2BB2X1M U159 ( .B0(n341), .B1(n299), .A0N(REG3[5]), .A1N(n299), .Y(n146)
         );
  OAI2BB2X1M U160 ( .B0(n339), .B1(n302), .A0N(\mem[6][0] ), .A1N(n302), .Y(
        n117) );
  OAI2BB2X1M U161 ( .B0(n338), .B1(n302), .A0N(\mem[6][1] ), .A1N(n302), .Y(
        n118) );
  OAI2BB2X1M U162 ( .B0(n337), .B1(n302), .A0N(\mem[6][2] ), .A1N(n302), .Y(
        n119) );
  OAI2BB2X1M U163 ( .B0(n336), .B1(n302), .A0N(\mem[6][3] ), .A1N(n302), .Y(
        n120) );
  OAI2BB2X1M U164 ( .B0(n342), .B1(n302), .A0N(\mem[6][4] ), .A1N(n302), .Y(
        n121) );
  OAI2BB2X1M U165 ( .B0(n341), .B1(n302), .A0N(\mem[6][5] ), .A1N(n302), .Y(
        n122) );
  OAI2BB2X1M U166 ( .B0(n340), .B1(n302), .A0N(\mem[6][6] ), .A1N(n302), .Y(
        n123) );
  OAI2BB2X1M U167 ( .B0(n335), .B1(n302), .A0N(\mem[6][7] ), .A1N(n302), .Y(
        n124) );
  OAI2BB2X1M U168 ( .B0(n339), .B1(n300), .A0N(\mem[4][0] ), .A1N(n300), .Y(
        n133) );
  OAI2BB2X1M U169 ( .B0(n338), .B1(n300), .A0N(\mem[4][1] ), .A1N(n300), .Y(
        n134) );
  OAI2BB2X1M U170 ( .B0(n337), .B1(n300), .A0N(\mem[4][2] ), .A1N(n300), .Y(
        n135) );
  OAI2BB2X1M U171 ( .B0(n336), .B1(n300), .A0N(\mem[4][3] ), .A1N(n300), .Y(
        n136) );
  OAI2BB2X1M U172 ( .B0(n342), .B1(n300), .A0N(\mem[4][4] ), .A1N(n300), .Y(
        n137) );
  OAI2BB2X1M U173 ( .B0(n341), .B1(n300), .A0N(\mem[4][5] ), .A1N(n300), .Y(
        n138) );
  OAI2BB2X1M U174 ( .B0(n340), .B1(n300), .A0N(\mem[4][6] ), .A1N(n300), .Y(
        n139) );
  OAI2BB2X1M U175 ( .B0(n335), .B1(n300), .A0N(\mem[4][7] ), .A1N(n300), .Y(
        n140) );
  OAI2BB2X1M U176 ( .B0(n338), .B1(n298), .A0N(REG2[1]), .A1N(n298), .Y(n150)
         );
  OAI2BB2X1M U177 ( .B0(n337), .B1(n298), .A0N(REG2[2]), .A1N(n298), .Y(n151)
         );
  OAI2BB2X1M U178 ( .B0(n336), .B1(n298), .A0N(REG2[3]), .A1N(n298), .Y(n152)
         );
  OAI2BB2X1M U179 ( .B0(n342), .B1(n298), .A0N(REG2[4]), .A1N(n298), .Y(n153)
         );
  OAI2BB2X1M U180 ( .B0(n341), .B1(n298), .A0N(REG2[5]), .A1N(n298), .Y(n154)
         );
  OAI2BB2X1M U181 ( .B0(n340), .B1(n298), .A0N(REG2[6]), .A1N(n298), .Y(n155)
         );
  OAI2BB2X1M U182 ( .B0(n339), .B1(n296), .A0N(REG0[0]), .A1N(n296), .Y(n165)
         );
  OAI2BB2X1M U183 ( .B0(n338), .B1(n296), .A0N(REG0[1]), .A1N(n296), .Y(n166)
         );
  OAI2BB2X1M U184 ( .B0(n337), .B1(n296), .A0N(REG0[2]), .A1N(n296), .Y(n167)
         );
  OAI2BB2X1M U185 ( .B0(n336), .B1(n296), .A0N(REG0[3]), .A1N(n296), .Y(n168)
         );
  OAI2BB2X1M U186 ( .B0(n342), .B1(n296), .A0N(REG0[4]), .A1N(n296), .Y(n169)
         );
  OAI2BB2X1M U187 ( .B0(n341), .B1(n296), .A0N(REG0[5]), .A1N(n296), .Y(n170)
         );
  OAI2BB2X1M U188 ( .B0(n340), .B1(n296), .A0N(REG0[6]), .A1N(n296), .Y(n171)
         );
  OAI2BB2X1M U189 ( .B0(n335), .B1(n296), .A0N(REG0[7]), .A1N(n296), .Y(n172)
         );
  OAI2BB2X1M U190 ( .B0(n342), .B1(n316), .A0N(\mem[14][4] ), .A1N(n317), .Y(
        n57) );
  OAI2BB2X1M U191 ( .B0(n341), .B1(n316), .A0N(\mem[14][5] ), .A1N(n317), .Y(
        n58) );
  OAI2BB2X1M U192 ( .B0(n340), .B1(n316), .A0N(\mem[14][6] ), .A1N(n317), .Y(
        n59) );
  OAI2BB2X1M U193 ( .B0(n342), .B1(n312), .A0N(\mem[12][4] ), .A1N(n313), .Y(
        n73) );
  OAI2BB2X1M U194 ( .B0(n341), .B1(n312), .A0N(\mem[12][5] ), .A1N(n313), .Y(
        n74) );
  OAI2BB2X1M U195 ( .B0(n340), .B1(n312), .A0N(\mem[12][6] ), .A1N(n313), .Y(
        n75) );
  OAI2BB2X1M U196 ( .B0(n342), .B1(n308), .A0N(\mem[10][4] ), .A1N(n309), .Y(
        n89) );
  OAI2BB2X1M U197 ( .B0(n341), .B1(n308), .A0N(\mem[10][5] ), .A1N(n309), .Y(
        n90) );
  OAI2BB2X1M U198 ( .B0(n340), .B1(n308), .A0N(\mem[10][6] ), .A1N(n309), .Y(
        n91) );
  OAI2BB2X1M U199 ( .B0(n342), .B1(n304), .A0N(\mem[8][4] ), .A1N(n305), .Y(
        n105) );
  OAI2BB2X1M U200 ( .B0(n341), .B1(n304), .A0N(\mem[8][5] ), .A1N(n305), .Y(
        n106) );
  OAI2BB2X1M U201 ( .B0(n340), .B1(n304), .A0N(\mem[8][6] ), .A1N(n305), .Y(
        n107) );
  OAI2BB2X1M U202 ( .B0(n339), .B1(n316), .A0N(\mem[14][0] ), .A1N(n317), .Y(
        n53) );
  OAI2BB2X1M U203 ( .B0(n338), .B1(n316), .A0N(\mem[14][1] ), .A1N(n317), .Y(
        n54) );
  OAI2BB2X1M U204 ( .B0(n337), .B1(n316), .A0N(\mem[14][2] ), .A1N(n317), .Y(
        n55) );
  OAI2BB2X1M U205 ( .B0(n336), .B1(n316), .A0N(\mem[14][3] ), .A1N(n317), .Y(
        n56) );
  OAI2BB2X1M U206 ( .B0(n335), .B1(n317), .A0N(\mem[14][7] ), .A1N(n317), .Y(
        n60) );
  OAI2BB2X1M U207 ( .B0(n339), .B1(n312), .A0N(\mem[12][0] ), .A1N(n313), .Y(
        n69) );
  OAI2BB2X1M U208 ( .B0(n338), .B1(n312), .A0N(\mem[12][1] ), .A1N(n313), .Y(
        n70) );
  OAI2BB2X1M U209 ( .B0(n337), .B1(n312), .A0N(\mem[12][2] ), .A1N(n313), .Y(
        n71) );
  OAI2BB2X1M U210 ( .B0(n336), .B1(n312), .A0N(\mem[12][3] ), .A1N(n313), .Y(
        n72) );
  OAI2BB2X1M U211 ( .B0(n335), .B1(n313), .A0N(\mem[12][7] ), .A1N(n313), .Y(
        n76) );
  OAI2BB2X1M U212 ( .B0(n339), .B1(n308), .A0N(\mem[10][0] ), .A1N(n309), .Y(
        n85) );
  OAI2BB2X1M U213 ( .B0(n338), .B1(n308), .A0N(\mem[10][1] ), .A1N(n309), .Y(
        n86) );
  OAI2BB2X1M U214 ( .B0(n337), .B1(n308), .A0N(\mem[10][2] ), .A1N(n309), .Y(
        n87) );
  OAI2BB2X1M U215 ( .B0(n336), .B1(n308), .A0N(\mem[10][3] ), .A1N(n309), .Y(
        n88) );
  OAI2BB2X1M U216 ( .B0(n335), .B1(n309), .A0N(\mem[10][7] ), .A1N(n309), .Y(
        n92) );
  OAI2BB2X1M U217 ( .B0(n339), .B1(n304), .A0N(\mem[8][0] ), .A1N(n305), .Y(
        n101) );
  OAI2BB2X1M U218 ( .B0(n338), .B1(n304), .A0N(\mem[8][1] ), .A1N(n305), .Y(
        n102) );
  OAI2BB2X1M U219 ( .B0(n337), .B1(n304), .A0N(\mem[8][2] ), .A1N(n305), .Y(
        n103) );
  OAI2BB2X1M U220 ( .B0(n336), .B1(n304), .A0N(\mem[8][3] ), .A1N(n305), .Y(
        n104) );
  OAI2BB2X1M U221 ( .B0(n335), .B1(n305), .A0N(\mem[8][7] ), .A1N(n305), .Y(
        n108) );
  OAI2BB2X1M U222 ( .B0(n339), .B1(n298), .A0N(REG2[0]), .A1N(n298), .Y(n149)
         );
  OAI2BB2X1M U223 ( .B0(n335), .B1(n298), .A0N(REG2[7]), .A1N(n298), .Y(n156)
         );
  OAI2BB2X1M U224 ( .B0(n318), .B1(n342), .A0N(\mem[15][4] ), .A1N(n319), .Y(
        n49) );
  OAI2BB2X1M U225 ( .B0(n318), .B1(n341), .A0N(\mem[15][5] ), .A1N(n319), .Y(
        n50) );
  OAI2BB2X1M U226 ( .B0(n318), .B1(n340), .A0N(\mem[15][6] ), .A1N(n319), .Y(
        n51) );
  OAI2BB2X1M U227 ( .B0(n342), .B1(n314), .A0N(\mem[13][4] ), .A1N(n315), .Y(
        n65) );
  OAI2BB2X1M U228 ( .B0(n341), .B1(n314), .A0N(\mem[13][5] ), .A1N(n315), .Y(
        n66) );
  OAI2BB2X1M U229 ( .B0(n340), .B1(n314), .A0N(\mem[13][6] ), .A1N(n315), .Y(
        n67) );
  OAI2BB2X1M U230 ( .B0(n342), .B1(n310), .A0N(\mem[11][4] ), .A1N(n311), .Y(
        n81) );
  OAI2BB2X1M U231 ( .B0(n341), .B1(n310), .A0N(\mem[11][5] ), .A1N(n311), .Y(
        n82) );
  OAI2BB2X1M U232 ( .B0(n340), .B1(n310), .A0N(\mem[11][6] ), .A1N(n311), .Y(
        n83) );
  OAI2BB2X1M U233 ( .B0(n342), .B1(n306), .A0N(\mem[9][4] ), .A1N(n307), .Y(
        n97) );
  OAI2BB2X1M U234 ( .B0(n341), .B1(n306), .A0N(\mem[9][5] ), .A1N(n307), .Y(
        n98) );
  OAI2BB2X1M U235 ( .B0(n340), .B1(n306), .A0N(\mem[9][6] ), .A1N(n307), .Y(
        n99) );
  OAI2BB2X1M U236 ( .B0(n318), .B1(n339), .A0N(\mem[15][0] ), .A1N(n319), .Y(
        n45) );
  OAI2BB2X1M U237 ( .B0(n318), .B1(n338), .A0N(\mem[15][1] ), .A1N(n319), .Y(
        n46) );
  OAI2BB2X1M U238 ( .B0(n318), .B1(n337), .A0N(\mem[15][2] ), .A1N(n319), .Y(
        n47) );
  OAI2BB2X1M U239 ( .B0(n318), .B1(n336), .A0N(\mem[15][3] ), .A1N(n319), .Y(
        n48) );
  OAI2BB2X1M U240 ( .B0(n319), .B1(n335), .A0N(\mem[15][7] ), .A1N(n319), .Y(
        n52) );
  OAI2BB2X1M U241 ( .B0(n339), .B1(n314), .A0N(\mem[13][0] ), .A1N(n315), .Y(
        n61) );
  OAI2BB2X1M U242 ( .B0(n338), .B1(n314), .A0N(\mem[13][1] ), .A1N(n315), .Y(
        n62) );
  OAI2BB2X1M U243 ( .B0(n337), .B1(n314), .A0N(\mem[13][2] ), .A1N(n315), .Y(
        n63) );
  OAI2BB2X1M U244 ( .B0(n336), .B1(n314), .A0N(\mem[13][3] ), .A1N(n315), .Y(
        n64) );
  OAI2BB2X1M U245 ( .B0(n335), .B1(n315), .A0N(\mem[13][7] ), .A1N(n315), .Y(
        n68) );
  OAI2BB2X1M U246 ( .B0(n339), .B1(n310), .A0N(\mem[11][0] ), .A1N(n311), .Y(
        n77) );
  OAI2BB2X1M U247 ( .B0(n338), .B1(n310), .A0N(\mem[11][1] ), .A1N(n311), .Y(
        n78) );
  OAI2BB2X1M U248 ( .B0(n337), .B1(n310), .A0N(\mem[11][2] ), .A1N(n311), .Y(
        n79) );
  OAI2BB2X1M U249 ( .B0(n336), .B1(n310), .A0N(\mem[11][3] ), .A1N(n311), .Y(
        n80) );
  OAI2BB2X1M U250 ( .B0(n335), .B1(n311), .A0N(\mem[11][7] ), .A1N(n311), .Y(
        n84) );
  OAI2BB2X1M U251 ( .B0(n339), .B1(n306), .A0N(\mem[9][0] ), .A1N(n307), .Y(
        n93) );
  OAI2BB2X1M U252 ( .B0(n338), .B1(n306), .A0N(\mem[9][1] ), .A1N(n307), .Y(
        n94) );
  OAI2BB2X1M U253 ( .B0(n337), .B1(n306), .A0N(\mem[9][2] ), .A1N(n307), .Y(
        n95) );
  OAI2BB2X1M U254 ( .B0(n336), .B1(n306), .A0N(\mem[9][3] ), .A1N(n307), .Y(
        n96) );
  OAI2BB2X1M U255 ( .B0(n335), .B1(n307), .A0N(\mem[9][7] ), .A1N(n307), .Y(
        n100) );
  NOR2X1M U256 ( .A(n276), .B(n278), .Y(n266) );
  AOI22X1M U257 ( .A0(\mem[10][0] ), .A1(n287), .B0(\mem[11][0] ), .B1(n283), 
        .Y(n174) );
  AOI22X1M U258 ( .A0(\mem[8][0] ), .A1(n295), .B0(\mem[9][0] ), .B1(n291), 
        .Y(n173) );
  AOI21X1M U259 ( .A0(n174), .A1(n173), .B0(n257), .Y(n184) );
  AOI22X1M U260 ( .A0(\mem[14][0] ), .A1(n287), .B0(\mem[15][0] ), .B1(n283), 
        .Y(n176) );
  AOI22X1M U261 ( .A0(\mem[12][0] ), .A1(n295), .B0(\mem[13][0] ), .B1(n291), 
        .Y(n175) );
  AOI21X1M U262 ( .A0(n176), .A1(n175), .B0(n260), .Y(n183) );
  AOI22X1M U263 ( .A0(REG2[0]), .A1(n287), .B0(REG3[0]), .B1(n283), .Y(n178)
         );
  AOI22X1M U264 ( .A0(REG0[0]), .A1(n295), .B0(REG1[0]), .B1(n291), .Y(n177)
         );
  AOI21X1M U265 ( .A0(n178), .A1(n177), .B0(n263), .Y(n182) );
  AOI22X1M U266 ( .A0(\mem[6][0] ), .A1(n287), .B0(\mem[7][0] ), .B1(n283), 
        .Y(n180) );
  AOI22X1M U267 ( .A0(\mem[4][0] ), .A1(n295), .B0(\mem[5][0] ), .B1(n291), 
        .Y(n179) );
  AOI21X1M U268 ( .A0(n180), .A1(n179), .B0(n269), .Y(n181) );
  OR4X1M U269 ( .A(n184), .B(n183), .C(n182), .D(n181), .Y(N55) );
  AOI22X1M U270 ( .A0(\mem[10][1] ), .A1(n287), .B0(\mem[11][1] ), .B1(n283), 
        .Y(n186) );
  AOI22X1M U271 ( .A0(\mem[8][1] ), .A1(n295), .B0(\mem[9][1] ), .B1(n291), 
        .Y(n185) );
  AOI21X1M U272 ( .A0(n186), .A1(n185), .B0(n257), .Y(n196) );
  AOI22X1M U273 ( .A0(\mem[14][1] ), .A1(n287), .B0(\mem[15][1] ), .B1(n283), 
        .Y(n188) );
  AOI22X1M U274 ( .A0(\mem[12][1] ), .A1(n295), .B0(\mem[13][1] ), .B1(n291), 
        .Y(n187) );
  AOI21X1M U275 ( .A0(n188), .A1(n187), .B0(n260), .Y(n195) );
  AOI22X1M U276 ( .A0(REG2[1]), .A1(n287), .B0(REG3[1]), .B1(n283), .Y(n190)
         );
  AOI22X1M U277 ( .A0(REG0[1]), .A1(n295), .B0(REG1[1]), .B1(n291), .Y(n189)
         );
  AOI21X1M U278 ( .A0(n190), .A1(n189), .B0(n263), .Y(n194) );
  AOI22X1M U279 ( .A0(\mem[6][1] ), .A1(n287), .B0(\mem[7][1] ), .B1(n283), 
        .Y(n192) );
  AOI22X1M U280 ( .A0(\mem[4][1] ), .A1(n295), .B0(\mem[5][1] ), .B1(n291), 
        .Y(n191) );
  AOI21X1M U281 ( .A0(n192), .A1(n191), .B0(n269), .Y(n193) );
  OR4X1M U282 ( .A(n196), .B(n195), .C(n194), .D(n193), .Y(N54) );
  AOI22X1M U283 ( .A0(\mem[10][2] ), .A1(n287), .B0(\mem[11][2] ), .B1(n283), 
        .Y(n198) );
  AOI22X1M U284 ( .A0(\mem[8][2] ), .A1(n295), .B0(\mem[9][2] ), .B1(n291), 
        .Y(n197) );
  AOI21X1M U285 ( .A0(n198), .A1(n197), .B0(n257), .Y(n208) );
  AOI22X1M U286 ( .A0(\mem[14][2] ), .A1(n287), .B0(\mem[15][2] ), .B1(n283), 
        .Y(n200) );
  AOI22X1M U287 ( .A0(\mem[12][2] ), .A1(n295), .B0(\mem[13][2] ), .B1(n291), 
        .Y(n199) );
  AOI21X1M U288 ( .A0(n200), .A1(n199), .B0(n260), .Y(n207) );
  AOI22X1M U289 ( .A0(REG2[2]), .A1(n287), .B0(REG3[2]), .B1(n283), .Y(n202)
         );
  AOI21X1M U290 ( .A0(n202), .A1(n201), .B0(n263), .Y(n206) );
  AOI22X1M U291 ( .A0(\mem[6][2] ), .A1(n287), .B0(\mem[7][2] ), .B1(n283), 
        .Y(n204) );
  AOI22X1M U292 ( .A0(\mem[4][2] ), .A1(n295), .B0(\mem[5][2] ), .B1(n291), 
        .Y(n203) );
  AOI21X1M U293 ( .A0(n204), .A1(n203), .B0(n269), .Y(n205) );
  OR4X1M U294 ( .A(n208), .B(n207), .C(n206), .D(n205), .Y(N53) );
  AOI22X1M U295 ( .A0(\mem[10][3] ), .A1(n286), .B0(\mem[11][3] ), .B1(n282), 
        .Y(n210) );
  AOI22X1M U296 ( .A0(\mem[8][3] ), .A1(n294), .B0(\mem[9][3] ), .B1(n290), 
        .Y(n209) );
  AOI21X1M U297 ( .A0(n210), .A1(n209), .B0(n257), .Y(n220) );
  AOI22X1M U298 ( .A0(\mem[14][3] ), .A1(n286), .B0(\mem[15][3] ), .B1(n282), 
        .Y(n212) );
  AOI22X1M U299 ( .A0(\mem[12][3] ), .A1(n294), .B0(\mem[13][3] ), .B1(n290), 
        .Y(n211) );
  AOI21X1M U300 ( .A0(n212), .A1(n211), .B0(n260), .Y(n219) );
  AOI22X1M U301 ( .A0(REG2[3]), .A1(n286), .B0(REG3[3]), .B1(n282), .Y(n214)
         );
  AOI21X1M U302 ( .A0(n214), .A1(n213), .B0(n263), .Y(n218) );
  AOI22X1M U303 ( .A0(\mem[6][3] ), .A1(n286), .B0(\mem[7][3] ), .B1(n282), 
        .Y(n216) );
  AOI22X1M U304 ( .A0(\mem[4][3] ), .A1(n294), .B0(\mem[5][3] ), .B1(n290), 
        .Y(n215) );
  AOI21X1M U305 ( .A0(n216), .A1(n215), .B0(n269), .Y(n217) );
  OR4X1M U306 ( .A(n220), .B(n219), .C(n218), .D(n217), .Y(N52) );
  AOI22X1M U307 ( .A0(\mem[10][4] ), .A1(n286), .B0(\mem[11][4] ), .B1(n282), 
        .Y(n222) );
  AOI22X1M U308 ( .A0(\mem[8][4] ), .A1(n294), .B0(\mem[9][4] ), .B1(n290), 
        .Y(n221) );
  AOI21X1M U309 ( .A0(n222), .A1(n221), .B0(n257), .Y(n232) );
  AOI22X1M U310 ( .A0(\mem[14][4] ), .A1(n286), .B0(\mem[15][4] ), .B1(n282), 
        .Y(n224) );
  AOI22X1M U311 ( .A0(\mem[12][4] ), .A1(n294), .B0(\mem[13][4] ), .B1(n290), 
        .Y(n223) );
  AOI21X1M U312 ( .A0(n224), .A1(n223), .B0(n260), .Y(n231) );
  AOI22X1M U313 ( .A0(REG2[4]), .A1(n286), .B0(REG3[4]), .B1(n282), .Y(n226)
         );
  AOI21X1M U314 ( .A0(n226), .A1(n6), .B0(n263), .Y(n230) );
  AOI22X1M U315 ( .A0(\mem[6][4] ), .A1(n286), .B0(\mem[7][4] ), .B1(n282), 
        .Y(n228) );
  AOI22X1M U316 ( .A0(\mem[4][4] ), .A1(n294), .B0(\mem[5][4] ), .B1(n290), 
        .Y(n227) );
  AOI21X1M U317 ( .A0(n228), .A1(n227), .B0(n269), .Y(n229) );
  OR4X1M U318 ( .A(n232), .B(n231), .C(n230), .D(n229), .Y(N51) );
  AOI22X1M U319 ( .A0(\mem[10][5] ), .A1(n286), .B0(\mem[11][5] ), .B1(n282), 
        .Y(n234) );
  AOI22X1M U320 ( .A0(\mem[8][5] ), .A1(n294), .B0(\mem[9][5] ), .B1(n290), 
        .Y(n233) );
  AOI21X1M U321 ( .A0(n234), .A1(n233), .B0(n257), .Y(n244) );
  AOI22X1M U322 ( .A0(\mem[14][5] ), .A1(n286), .B0(\mem[15][5] ), .B1(n282), 
        .Y(n236) );
  AOI22X1M U323 ( .A0(\mem[12][5] ), .A1(n294), .B0(\mem[13][5] ), .B1(n290), 
        .Y(n235) );
  AOI21X1M U324 ( .A0(n236), .A1(n235), .B0(n260), .Y(n243) );
  AOI22X1M U325 ( .A0(REG2[5]), .A1(n286), .B0(REG3[5]), .B1(n282), .Y(n238)
         );
  AOI21X1M U326 ( .A0(n238), .A1(n237), .B0(n263), .Y(n242) );
  AOI22X1M U327 ( .A0(\mem[6][5] ), .A1(n286), .B0(\mem[7][5] ), .B1(n282), 
        .Y(n240) );
  AOI22X1M U328 ( .A0(\mem[4][5] ), .A1(n294), .B0(\mem[5][5] ), .B1(n290), 
        .Y(n239) );
  AOI21X1M U329 ( .A0(n240), .A1(n239), .B0(n269), .Y(n241) );
  OR4X1M U330 ( .A(n244), .B(n243), .C(n242), .D(n241), .Y(N50) );
  AOI22X1M U331 ( .A0(\mem[10][6] ), .A1(n285), .B0(\mem[11][6] ), .B1(n280), 
        .Y(n246) );
  AOI22X1M U332 ( .A0(\mem[8][6] ), .A1(n293), .B0(\mem[9][6] ), .B1(n289), 
        .Y(n245) );
  AOI21X1M U333 ( .A0(n246), .A1(n245), .B0(n257), .Y(n256) );
  AOI22X1M U334 ( .A0(\mem[14][6] ), .A1(n285), .B0(\mem[15][6] ), .B1(n280), 
        .Y(n248) );
  AOI22X1M U335 ( .A0(\mem[12][6] ), .A1(n3), .B0(\mem[13][6] ), .B1(n289), 
        .Y(n247) );
  AOI21X1M U336 ( .A0(n248), .A1(n247), .B0(n260), .Y(n255) );
  AOI22X1M U337 ( .A0(REG2[6]), .A1(n285), .B0(REG3[6]), .B1(n280), .Y(n250)
         );
  AOI21X1M U338 ( .A0(n250), .A1(n249), .B0(n263), .Y(n254) );
  AOI22X1M U339 ( .A0(\mem[6][6] ), .A1(n285), .B0(\mem[7][6] ), .B1(n279), 
        .Y(n252) );
  AOI22X1M U340 ( .A0(\mem[4][6] ), .A1(n292), .B0(\mem[5][6] ), .B1(n289), 
        .Y(n251) );
  AOI21X1M U341 ( .A0(n252), .A1(n251), .B0(n269), .Y(n253) );
  OR4X1M U342 ( .A(n256), .B(n255), .C(n254), .D(n253), .Y(N49) );
  AOI22X1M U343 ( .A0(\mem[10][7] ), .A1(n285), .B0(\mem[11][7] ), .B1(n281), 
        .Y(n259) );
  AOI22X1M U344 ( .A0(\mem[8][7] ), .A1(n3), .B0(\mem[9][7] ), .B1(n289), .Y(
        n258) );
  AOI21X1M U345 ( .A0(n259), .A1(n258), .B0(n257), .Y(n275) );
  AOI22X1M U346 ( .A0(\mem[14][7] ), .A1(n285), .B0(\mem[15][7] ), .B1(n281), 
        .Y(n262) );
  AOI22X1M U347 ( .A0(\mem[12][7] ), .A1(n3), .B0(\mem[13][7] ), .B1(n289), 
        .Y(n261) );
  AOI21X1M U348 ( .A0(n262), .A1(n261), .B0(n260), .Y(n274) );
  AOI22X1M U349 ( .A0(REG2[7]), .A1(n285), .B0(REG3[7]), .B1(n281), .Y(n265)
         );
  AOI21X1M U350 ( .A0(n265), .A1(n264), .B0(n263), .Y(n273) );
  AOI22X1M U351 ( .A0(\mem[6][7] ), .A1(n285), .B0(\mem[7][7] ), .B1(n279), 
        .Y(n271) );
  AOI22X1M U352 ( .A0(\mem[4][7] ), .A1(n292), .B0(\mem[5][7] ), .B1(n289), 
        .Y(n270) );
  AOI21X1M U353 ( .A0(n271), .A1(n270), .B0(n269), .Y(n272) );
  OR4X1M U354 ( .A(n275), .B(n274), .C(n273), .D(n272), .Y(N48) );
endmodule


module ALU_WIDTH8_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n19, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18;

  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n14), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n14), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n14), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n14), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n13), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n11), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n8), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n12), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n12), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n12), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n14), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n9), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n14), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n13), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n11), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n10), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n12), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n11), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n9), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_2  ( .A(n2), .B(n13), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n10), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n10), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n11), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n12), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n13), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n13), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n13), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n14), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  MX2X1M U1 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  MX2X3M U2 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKAND2X16M U3 ( .A(n13), .B(n14), .Y(n7) );
  INVX32M U4 ( .A(b[2]), .Y(n13) );
  MX2X4M U5 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKINVX32M U6 ( .A(b[5]), .Y(n10) );
  MX2X4M U7 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  MX2X2M U8 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  BUFX14M U9 ( .A(n19), .Y(quotient[4]) );
  MX2X6M U10 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  AND3X8M U11 ( .A(n18), .B(n11), .C(n10), .Y(n17) );
  INVX10M U12 ( .A(b[3]), .Y(n12) );
  CLKINVX32M U13 ( .A(n1), .Y(quotient[1]) );
  AND2X12M U14 ( .A(\u_div/CryTmp[2][6] ), .B(n18), .Y(quotient[2]) );
  INVX18M U15 ( .A(b[1]), .Y(n14) );
  NAND2X8M U16 ( .A(\u_div/CryTmp[1][7] ), .B(n8), .Y(n1) );
  INVX16M U17 ( .A(b[0]), .Y(n15) );
  INVX2M U18 ( .A(b[6]), .Y(n9) );
  INVX2M U19 ( .A(b[7]), .Y(n8) );
  BUFX6M U20 ( .A(\u_div/PartRem[6][2] ), .Y(n2) );
  BUFX20M U21 ( .A(\u_div/CryTmp[3][5] ), .Y(n4) );
  CLKAND2X3M U22 ( .A(\u_div/CryTmp[4][4] ), .B(n17), .Y(n19) );
  AND3X12M U23 ( .A(n16), .B(n13), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6])
         );
  MX2X1M U24 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X8M U25 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  MX2X1M U26 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  AND2X12M U27 ( .A(\u_div/CryTmp[5][3] ), .B(n16), .Y(quotient[5]) );
  NOR2X12M U28 ( .A(b[6]), .B(b[7]), .Y(n18) );
  INVX32M U29 ( .A(b[4]), .Y(n11) );
  OR2X8M U30 ( .A(a[7]), .B(n15), .Y(\u_div/CryTmp[7][1] ) );
  MX2X4M U31 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKAND2X4M U32 ( .A(\u_div/CryTmp[7][1] ), .B(n7), .Y(n6) );
  AND2X12M U33 ( .A(n16), .B(n6), .Y(quotient[7]) );
  AND2X12M U34 ( .A(n17), .B(n12), .Y(n16) );
  MX2X1M U35 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  OR2X1M U36 ( .A(a[5]), .B(n15), .Y(\u_div/CryTmp[5][1] ) );
  MX2X1M U37 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U38 ( .A(n2), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][3] ) );
  MX2X1M U39 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U40 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U41 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U43 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  XNOR2X1M U44 ( .A(n15), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1M U45 ( .A(n15), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U46 ( .A(n15), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U47 ( .A(n15), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U48 ( .A(n15), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X1M U49 ( .A(n15), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X1M U50 ( .A(a[3]), .B(n15), .Y(\u_div/CryTmp[3][1] ) );
  XNOR2X1M U51 ( .A(n15), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X1M U52 ( .A(a[6]), .B(n15), .Y(\u_div/CryTmp[6][1] ) );
  AND3X12M U53 ( .A(n18), .B(n10), .C(n4), .Y(quotient[3]) );
  MX2X2M U54 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  OR2X2M U55 ( .A(a[2]), .B(n15), .Y(\u_div/CryTmp[2][1] ) );
  NAND2BX2M U56 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U57 ( .A(a[4]), .B(n15), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U58 ( .A(a[1]), .B(n15), .Y(\u_div/CryTmp[1][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U61 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U62 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U63 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U64 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U65 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U66 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U67 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
endmodule


module ALU_WIDTH8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXLM U1 ( .A(B[6]), .Y(n3) );
  INVXLM U2 ( .A(B[7]), .Y(n2) );
  INVXLM U3 ( .A(B[1]), .Y(n8) );
  INVXLM U4 ( .A(B[2]), .Y(n7) );
  INVXLM U5 ( .A(B[3]), .Y(n6) );
  INVXLM U6 ( .A(B[4]), .Y(n5) );
  INVXLM U7 ( .A(B[5]), .Y(n4) );
  CLKINVX1M U8 ( .A(B[0]), .Y(n9) );
  INVX2M U9 ( .A(carry[8]), .Y(DIFF[8]) );
  XNOR2X2M U10 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U11 ( .A(A[0]), .B(n9), .Y(carry[1]) );
endmodule


module ALU_WIDTH8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_WIDTH8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  OAI21BX4M U2 ( .A0(n12), .A1(n13), .B0N(n14), .Y(n10) );
  AOI2BB1X2M U3 ( .A0N(n1), .A1N(n4), .B0(n3), .Y(n17) );
  NOR2X2M U4 ( .A(B[8]), .B(A[8]), .Y(n7) );
  OAI2BB1XLM U5 ( .A0N(n10), .A1N(A[12]), .B0(n11), .Y(n9) );
  NOR2X2M U6 ( .A(B[9]), .B(A[9]), .Y(n4) );
  NOR2X2M U7 ( .A(B[10]), .B(A[10]), .Y(n16) );
  NOR2X2M U8 ( .A(B[11]), .B(A[11]), .Y(n12) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n6) );
  CLKXOR2X2M U10 ( .A(B[13]), .B(n9), .Y(SUM[13]) );
  CLKXOR2X2M U11 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  XNOR2X1M U12 ( .A(n1), .B(n2), .Y(SUM[9]) );
  NOR2X1M U13 ( .A(n3), .B(n4), .Y(n2) );
  CLKXOR2X2M U14 ( .A(n5), .B(n6), .Y(SUM[8]) );
  NAND2BX1M U15 ( .AN(n7), .B(n8), .Y(n5) );
  OAI21X1M U16 ( .A0(A[12]), .A1(n10), .B0(B[12]), .Y(n11) );
  XOR3XLM U17 ( .A(B[12]), .B(A[12]), .C(n10), .Y(SUM[12]) );
  XNOR2X1M U18 ( .A(n13), .B(n15), .Y(SUM[11]) );
  NOR2X1M U19 ( .A(n14), .B(n12), .Y(n15) );
  AND2X1M U20 ( .A(B[11]), .B(A[11]), .Y(n14) );
  OA21X1M U21 ( .A0(n16), .A1(n17), .B0(n18), .Y(n13) );
  CLKXOR2X2M U22 ( .A(n19), .B(n17), .Y(SUM[10]) );
  AND2X1M U23 ( .A(B[9]), .B(A[9]), .Y(n3) );
  OA21X1M U24 ( .A0(n6), .A1(n7), .B0(n8), .Y(n1) );
  CLKNAND2X2M U25 ( .A(B[8]), .B(A[8]), .Y(n8) );
  NAND2BX1M U26 ( .AN(n16), .B(n18), .Y(n19) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n18) );
endmodule


module ALU_WIDTH8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ALU_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX4M U10 ( .A(B[5]), .Y(n27) );
  INVX4M U11 ( .A(B[6]), .Y(n26) );
  INVX4M U12 ( .A(B[7]), .Y(n25) );
  INVX4M U13 ( .A(B[3]), .Y(n29) );
  CLKINVX4M U14 ( .A(B[4]), .Y(n28) );
  INVX4M U15 ( .A(B[2]), .Y(n30) );
  INVX4M U16 ( .A(A[7]), .Y(n17) );
  NOR2X2M U17 ( .A(n29), .B(n24), .Y(\ab[0][3] ) );
  NOR2X2M U18 ( .A(n28), .B(n24), .Y(\ab[0][4] ) );
  NOR2X2M U19 ( .A(n27), .B(n24), .Y(\ab[0][5] ) );
  NOR2X2M U20 ( .A(n30), .B(n23), .Y(\ab[1][2] ) );
  NOR2X2M U21 ( .A(n29), .B(n23), .Y(\ab[1][3] ) );
  NOR2X2M U22 ( .A(n28), .B(n23), .Y(\ab[1][4] ) );
  NOR2X2M U23 ( .A(n30), .B(n24), .Y(\ab[0][2] ) );
  NOR2X2M U24 ( .A(n31), .B(n24), .Y(\ab[0][1] ) );
  NOR2X2M U25 ( .A(n27), .B(n23), .Y(\ab[1][5] ) );
  NOR2X2M U26 ( .A(n31), .B(n23), .Y(\ab[1][1] ) );
  NOR2X2M U27 ( .A(n32), .B(n23), .Y(\ab[1][0] ) );
  NOR2X2M U28 ( .A(n25), .B(n24), .Y(\ab[0][7] ) );
  NOR2X2M U29 ( .A(n26), .B(n24), .Y(\ab[0][6] ) );
  NOR2X2M U30 ( .A(n26), .B(n23), .Y(\ab[1][6] ) );
  NOR2X2M U31 ( .A(n17), .B(n25), .Y(\ab[7][7] ) );
  CLKINVX4M U32 ( .A(A[4]), .Y(n20) );
  CLKINVX4M U33 ( .A(A[5]), .Y(n19) );
  CLKINVX4M U34 ( .A(A[6]), .Y(n18) );
  CLKINVX4M U35 ( .A(B[1]), .Y(n31) );
  CLKINVX4M U36 ( .A(B[0]), .Y(n32) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  AND2X2M U38 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  CLKXOR2X2M U39 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U40 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U41 ( .A(A[1]), .Y(n23) );
  AND2X2M U42 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  AND2X2M U43 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U44 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  INVX4M U45 ( .A(A[3]), .Y(n21) );
  INVX4M U46 ( .A(A[2]), .Y(n22) );
  AND2X2M U47 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  CLKXOR2X2M U48 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U49 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U50 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U51 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XOR2X1M U52 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XOR2X1M U53 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U54 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U55 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U56 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U57 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  INVX4M U58 ( .A(A[0]), .Y(n24) );
  XOR2X1M U59 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U60 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  NOR2X1M U62 ( .A(n17), .B(n26), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n17), .B(n27), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n17), .B(n28), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n17), .B(n29), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n17), .B(n30), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n17), .B(n31), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n17), .B(n32), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n25), .B(n18), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n26), .B(n18), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n27), .B(n18), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n28), .B(n18), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n29), .B(n18), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n30), .B(n18), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n31), .B(n18), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n32), .B(n18), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n25), .B(n19), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n26), .B(n19), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n27), .B(n19), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n28), .B(n19), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n29), .B(n19), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n30), .B(n19), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n31), .B(n19), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n32), .B(n19), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n25), .B(n20), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n26), .B(n20), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n27), .B(n20), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n28), .B(n20), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n29), .B(n20), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n30), .B(n20), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n31), .B(n20), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n32), .B(n20), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n25), .B(n21), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n26), .B(n21), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n27), .B(n21), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n28), .B(n21), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n29), .B(n21), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n30), .B(n21), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n31), .B(n21), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n32), .B(n21), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n25), .B(n22), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n26), .B(n22), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n27), .B(n22), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n28), .B(n22), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n29), .B(n22), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n30), .B(n22), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n31), .B(n22), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n32), .B(n22), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n25), .B(n23), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n32), .B(n24), .Y(PRODUCT[0]) );
endmodule


module ALU_WIDTH8 ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         N90, N91, N92, N93, N94, N95, N98, N99, N100, N101, N102, N103, N104,
         N105, N162, N163, n9, n10, n11, n12, n14, n15, n16, n17, n20, n21,
         n22, n24, n25, n27, n28, n29, n32, n35, n36, n37, n38, n39, n41, n43,
         n44, n45, n46, n47, n48, n50, n52, n53, n55, n56, n58, n60, n61, n63,
         n64, n66, n68, n69, n70, n71, n72, n74, n76, n77, n78, n79, n80, n81,
         n83, n85, n86, n87, n88, n89, n91, n93, n94, n95, n96, n97, n98, n99,
         n100, n102, n103, n105, n106, n107, n108, n109, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n3, n4, n5, n6, n7, n8, n13, n18, n19, n23, n26, n30, n31, n33,
         n34, n40, n42, n49, n51, n54, n57, n59, n62, n65, n67, n73, n75, n82,
         n84, n90, n92, n101, n104, n110, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179;

  OAI21X8M U69 ( .A0(n93), .A1(n94), .B0(Enable), .Y(n24) );
  OAI21X8M U87 ( .A0(n102), .A1(n94), .B0(Enable), .Y(n28) );
  ALU_WIDTH8_DW_div_uns_0 div_33 ( .a({A[7:4], n92, n82, n67, n62}), .b(B), 
        .quotient({N105, N104, N103, N102, N101, N100, N99, N98}) );
  ALU_WIDTH8_DW01_sub_0 sub_29 ( .A({1'b0, n129, n127, A[5:4], n92, n82, n67, 
        n62}), .B({1'b0, B}), .CI(1'b0), .DIFF({N79, N78, N77, N76, N75, N74, 
        N73, N72, N71}) );
  ALU_WIDTH8_DW01_add_0 add_27 ( .A({1'b0, n129, A[6:4], n92, n82, n67, n62}), 
        .B({1'b0, B}), .CI(1'b0), .SUM({N70, N69, N68, N67, N66, N65, N64, N63, 
        N62}) );
  ALU_WIDTH8_DW02_mult_0 mult_31 ( .A({n129, n127, A[5:4], n92, n82, n67, n62}), .B(B), .TC(1'b0), .PRODUCT({N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n124), .CK(CLK), .RN(n130), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n123), .CK(CLK), .RN(n130), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n122), .CK(CLK), .RN(n130), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n121), .CK(CLK), .RN(n131), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n120), .CK(CLK), .RN(n131), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n119), .CK(CLK), .RN(n131), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n154), .CK(CLK), .RN(n130), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n155), .CK(CLK), .RN(n130), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n156), .CK(CLK), .RN(n130), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n157), .CK(CLK), .RN(n130), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n158), .CK(CLK), .RN(n130), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n159), .CK(CLK), .RN(n130), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n160), .CK(CLK), .RN(n130), .Q(ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n125), .CK(CLK), .RN(n130), .Q(ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(n130), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(n118), .CK(CLK), .RN(n131), .Q(ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(n117), .CK(CLK), .RN(n131), .Q(ALU_OUT[0]) );
  INVX2M U3 ( .A(A[6]), .Y(n126) );
  NOR2X4M U4 ( .A(n165), .B(ALU_FUN[1]), .Y(n103) );
  INVX2M U5 ( .A(A[4]), .Y(n104) );
  INVX2M U8 ( .A(A[7]), .Y(n128) );
  AND2X2M U9 ( .A(n23), .B(n5), .Y(n3) );
  AND2X2M U10 ( .A(n13), .B(n6), .Y(n4) );
  AND2X2M U11 ( .A(n18), .B(n19), .Y(n5) );
  AND2X2M U12 ( .A(n7), .B(n8), .Y(n6) );
  INVX2M U13 ( .A(B[4]), .Y(n150) );
  INVX2M U14 ( .A(A[5]), .Y(n110) );
  AOI222X4M U15 ( .A0(B[0]), .A1(n20), .B0(N71), .B1(n21), .C0(n22), .C1(n179), 
        .Y(n11) );
  AOI22X1M U16 ( .A0(B[7]), .A1(n95), .B0(N105), .B1(n166), .Y(n87) );
  OAI21X2M U17 ( .A0(B[5]), .A1(n153), .B0(n142), .Y(n143) );
  OAI221X1M U18 ( .A0(B[2]), .A1(n151), .B0(B[3]), .B1(n152), .C0(n138), .Y(
        n139) );
  CLKNAND2X2M U19 ( .A(N102), .B(n166), .Y(n7) );
  CLKNAND2X2M U20 ( .A(n64), .B(n150), .Y(n8) );
  NAND2XLM U21 ( .A(B[4]), .B(n66), .Y(n13) );
  NAND2XLM U22 ( .A(N101), .B(n166), .Y(n18) );
  CLKNAND2X2M U23 ( .A(n56), .B(n176), .Y(n19) );
  CLKNAND2X2M U24 ( .A(B[3]), .B(n58), .Y(n23) );
  NAND4X2M U25 ( .A(n150), .B(n175), .C(n174), .D(n173), .Y(n97) );
  AOI32X2M U26 ( .A0(n145), .A1(n144), .A2(n143), .B0(n127), .B1(n174), .Y(
        n146) );
  NAND4X2M U27 ( .A(n134), .B(n145), .C(n144), .D(n141), .Y(n149) );
  NAND2X2M U28 ( .A(B[5]), .B(n153), .Y(n144) );
  AOI32X1M U29 ( .A0(n141), .A1(n140), .A2(n139), .B0(A[4]), .B1(n150), .Y(
        n142) );
  NAND2X2M U30 ( .A(B[3]), .B(n152), .Y(n140) );
  NAND4X2M U31 ( .A(n179), .B(n178), .C(n177), .D(n176), .Y(n98) );
  INVX2M U32 ( .A(B[3]), .Y(n176) );
  NAND2BX2M U33 ( .AN(n127), .B(B[6]), .Y(n145) );
  AOI222X2M U34 ( .A0(N104), .A1(n166), .B0(n81), .B1(n174), .C0(B[6]), .C1(
        n83), .Y(n78) );
  CLKINVX2M U35 ( .A(B[6]), .Y(n174) );
  AOI222X2M U36 ( .A0(N103), .A1(n166), .B0(n72), .B1(n175), .C0(B[5]), .C1(
        n74), .Y(n70) );
  CLKINVX2M U37 ( .A(B[5]), .Y(n175) );
  NAND2BX2M U38 ( .AN(A[4]), .B(B[4]), .Y(n141) );
  OAI2B2X2M U39 ( .A1N(n129), .A0(B[7]), .B0(n147), .B1(n146), .Y(N163) );
  NOR2BX2M U40 ( .AN(B[7]), .B(n129), .Y(n147) );
  AOI222X2M U41 ( .A0(N100), .A1(n166), .B0(n48), .B1(n177), .C0(B[2]), .C1(
        n50), .Y(n46) );
  CLKINVX2M U42 ( .A(B[2]), .Y(n177) );
  NAND2XLM U43 ( .A(n140), .B(n135), .Y(n148) );
  NAND2X2M U44 ( .A(B[2]), .B(n151), .Y(n135) );
  INVX2M U45 ( .A(B[7]), .Y(n173) );
  NAND4X6M U46 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n117) );
  AOI222X4M U47 ( .A0(n162), .A1(n62), .B0(N98), .B1(n166), .C0(N80), .C1(n40), 
        .Y(n10) );
  NOR2BX2M U48 ( .AN(n62), .B(B[0]), .Y(n137) );
  NOR2BX2M U49 ( .AN(B[0]), .B(n62), .Y(n133) );
  CLKBUFX8M U50 ( .A(A[0]), .Y(n62) );
  BUFX4M U51 ( .A(n43), .Y(n26) );
  NOR3BX2M U52 ( .AN(n103), .B(n169), .C(n17), .Y(n43) );
  AND2X1M U53 ( .A(N99), .B(n166), .Y(n30) );
  NOR3X2M U54 ( .A(n30), .B(n31), .C(n33), .Y(n37) );
  NOR2X2M U55 ( .A(n169), .B(ALU_FUN[3]), .Y(n105) );
  NAND4X2M U56 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n118) );
  OAI2BB1XLM U57 ( .A0N(n137), .A1N(n73), .B0(B[1]), .Y(n136) );
  CLKINVX1M U58 ( .A(B[0]), .Y(n179) );
  AND2X2M U59 ( .A(n39), .B(n178), .Y(n31) );
  AND2X1M U60 ( .A(B[1]), .B(n41), .Y(n33) );
  CLKINVX1M U61 ( .A(B[1]), .Y(n178) );
  INVX4M U62 ( .A(n91), .Y(n164) );
  BUFX4M U63 ( .A(n25), .Y(n51) );
  BUFX4M U64 ( .A(n25), .Y(n54) );
  NOR2X4M U65 ( .A(n168), .B(n167), .Y(n93) );
  INVX2M U66 ( .A(n105), .Y(n168) );
  NAND2X2M U67 ( .A(n80), .B(n169), .Y(n25) );
  NAND2X2M U68 ( .A(n108), .B(n165), .Y(n91) );
  BUFX4M U70 ( .A(n32), .Y(n40) );
  AND2X2M U71 ( .A(n100), .B(n167), .Y(n108) );
  BUFX4M U72 ( .A(n32), .Y(n34) );
  AOI222X2M U73 ( .A0(A[5]), .A1(n162), .B0(A[4]), .B1(n26), .C0(N85), .C1(n40), .Y(n69) );
  AOI222X2M U74 ( .A0(n127), .A1(n162), .B0(A[5]), .B1(n26), .C0(N86), .C1(n40), .Y(n77) );
  AOI222X2M U75 ( .A0(n129), .A1(n162), .B0(n127), .B1(n26), .C0(N87), .C1(n40), .Y(n86) );
  INVX4M U76 ( .A(ALU_FUN[0]), .Y(n165) );
  INVX2M U77 ( .A(n84), .Y(n151) );
  OAI221X1M U78 ( .A0(n129), .A1(n24), .B0(n51), .B1(n128), .C0(n42), .Y(n89)
         );
  OAI221X1M U79 ( .A0(A[5]), .A1(n24), .B0(n51), .B1(n153), .C0(n42), .Y(n72)
         );
  OAI221X1M U80 ( .A0(n127), .A1(n24), .B0(n51), .B1(n126), .C0(n42), .Y(n81)
         );
  OAI221X1M U81 ( .A0(n28), .A1(n128), .B0(n129), .B1(n54), .C0(n49), .Y(n95)
         );
  OAI221X1M U82 ( .A0(n28), .A1(n153), .B0(A[5]), .B1(n54), .C0(n49), .Y(n74)
         );
  OAI221X1M U83 ( .A0(n28), .A1(n126), .B0(n127), .B1(n54), .C0(n49), .Y(n83)
         );
  INVX2M U84 ( .A(ALU_FUN[1]), .Y(n167) );
  INVX2M U85 ( .A(ALU_FUN[2]), .Y(n169) );
  AND3X2M U86 ( .A(ALU_FUN[3]), .B(n169), .C(n103), .Y(n94) );
  INVX2M U88 ( .A(n101), .Y(n152) );
  NOR3X6M U89 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .C(n57), .Y(n100) );
  NOR3X4M U90 ( .A(ALU_FUN[0]), .B(ALU_FUN[1]), .C(n17), .Y(n80) );
  INVX4M U91 ( .A(n42), .Y(n163) );
  INVX4M U92 ( .A(n49), .Y(n162) );
  INVX4M U93 ( .A(n106), .Y(n161) );
  CLKAND2X6M U94 ( .A(n108), .B(ALU_FUN[0]), .Y(n21) );
  CLKAND2X4M U95 ( .A(n80), .B(ALU_FUN[2]), .Y(n14) );
  AND3X1M U96 ( .A(n100), .B(ALU_FUN[1]), .C(n165), .Y(n32) );
  INVX2M U97 ( .A(A[5]), .Y(n153) );
  AND2X1M U98 ( .A(n100), .B(ALU_FUN[1]), .Y(n99) );
  BUFX4M U99 ( .A(n170), .Y(n57) );
  CLKBUFX6M U100 ( .A(n170), .Y(n59) );
  INVX2M U101 ( .A(n67), .Y(n171) );
  INVX6M U102 ( .A(n132), .Y(n130) );
  INVX4M U103 ( .A(n132), .Y(n131) );
  INVX4M U104 ( .A(n65), .Y(n67) );
  INVX4M U105 ( .A(n90), .Y(n92) );
  INVX4M U106 ( .A(n75), .Y(n82) );
  INVX4M U107 ( .A(n65), .Y(n73) );
  INVX4M U108 ( .A(n75), .Y(n84) );
  NOR2X1M U109 ( .A(ALU_FUN[1]), .B(n168), .Y(n102) );
  OAI221X1M U110 ( .A0(n62), .A1(n24), .B0(n51), .B1(n172), .C0(n42), .Y(n22)
         );
  OAI221X1M U111 ( .A0(n172), .A1(n28), .B0(n62), .B1(n51), .C0(n49), .Y(n20)
         );
  NAND2X2M U112 ( .A(Enable), .B(ALU_FUN[3]), .Y(n17) );
  INVX4M U113 ( .A(n90), .Y(n101) );
  INVX4M U114 ( .A(n96), .Y(n166) );
  OAI211X2M U115 ( .A0(n97), .A1(n98), .B0(ALU_FUN[0]), .C0(n99), .Y(n96) );
  CLKBUFX6M U116 ( .A(n29), .Y(n49) );
  NAND3XLM U117 ( .A(n105), .B(Enable), .C(n103), .Y(n29) );
  CLKBUFX6M U118 ( .A(n27), .Y(n42) );
  NAND3XLM U119 ( .A(Enable), .B(n165), .C(n93), .Y(n27) );
  NAND2X2M U120 ( .A(N79), .B(n21), .Y(n106) );
  INVX4M U121 ( .A(n126), .Y(n127) );
  INVX1M U122 ( .A(Enable), .Y(n170) );
  INVX4M U123 ( .A(n128), .Y(n129) );
  INVX2M U124 ( .A(n62), .Y(n172) );
  INVX2M U125 ( .A(RST), .Y(n132) );
  AOI22X1M U126 ( .A0(n163), .A1(n172), .B0(ALU_OUT[0]), .B1(n59), .Y(n9) );
  AOI221X2M U127 ( .A0(N62), .A1(n164), .B0(n73), .B1(n14), .C0(n15), .Y(n12)
         );
  OAI221X1M U128 ( .A0(n73), .A1(n24), .B0(n171), .B1(n54), .C0(n42), .Y(n39)
         );
  OAI221X1M U129 ( .A0(n171), .A1(n28), .B0(n73), .B1(n54), .C0(n49), .Y(n41)
         );
  AOI222X2M U130 ( .A0(N72), .A1(n21), .B0(n84), .B1(n14), .C0(N63), .C1(n164), 
        .Y(n38) );
  AOI22X1M U131 ( .A0(n163), .A1(n171), .B0(ALU_OUT[1]), .B1(n59), .Y(n35) );
  AOI222X2M U132 ( .A0(n162), .A1(n73), .B0(n26), .B1(n62), .C0(N81), .C1(n40), 
        .Y(n36) );
  INVX2M U133 ( .A(n116), .Y(n154) );
  AOI221X2M U134 ( .A0(ALU_OUT[15]), .A1(n57), .B0(N95), .B1(n34), .C0(n161), 
        .Y(n116) );
  OAI221X1M U135 ( .A0(n84), .A1(n24), .B0(n51), .B1(n151), .C0(n42), .Y(n48)
         );
  OAI221X1M U136 ( .A0(n28), .A1(n151), .B0(n84), .B1(n54), .C0(n49), .Y(n50)
         );
  NAND4X2M U137 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n119) );
  AOI222X2M U138 ( .A0(N73), .A1(n21), .B0(n101), .B1(n14), .C0(N64), .C1(n164), .Y(n47) );
  AOI22X1M U139 ( .A0(n163), .A1(n75), .B0(ALU_OUT[2]), .B1(n59), .Y(n44) );
  AOI222X2M U140 ( .A0(n84), .A1(n162), .B0(n26), .B1(n73), .C0(N82), .C1(n40), 
        .Y(n45) );
  INVX2M U141 ( .A(n115), .Y(n155) );
  AOI221X2M U142 ( .A0(ALU_OUT[14]), .A1(n57), .B0(N94), .B1(n34), .C0(n161), 
        .Y(n115) );
  INVX2M U143 ( .A(A[1]), .Y(n65) );
  INVX2M U144 ( .A(A[3]), .Y(n90) );
  INVX2M U145 ( .A(A[2]), .Y(n75) );
  OAI221X1M U146 ( .A0(n101), .A1(n24), .B0(n51), .B1(n152), .C0(n42), .Y(n56)
         );
  OAI221X1M U147 ( .A0(n28), .A1(n152), .B0(n101), .B1(n54), .C0(n49), .Y(n58)
         );
  NAND4X2M U148 ( .A(n52), .B(n53), .C(n3), .D(n55), .Y(n120) );
  AOI222X2M U149 ( .A0(N74), .A1(n21), .B0(A[4]), .B1(n14), .C0(N65), .C1(n164), .Y(n55) );
  AOI22X1M U150 ( .A0(n163), .A1(n90), .B0(ALU_OUT[3]), .B1(n59), .Y(n52) );
  AOI222X2M U151 ( .A0(n101), .A1(n162), .B0(n26), .B1(n84), .C0(N83), .C1(n40), .Y(n53) );
  INVX2M U152 ( .A(n113), .Y(n157) );
  AOI221X2M U153 ( .A0(ALU_OUT[12]), .A1(n57), .B0(N92), .B1(n34), .C0(n161), 
        .Y(n113) );
  INVX2M U154 ( .A(n114), .Y(n156) );
  AOI221X2M U155 ( .A0(ALU_OUT[13]), .A1(n57), .B0(N93), .B1(n34), .C0(n161), 
        .Y(n114) );
  OAI221X1M U156 ( .A0(A[4]), .A1(n24), .B0(n51), .B1(n104), .C0(n42), .Y(n64)
         );
  OAI221X1M U157 ( .A0(n28), .A1(n104), .B0(A[4]), .B1(n54), .C0(n49), .Y(n66)
         );
  NOR4X2M U158 ( .A(ALU_FUN[2]), .B(n16), .C(n17), .D(n167), .Y(n15) );
  AOI22X1M U159 ( .A0(N162), .A1(n165), .B0(N163), .B1(ALU_FUN[0]), .Y(n16) );
  NAND4X2M U160 ( .A(n60), .B(n61), .C(n4), .D(n63), .Y(n121) );
  AOI222X2M U161 ( .A0(N75), .A1(n21), .B0(A[5]), .B1(n14), .C0(N66), .C1(n164), .Y(n63) );
  AOI22X1M U162 ( .A0(n163), .A1(n104), .B0(ALU_OUT[4]), .B1(n59), .Y(n60) );
  AOI222X2M U163 ( .A0(A[4]), .A1(n162), .B0(n101), .B1(n26), .C0(N84), .C1(
        n40), .Y(n61) );
  INVX2M U164 ( .A(n111), .Y(n159) );
  AOI221X2M U165 ( .A0(ALU_OUT[10]), .A1(n57), .B0(N90), .B1(n34), .C0(n161), 
        .Y(n111) );
  INVX2M U166 ( .A(n112), .Y(n158) );
  AOI221X2M U167 ( .A0(ALU_OUT[11]), .A1(n57), .B0(N91), .B1(n34), .C0(n161), 
        .Y(n112) );
  NAND4X2M U168 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n122) );
  AOI222X2M U169 ( .A0(N76), .A1(n21), .B0(n127), .B1(n14), .C0(N67), .C1(n164), .Y(n71) );
  AOI22X1M U170 ( .A0(n163), .A1(n110), .B0(ALU_OUT[5]), .B1(n59), .Y(n68) );
  NAND4X2M U171 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n123) );
  AOI222X2M U172 ( .A0(N77), .A1(n21), .B0(n129), .B1(n14), .C0(N68), .C1(n164), .Y(n79) );
  AOI22X1M U173 ( .A0(n163), .A1(n126), .B0(ALU_OUT[6]), .B1(n59), .Y(n76) );
  NAND4X2M U174 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n124) );
  AOI22X1M U175 ( .A0(n163), .A1(n128), .B0(ALU_OUT[7]), .B1(n59), .Y(n85) );
  AOI222X2M U176 ( .A0(n89), .A1(n173), .B0(N69), .B1(n164), .C0(N78), .C1(n21), .Y(n88) );
  OAI2B11X2M U177 ( .A1N(N70), .A0(n91), .B0(n106), .C0(n107), .Y(n125) );
  AOI22X1M U178 ( .A0(N88), .A1(n34), .B0(ALU_OUT[8]), .B1(n59), .Y(n107) );
  INVX2M U179 ( .A(n109), .Y(n160) );
  AOI221X2M U180 ( .A0(ALU_OUT[9]), .A1(n57), .B0(N89), .B1(n34), .C0(n161), 
        .Y(n109) );
  OAI2B2X1M U181 ( .A1N(n73), .A0(n133), .B0(B[1]), .B1(n133), .Y(n134) );
  OAI211X1M U182 ( .A0(n73), .A1(n137), .B0(n136), .C0(n135), .Y(n138) );
  NOR4X1M U183 ( .A(n149), .B(n148), .C(N163), .D(n147), .Y(N162) );
endmodule


module SYS_CTRL_ADDR_WIDTH4_DATA_WIDTH8 ( CLK, RST, ALU_OUT, OUT_VALID, 
        ALU_FUN, ALU_EN, CLK_EN, Address, WrEn, RdEn, WrData, RdData, 
        RdData_Valid, RX_P_DATA, RX_P_VALID, FIFO_FULL, TX_P_DATA, TX_P_VALID, 
        clk_div_en );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_VALID, RdData_Valid, RX_P_VALID, FIFO_FULL;
  output ALU_EN, CLK_EN, WrEn, RdEn, TX_P_VALID, clk_div_en;
  wire   n105, n1, n12, n17, n21, n22, n23, n24, n26, n27, n28, n29, n31, n32,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n49,
         n50, n51, n53, n54, n56, n57, n58, n59, n61, n64, n65, n66, n67, n68,
         n69, n70, n72, n74, n75, n76, n77, n78, n79, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n13, n14, n15, n16, n18, n19, n20, n25, n30, n33, n34, n47, n52,
         n55, n60, n62, n63, n71, n73, n80, n81, n82, n83, n96, n97, n98, n99,
         n100, n101, n102, n103, n104;
  wire   [3:0] saved_function;
  wire   [3:0] state;
  assign clk_div_en = 1'b1;

  OAI211X8M U34 ( .A0(RX_P_VALID), .A1(n48), .B0(n49), .C0(n50), .Y(n27) );
  OAI31X4M U36 ( .A0(n82), .A1(n53), .A2(n80), .B0(FIFO_FULL), .Y(n49) );
  OAI22X8M U76 ( .A0(n60), .A1(n34), .B0(n74), .B1(n101), .Y(Address[3]) );
  OAI22X8M U78 ( .A0(n62), .A1(n34), .B0(n74), .B1(n102), .Y(Address[2]) );
  OAI22X8M U80 ( .A0(n63), .A1(n34), .B0(n74), .B1(n103), .Y(Address[1]) );
  OAI22X8M U89 ( .A0(n13), .A1(n60), .B0(n4), .B1(n99), .Y(ALU_FUN[3]) );
  OAI22X8M U92 ( .A0(n13), .A1(n62), .B0(n4), .B1(n98), .Y(ALU_FUN[2]) );
  OAI22X8M U95 ( .A0(n13), .A1(n63), .B0(n4), .B1(n97), .Y(ALU_FUN[1]) );
  OAI22X8M U98 ( .A0(n13), .A1(n71), .B0(n4), .B1(n100), .Y(ALU_FUN[0]) );
  OAI21X8M U116 ( .A0(OUT_VALID), .A1(n41), .B0(n13), .Y(ALU_EN) );
  DFFRQX2M \saved_function_reg[1]  ( .D(n87), .CK(CLK), .RN(n14), .Q(
        saved_function[1]) );
  DFFRQX2M \saved_function_reg[2]  ( .D(n86), .CK(CLK), .RN(n14), .Q(
        saved_function[2]) );
  DFFRQX2M \saved_function_reg[3]  ( .D(n85), .CK(CLK), .RN(n14), .Q(
        saved_function[3]) );
  DFFRQX2M \saved_function_reg[0]  ( .D(n84), .CK(CLK), .RN(n14), .Q(
        saved_function[0]) );
  DFFRX1M \saved_address_reg[1]  ( .D(n89), .CK(CLK), .RN(n14), .QN(n103) );
  DFFRX1M \saved_address_reg[0]  ( .D(n88), .CK(CLK), .RN(n14), .Q(n3), .QN(
        n104) );
  DFFRX1M \saved_address_reg[3]  ( .D(n91), .CK(CLK), .RN(n14), .QN(n101) );
  DFFRX1M \saved_address_reg[2]  ( .D(n90), .CK(CLK), .RN(n14), .QN(n102) );
  DFFRQX2M \state_reg[0]  ( .D(n95), .CK(CLK), .RN(n14), .Q(state[0]) );
  DFFRQX4M \state_reg[1]  ( .D(n93), .CK(CLK), .RN(n14), .Q(state[1]) );
  DFFRQX4M \state_reg[2]  ( .D(n92), .CK(CLK), .RN(n14), .Q(state[2]) );
  DFFRQX4M \state_reg[3]  ( .D(n94), .CK(CLK), .RN(n14), .Q(state[3]) );
  AND4X2M U3 ( .A(n24), .B(n56), .C(n46), .D(n17), .Y(n54) );
  AND2X2M U4 ( .A(n9), .B(n10), .Y(n2) );
  INVX2M U5 ( .A(RX_P_VALID), .Y(n47) );
  NAND2X4M U6 ( .A(n5), .B(n2), .Y(Address[0]) );
  BUFX4M U7 ( .A(n77), .Y(n4) );
  NOR4BX2M U8 ( .AN(n54), .B(n47), .C(n82), .D(state[3]), .Y(n77) );
  CLKINVX1M U9 ( .A(n34), .Y(n6) );
  CLKINVX1M U10 ( .A(n74), .Y(n7) );
  CLKINVX1M U11 ( .A(n43), .Y(n8) );
  CLKNAND2X2M U12 ( .A(n6), .B(RX_P_DATA[0]), .Y(n9) );
  CLKNAND2X2M U13 ( .A(n3), .B(n7), .Y(n10) );
  CLKNAND2X2M U14 ( .A(n8), .B(RX_P_VALID), .Y(n5) );
  BUFX4M U15 ( .A(n105), .Y(WrEn) );
  CLKINVX3M U16 ( .A(WrEn), .Y(n33) );
  AOI31X2M U17 ( .A0(n43), .A1(n28), .A2(n56), .B0(n47), .Y(n105) );
  NOR2X2M U18 ( .A(n75), .B(n47), .Y(RdEn) );
  NOR2X1M U19 ( .A(n71), .B(n33), .Y(WrData[0]) );
  NOR2X1M U20 ( .A(n63), .B(n33), .Y(WrData[1]) );
  NOR2X1M U21 ( .A(n62), .B(n33), .Y(WrData[2]) );
  NOR2X1M U22 ( .A(n60), .B(n33), .Y(WrData[3]) );
  NOR2X1M U23 ( .A(n55), .B(n33), .Y(WrData[7]) );
  NOR2X4M U24 ( .A(n81), .B(state[3]), .Y(n79) );
  NOR2X4M U25 ( .A(state[3]), .B(state[0]), .Y(n78) );
  NOR2X4M U26 ( .A(state[2]), .B(state[1]), .Y(n72) );
  AND4X4M U27 ( .A(n56), .B(n46), .C(RX_P_VALID), .D(n76), .Y(n74) );
  INVX2M U28 ( .A(n12), .Y(n30) );
  INVX4M U29 ( .A(RdEn), .Y(n34) );
  INVX2M U30 ( .A(n17), .Y(n73) );
  NOR2X6M U31 ( .A(n17), .B(n47), .Y(n12) );
  INVX4M U32 ( .A(n59), .Y(n18) );
  INVX2M U33 ( .A(n13), .Y(n52) );
  BUFX6M U35 ( .A(n1), .Y(n13) );
  NAND2X2M U37 ( .A(RX_P_VALID), .B(n32), .Y(n1) );
  NAND2X2M U38 ( .A(n41), .B(n13), .Y(CLK_EN) );
  NAND2X2M U39 ( .A(n72), .B(n79), .Y(n17) );
  INVX2M U40 ( .A(n51), .Y(n82) );
  NAND2X2M U41 ( .A(n78), .B(n72), .Y(n46) );
  AND3X2M U42 ( .A(n43), .B(n28), .C(n75), .Y(n24) );
  INVX2M U43 ( .A(n41), .Y(n80) );
  NAND2X2M U44 ( .A(n53), .B(n20), .Y(n59) );
  NAND3X2M U45 ( .A(n57), .B(n58), .C(n59), .Y(TX_P_VALID) );
  INVX4M U46 ( .A(n27), .Y(n25) );
  OAI22X1M U47 ( .A0(n25), .A1(n96), .B0(n26), .B1(n27), .Y(n93) );
  NOR3BX2M U48 ( .AN(n28), .B(n29), .C(n73), .Y(n26) );
  OAI211X2M U49 ( .A0(n25), .A1(n83), .B0(n21), .C0(n22), .Y(n92) );
  OAI2BB1X2M U50 ( .A0N(n23), .A1N(n24), .B0(n25), .Y(n21) );
  NOR3X6M U51 ( .A(n46), .B(n60), .C(n55), .Y(n38) );
  INVX4M U52 ( .A(n57), .Y(n16) );
  INVX4M U53 ( .A(n58), .Y(n19) );
  OAI22X1M U54 ( .A0(n13), .A1(n71), .B0(n52), .B1(n100), .Y(n84) );
  OAI22X1M U55 ( .A0(n13), .A1(n60), .B0(n52), .B1(n99), .Y(n85) );
  OAI22X1M U56 ( .A0(n13), .A1(n62), .B0(n52), .B1(n98), .Y(n86) );
  OAI22X1M U57 ( .A0(n13), .A1(n63), .B0(n52), .B1(n97), .Y(n87) );
  OAI22X1M U58 ( .A0(n71), .A1(n30), .B0(n12), .B1(n104), .Y(n88) );
  OAI22X1M U59 ( .A0(n63), .A1(n30), .B0(n12), .B1(n103), .Y(n89) );
  OAI22X1M U60 ( .A0(n62), .A1(n30), .B0(n12), .B1(n102), .Y(n90) );
  OAI22X1M U61 ( .A0(n60), .A1(n30), .B0(n12), .B1(n101), .Y(n91) );
  INVX6M U62 ( .A(n15), .Y(n14) );
  INVX2M U63 ( .A(RST), .Y(n15) );
  AND3X2M U64 ( .A(n79), .B(state[1]), .C(state[2]), .Y(n32) );
  INVX2M U65 ( .A(state[0]), .Y(n81) );
  NAND3X4M U66 ( .A(n72), .B(n81), .C(state[3]), .Y(n41) );
  NOR4X2M U67 ( .A(state[3]), .B(n32), .C(n73), .D(n82), .Y(n76) );
  NAND3X4M U68 ( .A(state[2]), .B(state[1]), .C(n78), .Y(n43) );
  NAND3X2M U69 ( .A(state[1]), .B(n83), .C(n78), .Y(n56) );
  INVX2M U70 ( .A(state[2]), .Y(n83) );
  INVX2M U71 ( .A(state[1]), .Y(n96) );
  NAND3X2M U72 ( .A(n79), .B(n96), .C(state[2]), .Y(n28) );
  NAND3X2M U73 ( .A(state[2]), .B(n96), .C(n78), .Y(n51) );
  NAND3X2M U74 ( .A(n79), .B(n83), .C(state[1]), .Y(n75) );
  INVX4M U75 ( .A(RX_P_DATA[2]), .Y(n62) );
  INVX4M U77 ( .A(RX_P_DATA[3]), .Y(n60) );
  INVX4M U79 ( .A(RX_P_DATA[1]), .Y(n63) );
  INVX4M U81 ( .A(RX_P_DATA[0]), .Y(n71) );
  INVX2M U82 ( .A(saved_function[0]), .Y(n100) );
  AND3X2M U83 ( .A(n72), .B(state[0]), .C(state[3]), .Y(n53) );
  NAND3X2M U84 ( .A(n80), .B(n20), .C(OUT_VALID), .Y(n58) );
  NAND3X2M U85 ( .A(n82), .B(n20), .C(RdData_Valid), .Y(n57) );
  INVX2M U86 ( .A(saved_function[3]), .Y(n99) );
  INVX2M U87 ( .A(saved_function[1]), .Y(n97) );
  INVX2M U88 ( .A(saved_function[2]), .Y(n98) );
  AND2X1M U90 ( .A(RX_P_DATA[4]), .B(WrEn), .Y(WrData[4]) );
  AND2X1M U91 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X1M U93 ( .A(RX_P_DATA[6]), .B(WrEn), .Y(WrData[6]) );
  OAI211X2M U94 ( .A0(n25), .A1(n81), .B0(n35), .C0(n22), .Y(n95) );
  OAI21X2M U96 ( .A0(n29), .A1(n39), .B0(n25), .Y(n35) );
  OAI31X2M U97 ( .A0(n40), .A1(RX_P_DATA[4]), .A2(RX_P_DATA[0]), .B0(n41), .Y(
        n39) );
  NAND4X2M U99 ( .A(n25), .B(RX_P_DATA[2]), .C(n36), .D(n37), .Y(n22) );
  NOR4X2M U100 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[4]), .C(RX_P_DATA[1]), .D(
        RX_P_DATA[0]), .Y(n37) );
  AND2X2M U101 ( .A(n38), .B(RX_P_DATA[6]), .Y(n36) );
  INVX2M U102 ( .A(FIFO_FULL), .Y(n20) );
  OA22X2M U103 ( .A0(n51), .A1(RdData_Valid), .B0(n41), .B1(OUT_VALID), .Y(n50) );
  NOR2BX2M U104 ( .AN(n54), .B(n32), .Y(n48) );
  OAI211X4M U105 ( .A0(n40), .A1(n42), .B0(n43), .C0(n23), .Y(n29) );
  NAND2X2M U106 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n42) );
  NAND4X2M U107 ( .A(RX_P_DATA[6]), .B(n38), .C(RX_P_DATA[4]), .D(n44), .Y(n23) );
  NOR4X2M U108 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n71), .D(n62), .Y(n44)
         );
  OAI2BB2X1M U109 ( .B0(n31), .B1(n27), .A0N(n27), .A1N(state[3]), .Y(n94) );
  NOR2X2M U110 ( .A(n32), .B(n80), .Y(n31) );
  NAND3X2M U111 ( .A(RX_P_DATA[5]), .B(n38), .C(n45), .Y(n40) );
  NOR3X2M U112 ( .A(n63), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n45) );
  OAI2BB1X2M U113 ( .A0N(ALU_OUT[0]), .A1N(n19), .B0(n70), .Y(TX_P_DATA[0]) );
  AOI22X1M U114 ( .A0(ALU_OUT[8]), .A1(n18), .B0(RdData[0]), .B1(n16), .Y(n70)
         );
  OAI2BB1X2M U115 ( .A0N(ALU_OUT[1]), .A1N(n19), .B0(n69), .Y(TX_P_DATA[1]) );
  AOI22X1M U117 ( .A0(ALU_OUT[9]), .A1(n18), .B0(RdData[1]), .B1(n16), .Y(n69)
         );
  OAI2BB1X2M U118 ( .A0N(ALU_OUT[2]), .A1N(n19), .B0(n68), .Y(TX_P_DATA[2]) );
  AOI22X1M U119 ( .A0(ALU_OUT[10]), .A1(n18), .B0(RdData[2]), .B1(n16), .Y(n68) );
  OAI2BB1X2M U120 ( .A0N(ALU_OUT[3]), .A1N(n19), .B0(n67), .Y(TX_P_DATA[3]) );
  AOI22X1M U121 ( .A0(ALU_OUT[11]), .A1(n18), .B0(RdData[3]), .B1(n16), .Y(n67) );
  OAI2BB1X2M U122 ( .A0N(ALU_OUT[4]), .A1N(n19), .B0(n66), .Y(TX_P_DATA[4]) );
  AOI22X1M U123 ( .A0(ALU_OUT[12]), .A1(n18), .B0(RdData[4]), .B1(n16), .Y(n66) );
  OAI2BB1X2M U124 ( .A0N(ALU_OUT[5]), .A1N(n19), .B0(n65), .Y(TX_P_DATA[5]) );
  AOI22X1M U125 ( .A0(ALU_OUT[13]), .A1(n18), .B0(RdData[5]), .B1(n16), .Y(n65) );
  OAI2BB1X2M U126 ( .A0N(ALU_OUT[6]), .A1N(n19), .B0(n64), .Y(TX_P_DATA[6]) );
  AOI22X1M U127 ( .A0(ALU_OUT[14]), .A1(n18), .B0(RdData[6]), .B1(n16), .Y(n64) );
  OAI2BB1X2M U128 ( .A0N(ALU_OUT[7]), .A1N(n19), .B0(n61), .Y(TX_P_DATA[7]) );
  AOI22X1M U129 ( .A0(ALU_OUT[15]), .A1(n18), .B0(RdData[7]), .B1(n16), .Y(n61) );
  INVX2M U130 ( .A(RX_P_DATA[7]), .Y(n55) );
endmodule


module data_synch_BUS_WIDTH8_NUM_STAGES2 ( bus_enable, dest_clk, dest_rst, 
        unsync_bus, enable_pulse_d, sync_bus );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, dest_clk, dest_rst;
  output enable_pulse_d;
  wire   sync_enable_delay2, sync_enable_delay, n1, n4, n5, n6, n7, n8, n9,
         n10, n11, n2, n3, n12, n13;
  wire   [1:0] sync_stages;

  DFFRQX2M \sync_bus_reg[7]  ( .D(n11), .CK(dest_clk), .RN(n2), .Q(sync_bus[7]) );
  DFFRQX2M \sync_stages_reg[1]  ( .D(sync_stages[0]), .CK(dest_clk), .RN(n2), 
        .Q(sync_stages[1]) );
  DFFRQX4M \sync_bus_reg[6]  ( .D(n10), .CK(dest_clk), .RN(n2), .Q(sync_bus[6]) );
  DFFRQX4M \sync_bus_reg[5]  ( .D(n9), .CK(dest_clk), .RN(n2), .Q(sync_bus[5])
         );
  DFFRQX4M \sync_bus_reg[4]  ( .D(n8), .CK(dest_clk), .RN(n2), .Q(sync_bus[4])
         );
  DFFRQX4M \sync_bus_reg[0]  ( .D(n4), .CK(dest_clk), .RN(n2), .Q(sync_bus[0])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n7), .CK(dest_clk), .RN(n2), .Q(sync_bus[3])
         );
  DFFRQX2M sync_enable_delay2_reg ( .D(sync_enable_delay), .CK(dest_clk), .RN(
        n2), .Q(sync_enable_delay2) );
  DFFRQX2M sync_enable_delay_reg ( .D(sync_stages[1]), .CK(dest_clk), .RN(n2), 
        .Q(sync_enable_delay) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n5), .CK(dest_clk), .RN(n2), .Q(sync_bus[1])
         );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n6), .CK(dest_clk), .RN(n2), .Q(sync_bus[2])
         );
  DFFRQX2M \sync_stages_reg[0]  ( .D(bus_enable), .CK(dest_clk), .RN(n2), .Q(
        sync_stages[0]) );
  INVX4M U3 ( .A(n1), .Y(n12) );
  INVX6M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(dest_rst), .Y(n3) );
  NOR2X6M U6 ( .A(sync_enable_delay2), .B(n13), .Y(enable_pulse_d) );
  INVX2M U7 ( .A(sync_enable_delay), .Y(n13) );
  NAND2X6M U8 ( .A(sync_stages[1]), .B(n13), .Y(n1) );
  AO22X1M U9 ( .A0(sync_bus[4]), .A1(n1), .B0(unsync_bus[4]), .B1(n12), .Y(n8)
         );
  AO22XLM U10 ( .A0(sync_bus[5]), .A1(n1), .B0(unsync_bus[5]), .B1(n12), .Y(n9) );
  AO22X1M U11 ( .A0(sync_bus[0]), .A1(n1), .B0(unsync_bus[0]), .B1(n12), .Y(n4) );
  AO22XLM U12 ( .A0(sync_bus[6]), .A1(n1), .B0(unsync_bus[6]), .B1(n12), .Y(
        n10) );
  AO22X1M U13 ( .A0(sync_bus[1]), .A1(n1), .B0(unsync_bus[1]), .B1(n12), .Y(n5) );
  AO22X1M U14 ( .A0(sync_bus[2]), .A1(n1), .B0(unsync_bus[2]), .B1(n12), .Y(n6) );
  AO22X1M U15 ( .A0(sync_bus[3]), .A1(n1), .B0(unsync_bus[3]), .B1(n12), .Y(n7) );
  AO22X1M U16 ( .A0(sync_bus[7]), .A1(n1), .B0(unsync_bus[7]), .B1(n12), .Y(
        n11) );
endmodule


module FIFO_WR_NUM_ADDR_BITS4 ( W_CLK, W_RST, W_INC, wq_rptr, wfull, w_addr, 
        w_ptr );
  input [4:0] wq_rptr;
  output [3:0] w_addr;
  output [4:0] w_ptr;
  input W_CLK, W_RST, W_INC;
  output wfull;
  wire   N4, N5, N6, N7, N11, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         \add_26/carry[4] , \add_26/carry[3] , \add_26/carry[2] , n1, n2, n3,
         n4, n5, n15;
  wire   [4:0] wbin;
  wire   [3:0] wbin_next;
  wire   [4:0] gray_next;

  AOI22X4M U10 ( .A0(N7), .A1(n11), .B0(wbin[4]), .B1(n15), .Y(n10) );
  AOI22X4M U17 ( .A0(N4), .A1(n11), .B0(wbin[1]), .B1(n15), .Y(n14) );
  DFFRQX2M \wbin_reg[4]  ( .D(n4), .CK(W_CLK), .RN(n1), .Q(wbin[4]) );
  DFFRQX2M \w_addr_reg[3]  ( .D(wbin_next[3]), .CK(W_CLK), .RN(n1), .Q(
        w_addr[3]) );
  DFFRQX2M \w_addr_reg[0]  ( .D(wbin_next[0]), .CK(W_CLK), .RN(n1), .Q(
        w_addr[0]) );
  DFFRQX2M \w_addr_reg[1]  ( .D(n5), .CK(W_CLK), .RN(n2), .Q(w_addr[1]) );
  DFFRQX2M \wbin_reg[2]  ( .D(wbin_next[2]), .CK(W_CLK), .RN(n1), .Q(wbin[2])
         );
  DFFRQX2M \wbin_reg[3]  ( .D(wbin_next[3]), .CK(W_CLK), .RN(n1), .Q(wbin[3])
         );
  DFFRQX2M \wbin_reg[1]  ( .D(n5), .CK(W_CLK), .RN(n1), .Q(wbin[1]) );
  DFFRQX2M \wbin_reg[0]  ( .D(wbin_next[0]), .CK(W_CLK), .RN(n1), .Q(wbin[0])
         );
  DFFRQX2M wfull_reg ( .D(N11), .CK(W_CLK), .RN(n1), .Q(wfull) );
  DFFRQX2M \w_addr_reg[2]  ( .D(wbin_next[2]), .CK(W_CLK), .RN(n1), .Q(
        w_addr[2]) );
  DFFRQX2M \w_ptr_reg[0]  ( .D(gray_next[0]), .CK(W_CLK), .RN(n1), .Q(w_ptr[0]) );
  DFFRQX2M \w_ptr_reg[2]  ( .D(gray_next[2]), .CK(W_CLK), .RN(n1), .Q(w_ptr[2]) );
  DFFRQX2M \w_ptr_reg[4]  ( .D(n4), .CK(W_CLK), .RN(n1), .Q(w_ptr[4]) );
  DFFRQX2M \w_ptr_reg[3]  ( .D(gray_next[3]), .CK(W_CLK), .RN(n2), .Q(w_ptr[3]) );
  DFFRQX2M \w_ptr_reg[1]  ( .D(gray_next[1]), .CK(W_CLK), .RN(n2), .Q(w_ptr[1]) );
  INVX6M U3 ( .A(n3), .Y(n1) );
  INVX2M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(W_RST), .Y(n3) );
  CLKXOR2X2M U6 ( .A(wbin_next[0]), .B(n5), .Y(gray_next[0]) );
  XNOR2X4M U7 ( .A(n14), .B(wbin_next[2]), .Y(gray_next[1]) );
  XNOR2X4M U8 ( .A(n10), .B(wbin_next[3]), .Y(gray_next[3]) );
  INVX4M U9 ( .A(n11), .Y(n15) );
  INVX2M U11 ( .A(n14), .Y(n5) );
  INVX2M U12 ( .A(n10), .Y(n4) );
  CLKXOR2X2M U13 ( .A(wbin_next[2]), .B(wbin_next[3]), .Y(gray_next[2]) );
  NOR2BX8M U14 ( .AN(W_INC), .B(wfull), .Y(n11) );
  AO22X2M U15 ( .A0(N5), .A1(n11), .B0(wbin[2]), .B1(n15), .Y(wbin_next[2]) );
  NOR4X1M U16 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(N11) );
  CLKXOR2X2M U18 ( .A(wq_rptr[2]), .B(gray_next[2]), .Y(n9) );
  XNOR2X2M U19 ( .A(wq_rptr[4]), .B(n4), .Y(n7) );
  XNOR2X2M U20 ( .A(gray_next[3]), .B(wq_rptr[3]), .Y(n8) );
  NAND2X2M U21 ( .A(n12), .B(n13), .Y(n6) );
  XNOR2X2M U22 ( .A(gray_next[1]), .B(wq_rptr[1]), .Y(n13) );
  XNOR2X2M U23 ( .A(gray_next[0]), .B(wq_rptr[0]), .Y(n12) );
  AO22X2M U24 ( .A0(N6), .A1(n11), .B0(wbin[3]), .B1(n15), .Y(wbin_next[3]) );
  AO2B2X2M U25 ( .B0(wbin[0]), .B1(n15), .A0(n11), .A1N(wbin[0]), .Y(
        wbin_next[0]) );
  ADDHX1M U26 ( .A(wbin[1]), .B(wbin[0]), .CO(\add_26/carry[2] ), .S(N4) );
  ADDHX1M U27 ( .A(wbin[2]), .B(\add_26/carry[2] ), .CO(\add_26/carry[3] ), 
        .S(N5) );
  ADDHX1M U28 ( .A(wbin[3]), .B(\add_26/carry[3] ), .CO(\add_26/carry[4] ), 
        .S(N6) );
  CLKXOR2X2M U29 ( .A(\add_26/carry[4] ), .B(wbin[4]), .Y(N7) );
endmodule


module FIFO_RD_NUM_ADDR_BITS4 ( R_CLK, R_RST, R_INC, rq_wptr, rempty, r_addr, 
        r_ptr );
  input [4:0] rq_wptr;
  output [3:0] r_addr;
  output [4:0] r_ptr;
  input R_CLK, R_RST, R_INC;
  output rempty;
  wire   N3, N4, N5, N6, N7, \rbin_next[3] , N8, n7, n8, n9, n10,
         \add_22/carry[4] , \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3,
         n4, n5, n6, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [4:0] rbin;
  wire   [4:0] gray_next;

  AOI22X4M U9 ( .A0(N5), .A1(n8), .B0(rbin[2]), .B1(n18), .Y(n9) );
  AOI22X4M U11 ( .A0(N3), .A1(n8), .B0(rbin[0]), .B1(n18), .Y(n7) );
  AOI22X4M U12 ( .A0(N4), .A1(n8), .B0(rbin[1]), .B1(n18), .Y(n10) );
  DFFRQX1M \rbin_reg[4]  ( .D(gray_next[4]), .CK(R_CLK), .RN(n1), .Q(rbin[4])
         );
  DFFRQX2M \r_addr_reg[1]  ( .D(n17), .CK(R_CLK), .RN(n1), .Q(r_addr[1]) );
  DFFRQX2M \r_addr_reg[0]  ( .D(n15), .CK(R_CLK), .RN(R_RST), .Q(r_addr[0]) );
  DFFRQX2M \r_addr_reg[3]  ( .D(\rbin_next[3] ), .CK(R_CLK), .RN(n1), .Q(
        r_addr[3]) );
  DFFRQX2M \r_addr_reg[2]  ( .D(n16), .CK(R_CLK), .RN(n1), .Q(r_addr[2]) );
  DFFRQX2M \rbin_reg[0]  ( .D(n15), .CK(R_CLK), .RN(n1), .Q(rbin[0]) );
  DFFSQX2M rempty_reg ( .D(N8), .CK(R_CLK), .SN(n1), .Q(rempty) );
  DFFRQX1M \r_ptr_reg[4]  ( .D(gray_next[4]), .CK(R_CLK), .RN(n1), .Q(r_ptr[4]) );
  DFFRQX1M \r_ptr_reg[0]  ( .D(gray_next[0]), .CK(R_CLK), .RN(R_RST), .Q(
        r_ptr[0]) );
  DFFRQX1M \r_ptr_reg[2]  ( .D(gray_next[2]), .CK(R_CLK), .RN(n1), .Q(r_ptr[2]) );
  DFFRQX1M \r_ptr_reg[3]  ( .D(gray_next[3]), .CK(R_CLK), .RN(n1), .Q(r_ptr[3]) );
  DFFRQX1M \r_ptr_reg[1]  ( .D(gray_next[1]), .CK(R_CLK), .RN(n1), .Q(r_ptr[1]) );
  DFFRQX1M \rbin_reg[3]  ( .D(\rbin_next[3] ), .CK(R_CLK), .RN(n1), .Q(rbin[3]) );
  DFFRQX1M \rbin_reg[2]  ( .D(n16), .CK(R_CLK), .RN(n1), .Q(rbin[2]) );
  DFFRQX1M \rbin_reg[1]  ( .D(n17), .CK(R_CLK), .RN(n1), .Q(rbin[1]) );
  CLKINVX1M U3 ( .A(R_RST), .Y(n2) );
  NOR2BX2M U4 ( .AN(gray_next[0]), .B(rq_wptr[0]), .Y(n4) );
  NOR2BX2M U5 ( .AN(rq_wptr[0]), .B(gray_next[0]), .Y(n3) );
  INVX6M U6 ( .A(n2), .Y(n1) );
  XNOR2X4M U7 ( .A(n17), .B(n7), .Y(gray_next[0]) );
  INVX4M U8 ( .A(n8), .Y(n18) );
  INVX2M U10 ( .A(n10), .Y(n17) );
  XNOR2X4M U13 ( .A(n16), .B(n10), .Y(gray_next[1]) );
  INVX2M U14 ( .A(n9), .Y(n16) );
  CLKXOR2X2M U15 ( .A(\rbin_next[3] ), .B(gray_next[4]), .Y(gray_next[3]) );
  XNOR2X4M U16 ( .A(\rbin_next[3] ), .B(n9), .Y(gray_next[2]) );
  INVX2M U17 ( .A(n7), .Y(n15) );
  NOR2BX8M U18 ( .AN(R_INC), .B(rempty), .Y(n8) );
  INVX2M U19 ( .A(rbin[0]), .Y(N3) );
  AO22X2M U20 ( .A0(N6), .A1(n8), .B0(rbin[3]), .B1(n18), .Y(\rbin_next[3] )
         );
  AO22X2M U21 ( .A0(N7), .A1(n8), .B0(rbin[4]), .B1(n18), .Y(gray_next[4]) );
  ADDHX1M U22 ( .A(rbin[1]), .B(rbin[0]), .CO(\add_22/carry[2] ), .S(N4) );
  ADDHX1M U23 ( .A(rbin[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N5) );
  ADDHX1M U24 ( .A(rbin[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), 
        .S(N6) );
  CLKXOR2X2M U25 ( .A(\add_22/carry[4] ), .B(rbin[4]), .Y(N7) );
  CLKXOR2X2M U26 ( .A(rq_wptr[2]), .B(gray_next[2]), .Y(n14) );
  OAI2B2X1M U27 ( .A1N(gray_next[1]), .A0(n3), .B0(rq_wptr[1]), .B1(n3), .Y(n6) );
  OAI2B2X1M U28 ( .A1N(rq_wptr[1]), .A0(n4), .B0(gray_next[1]), .B1(n4), .Y(n5) );
  CLKNAND2X2M U29 ( .A(n6), .B(n5), .Y(n13) );
  CLKXOR2X2M U30 ( .A(rq_wptr[3]), .B(gray_next[3]), .Y(n12) );
  CLKXOR2X2M U31 ( .A(rq_wptr[4]), .B(gray_next[4]), .Y(n11) );
  NOR4X1M U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N8) );
endmodule


module DF_SYNC_NUM_ADDR_BITS4_0 ( clk, rst_n, unsynchronized_in, 
        synchronized_out );
  input [4:0] unsynchronized_in;
  output [4:0] synchronized_out;
  input clk, rst_n;
  wire   n1, n2;
  wire   [4:0] second_stage;

  DFFRQX1M \synchronized_out_reg[4]  ( .D(second_stage[4]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[4]) );
  DFFRQX1M \synchronized_out_reg[3]  ( .D(second_stage[3]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[3]) );
  DFFRQX1M \synchronized_out_reg[2]  ( .D(second_stage[2]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[2]) );
  DFFRQX1M \synchronized_out_reg[1]  ( .D(second_stage[1]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[1]) );
  DFFRQX1M \synchronized_out_reg[0]  ( .D(second_stage[0]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[0]) );
  DFFRQX1M \second_stage_reg[4]  ( .D(unsynchronized_in[4]), .CK(clk), .RN(n1), 
        .Q(second_stage[4]) );
  DFFRQX1M \second_stage_reg[3]  ( .D(unsynchronized_in[3]), .CK(clk), .RN(n1), 
        .Q(second_stage[3]) );
  DFFRQX1M \second_stage_reg[2]  ( .D(unsynchronized_in[2]), .CK(clk), .RN(n1), 
        .Q(second_stage[2]) );
  DFFRQX1M \second_stage_reg[1]  ( .D(unsynchronized_in[1]), .CK(clk), .RN(n1), 
        .Q(second_stage[1]) );
  DFFRQX1M \second_stage_reg[0]  ( .D(unsynchronized_in[0]), .CK(clk), .RN(n1), 
        .Q(second_stage[0]) );
  INVX6M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst_n), .Y(n2) );
endmodule


module DF_SYNC_NUM_ADDR_BITS4_1 ( clk, rst_n, unsynchronized_in, 
        synchronized_out );
  input [4:0] unsynchronized_in;
  output [4:0] synchronized_out;
  input clk, rst_n;
  wire   n1, n2;
  wire   [4:0] second_stage;

  DFFRQX2M \synchronized_out_reg[4]  ( .D(second_stage[4]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[4]) );
  DFFRQX2M \synchronized_out_reg[2]  ( .D(second_stage[2]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[2]) );
  DFFRQX2M \synchronized_out_reg[3]  ( .D(second_stage[3]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[3]) );
  DFFRQX2M \synchronized_out_reg[1]  ( .D(second_stage[1]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[1]) );
  DFFRQX2M \synchronized_out_reg[0]  ( .D(second_stage[0]), .CK(clk), .RN(n1), 
        .Q(synchronized_out[0]) );
  DFFRQX2M \second_stage_reg[4]  ( .D(unsynchronized_in[4]), .CK(clk), .RN(n1), 
        .Q(second_stage[4]) );
  DFFRQX2M \second_stage_reg[3]  ( .D(unsynchronized_in[3]), .CK(clk), .RN(n1), 
        .Q(second_stage[3]) );
  DFFRQX2M \second_stage_reg[2]  ( .D(unsynchronized_in[2]), .CK(clk), .RN(n1), 
        .Q(second_stage[2]) );
  DFFRQX2M \second_stage_reg[1]  ( .D(unsynchronized_in[1]), .CK(clk), .RN(n1), 
        .Q(second_stage[1]) );
  DFFRQX2M \second_stage_reg[0]  ( .D(unsynchronized_in[0]), .CK(clk), .RN(n1), 
        .Q(second_stage[0]) );
  INVX6M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst_n), .Y(n2) );
endmodule


module fifo_mem_cntrl_DATA_WIDTH8_NUM_ADDR_BITS4 ( W_CLK, W_INC, wfull, w_addr, 
        wdata, r_addr, rdata );
  input [3:0] w_addr;
  input [7:0] wdata;
  input [3:0] r_addr;
  output [7:0] rdata;
  input W_CLK, W_INC, wfull;
  wire   N9, N10, N11, N12, \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         \mem[14][7] , \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] ,
         \mem[14][2] , \mem[14][1] , \mem[14][0] , \mem[13][7] , \mem[13][6] ,
         \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] , \mem[13][1] ,
         \mem[13][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[9][7] , \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] ,
         \mem[9][2] , \mem[9][1] , \mem[9][0] , \mem[8][7] , \mem[8][6] ,
         \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] , \mem[8][1] ,
         \mem[8][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n20, n23, n24, n26, n27, n28, n29,
         n30, n31, n32, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n19, n21, n22, n25, n33, n34, n35, n37, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337;
  assign N9 = r_addr[0];
  assign N10 = r_addr[1];
  assign N11 = r_addr[2];
  assign N12 = r_addr[3];

  DFFQX2M \mem_reg[15][7]  ( .D(n165), .CK(W_CLK), .Q(\mem[15][7] ) );
  DFFQX2M \mem_reg[15][6]  ( .D(n164), .CK(W_CLK), .Q(\mem[15][6] ) );
  DFFQX2M \mem_reg[15][5]  ( .D(n163), .CK(W_CLK), .Q(\mem[15][5] ) );
  DFFQX2M \mem_reg[15][4]  ( .D(n162), .CK(W_CLK), .Q(\mem[15][4] ) );
  DFFQX2M \mem_reg[15][3]  ( .D(n161), .CK(W_CLK), .Q(\mem[15][3] ) );
  DFFQX2M \mem_reg[15][2]  ( .D(n160), .CK(W_CLK), .Q(\mem[15][2] ) );
  DFFQX2M \mem_reg[15][1]  ( .D(n159), .CK(W_CLK), .Q(\mem[15][1] ) );
  DFFQX2M \mem_reg[15][0]  ( .D(n158), .CK(W_CLK), .Q(\mem[15][0] ) );
  DFFQX2M \mem_reg[13][7]  ( .D(n149), .CK(W_CLK), .Q(\mem[13][7] ) );
  DFFQX2M \mem_reg[13][6]  ( .D(n148), .CK(W_CLK), .Q(\mem[13][6] ) );
  DFFQX2M \mem_reg[13][5]  ( .D(n147), .CK(W_CLK), .Q(\mem[13][5] ) );
  DFFQX2M \mem_reg[13][4]  ( .D(n146), .CK(W_CLK), .Q(\mem[13][4] ) );
  DFFQX2M \mem_reg[13][3]  ( .D(n145), .CK(W_CLK), .Q(\mem[13][3] ) );
  DFFQX2M \mem_reg[13][2]  ( .D(n144), .CK(W_CLK), .Q(\mem[13][2] ) );
  DFFQX2M \mem_reg[13][1]  ( .D(n143), .CK(W_CLK), .Q(\mem[13][1] ) );
  DFFQX2M \mem_reg[13][0]  ( .D(n142), .CK(W_CLK), .Q(\mem[13][0] ) );
  DFFQX2M \mem_reg[11][7]  ( .D(n133), .CK(W_CLK), .Q(\mem[11][7] ) );
  DFFQX2M \mem_reg[11][6]  ( .D(n132), .CK(W_CLK), .Q(\mem[11][6] ) );
  DFFQX2M \mem_reg[11][5]  ( .D(n131), .CK(W_CLK), .Q(\mem[11][5] ) );
  DFFQX2M \mem_reg[11][4]  ( .D(n130), .CK(W_CLK), .Q(\mem[11][4] ) );
  DFFQX2M \mem_reg[11][3]  ( .D(n129), .CK(W_CLK), .Q(\mem[11][3] ) );
  DFFQX2M \mem_reg[11][2]  ( .D(n128), .CK(W_CLK), .Q(\mem[11][2] ) );
  DFFQX2M \mem_reg[11][1]  ( .D(n127), .CK(W_CLK), .Q(\mem[11][1] ) );
  DFFQX2M \mem_reg[11][0]  ( .D(n126), .CK(W_CLK), .Q(\mem[11][0] ) );
  DFFQX2M \mem_reg[9][7]  ( .D(n117), .CK(W_CLK), .Q(\mem[9][7] ) );
  DFFQX2M \mem_reg[9][6]  ( .D(n116), .CK(W_CLK), .Q(\mem[9][6] ) );
  DFFQX2M \mem_reg[9][5]  ( .D(n115), .CK(W_CLK), .Q(\mem[9][5] ) );
  DFFQX2M \mem_reg[9][4]  ( .D(n114), .CK(W_CLK), .Q(\mem[9][4] ) );
  DFFQX2M \mem_reg[9][3]  ( .D(n113), .CK(W_CLK), .Q(\mem[9][3] ) );
  DFFQX2M \mem_reg[9][2]  ( .D(n112), .CK(W_CLK), .Q(\mem[9][2] ) );
  DFFQX2M \mem_reg[9][1]  ( .D(n111), .CK(W_CLK), .Q(\mem[9][1] ) );
  DFFQX2M \mem_reg[9][0]  ( .D(n110), .CK(W_CLK), .Q(\mem[9][0] ) );
  DFFQX2M \mem_reg[7][7]  ( .D(n101), .CK(W_CLK), .Q(\mem[7][7] ) );
  DFFQX2M \mem_reg[7][6]  ( .D(n100), .CK(W_CLK), .Q(\mem[7][6] ) );
  DFFQX2M \mem_reg[7][5]  ( .D(n99), .CK(W_CLK), .Q(\mem[7][5] ) );
  DFFQX2M \mem_reg[7][4]  ( .D(n98), .CK(W_CLK), .Q(\mem[7][4] ) );
  DFFQX2M \mem_reg[7][3]  ( .D(n97), .CK(W_CLK), .Q(\mem[7][3] ) );
  DFFQX2M \mem_reg[7][2]  ( .D(n96), .CK(W_CLK), .Q(\mem[7][2] ) );
  DFFQX2M \mem_reg[7][1]  ( .D(n95), .CK(W_CLK), .Q(\mem[7][1] ) );
  DFFQX2M \mem_reg[7][0]  ( .D(n94), .CK(W_CLK), .Q(\mem[7][0] ) );
  DFFQX2M \mem_reg[5][7]  ( .D(n85), .CK(W_CLK), .Q(\mem[5][7] ) );
  DFFQX2M \mem_reg[5][6]  ( .D(n84), .CK(W_CLK), .Q(\mem[5][6] ) );
  DFFQX2M \mem_reg[5][5]  ( .D(n83), .CK(W_CLK), .Q(\mem[5][5] ) );
  DFFQX2M \mem_reg[5][4]  ( .D(n82), .CK(W_CLK), .Q(\mem[5][4] ) );
  DFFQX2M \mem_reg[5][3]  ( .D(n81), .CK(W_CLK), .Q(\mem[5][3] ) );
  DFFQX2M \mem_reg[5][2]  ( .D(n80), .CK(W_CLK), .Q(\mem[5][2] ) );
  DFFQX2M \mem_reg[5][1]  ( .D(n79), .CK(W_CLK), .Q(\mem[5][1] ) );
  DFFQX2M \mem_reg[5][0]  ( .D(n78), .CK(W_CLK), .Q(\mem[5][0] ) );
  DFFQX2M \mem_reg[3][7]  ( .D(n69), .CK(W_CLK), .Q(\mem[3][7] ) );
  DFFQX2M \mem_reg[3][6]  ( .D(n68), .CK(W_CLK), .Q(\mem[3][6] ) );
  DFFQX2M \mem_reg[3][5]  ( .D(n67), .CK(W_CLK), .Q(\mem[3][5] ) );
  DFFQX2M \mem_reg[3][4]  ( .D(n66), .CK(W_CLK), .Q(\mem[3][4] ) );
  DFFQX2M \mem_reg[3][3]  ( .D(n65), .CK(W_CLK), .Q(\mem[3][3] ) );
  DFFQX2M \mem_reg[3][2]  ( .D(n64), .CK(W_CLK), .Q(\mem[3][2] ) );
  DFFQX2M \mem_reg[3][1]  ( .D(n63), .CK(W_CLK), .Q(\mem[3][1] ) );
  DFFQX2M \mem_reg[3][0]  ( .D(n62), .CK(W_CLK), .Q(\mem[3][0] ) );
  DFFQX2M \mem_reg[1][7]  ( .D(n53), .CK(W_CLK), .Q(\mem[1][7] ) );
  DFFQX2M \mem_reg[1][6]  ( .D(n52), .CK(W_CLK), .Q(\mem[1][6] ) );
  DFFQX2M \mem_reg[1][5]  ( .D(n51), .CK(W_CLK), .Q(\mem[1][5] ) );
  DFFQX2M \mem_reg[1][4]  ( .D(n50), .CK(W_CLK), .Q(\mem[1][4] ) );
  DFFQX2M \mem_reg[1][3]  ( .D(n49), .CK(W_CLK), .Q(\mem[1][3] ) );
  DFFQX2M \mem_reg[1][2]  ( .D(n48), .CK(W_CLK), .Q(\mem[1][2] ) );
  DFFQX2M \mem_reg[1][1]  ( .D(n47), .CK(W_CLK), .Q(\mem[1][1] ) );
  DFFQX2M \mem_reg[1][0]  ( .D(n46), .CK(W_CLK), .Q(\mem[1][0] ) );
  DFFQX2M \mem_reg[14][7]  ( .D(n157), .CK(W_CLK), .Q(\mem[14][7] ) );
  DFFQX2M \mem_reg[14][6]  ( .D(n156), .CK(W_CLK), .Q(\mem[14][6] ) );
  DFFQX2M \mem_reg[14][5]  ( .D(n155), .CK(W_CLK), .Q(\mem[14][5] ) );
  DFFQX2M \mem_reg[14][4]  ( .D(n154), .CK(W_CLK), .Q(\mem[14][4] ) );
  DFFQX2M \mem_reg[14][3]  ( .D(n153), .CK(W_CLK), .Q(\mem[14][3] ) );
  DFFQX2M \mem_reg[14][2]  ( .D(n152), .CK(W_CLK), .Q(\mem[14][2] ) );
  DFFQX2M \mem_reg[14][1]  ( .D(n151), .CK(W_CLK), .Q(\mem[14][1] ) );
  DFFQX2M \mem_reg[14][0]  ( .D(n150), .CK(W_CLK), .Q(\mem[14][0] ) );
  DFFQX2M \mem_reg[12][7]  ( .D(n141), .CK(W_CLK), .Q(\mem[12][7] ) );
  DFFQX2M \mem_reg[12][6]  ( .D(n140), .CK(W_CLK), .Q(\mem[12][6] ) );
  DFFQX2M \mem_reg[12][5]  ( .D(n139), .CK(W_CLK), .Q(\mem[12][5] ) );
  DFFQX2M \mem_reg[12][4]  ( .D(n138), .CK(W_CLK), .Q(\mem[12][4] ) );
  DFFQX2M \mem_reg[12][3]  ( .D(n137), .CK(W_CLK), .Q(\mem[12][3] ) );
  DFFQX2M \mem_reg[12][2]  ( .D(n136), .CK(W_CLK), .Q(\mem[12][2] ) );
  DFFQX2M \mem_reg[12][1]  ( .D(n135), .CK(W_CLK), .Q(\mem[12][1] ) );
  DFFQX2M \mem_reg[12][0]  ( .D(n134), .CK(W_CLK), .Q(\mem[12][0] ) );
  DFFQX2M \mem_reg[10][7]  ( .D(n125), .CK(W_CLK), .Q(\mem[10][7] ) );
  DFFQX2M \mem_reg[10][6]  ( .D(n124), .CK(W_CLK), .Q(\mem[10][6] ) );
  DFFQX2M \mem_reg[10][5]  ( .D(n123), .CK(W_CLK), .Q(\mem[10][5] ) );
  DFFQX2M \mem_reg[10][4]  ( .D(n122), .CK(W_CLK), .Q(\mem[10][4] ) );
  DFFQX2M \mem_reg[10][3]  ( .D(n121), .CK(W_CLK), .Q(\mem[10][3] ) );
  DFFQX2M \mem_reg[10][2]  ( .D(n120), .CK(W_CLK), .Q(\mem[10][2] ) );
  DFFQX2M \mem_reg[10][1]  ( .D(n119), .CK(W_CLK), .Q(\mem[10][1] ) );
  DFFQX2M \mem_reg[10][0]  ( .D(n118), .CK(W_CLK), .Q(\mem[10][0] ) );
  DFFQX2M \mem_reg[8][7]  ( .D(n109), .CK(W_CLK), .Q(\mem[8][7] ) );
  DFFQX2M \mem_reg[8][6]  ( .D(n108), .CK(W_CLK), .Q(\mem[8][6] ) );
  DFFQX2M \mem_reg[8][5]  ( .D(n107), .CK(W_CLK), .Q(\mem[8][5] ) );
  DFFQX2M \mem_reg[8][4]  ( .D(n106), .CK(W_CLK), .Q(\mem[8][4] ) );
  DFFQX2M \mem_reg[8][3]  ( .D(n105), .CK(W_CLK), .Q(\mem[8][3] ) );
  DFFQX2M \mem_reg[8][2]  ( .D(n104), .CK(W_CLK), .Q(\mem[8][2] ) );
  DFFQX2M \mem_reg[8][1]  ( .D(n103), .CK(W_CLK), .Q(\mem[8][1] ) );
  DFFQX2M \mem_reg[8][0]  ( .D(n102), .CK(W_CLK), .Q(\mem[8][0] ) );
  DFFQX2M \mem_reg[6][7]  ( .D(n93), .CK(W_CLK), .Q(\mem[6][7] ) );
  DFFQX2M \mem_reg[6][6]  ( .D(n92), .CK(W_CLK), .Q(\mem[6][6] ) );
  DFFQX2M \mem_reg[6][5]  ( .D(n91), .CK(W_CLK), .Q(\mem[6][5] ) );
  DFFQX2M \mem_reg[6][4]  ( .D(n90), .CK(W_CLK), .Q(\mem[6][4] ) );
  DFFQX2M \mem_reg[6][3]  ( .D(n89), .CK(W_CLK), .Q(\mem[6][3] ) );
  DFFQX2M \mem_reg[6][2]  ( .D(n88), .CK(W_CLK), .Q(\mem[6][2] ) );
  DFFQX2M \mem_reg[6][1]  ( .D(n87), .CK(W_CLK), .Q(\mem[6][1] ) );
  DFFQX2M \mem_reg[6][0]  ( .D(n86), .CK(W_CLK), .Q(\mem[6][0] ) );
  DFFQX2M \mem_reg[4][7]  ( .D(n77), .CK(W_CLK), .Q(\mem[4][7] ) );
  DFFQX2M \mem_reg[4][6]  ( .D(n76), .CK(W_CLK), .Q(\mem[4][6] ) );
  DFFQX2M \mem_reg[4][5]  ( .D(n75), .CK(W_CLK), .Q(\mem[4][5] ) );
  DFFQX2M \mem_reg[4][4]  ( .D(n74), .CK(W_CLK), .Q(\mem[4][4] ) );
  DFFQX2M \mem_reg[4][3]  ( .D(n73), .CK(W_CLK), .Q(\mem[4][3] ) );
  DFFQX2M \mem_reg[4][2]  ( .D(n72), .CK(W_CLK), .Q(\mem[4][2] ) );
  DFFQX2M \mem_reg[4][1]  ( .D(n71), .CK(W_CLK), .Q(\mem[4][1] ) );
  DFFQX2M \mem_reg[4][0]  ( .D(n70), .CK(W_CLK), .Q(\mem[4][0] ) );
  DFFQX2M \mem_reg[2][7]  ( .D(n61), .CK(W_CLK), .Q(\mem[2][7] ) );
  DFFQX2M \mem_reg[2][6]  ( .D(n60), .CK(W_CLK), .Q(\mem[2][6] ) );
  DFFQX2M \mem_reg[2][5]  ( .D(n59), .CK(W_CLK), .Q(\mem[2][5] ) );
  DFFQX2M \mem_reg[2][4]  ( .D(n58), .CK(W_CLK), .Q(\mem[2][4] ) );
  DFFQX2M \mem_reg[2][3]  ( .D(n57), .CK(W_CLK), .Q(\mem[2][3] ) );
  DFFQX2M \mem_reg[2][2]  ( .D(n56), .CK(W_CLK), .Q(\mem[2][2] ) );
  DFFQX2M \mem_reg[2][1]  ( .D(n55), .CK(W_CLK), .Q(\mem[2][1] ) );
  DFFQX2M \mem_reg[2][0]  ( .D(n54), .CK(W_CLK), .Q(\mem[2][0] ) );
  DFFQX2M \mem_reg[0][7]  ( .D(n45), .CK(W_CLK), .Q(\mem[0][7] ) );
  DFFQX2M \mem_reg[0][6]  ( .D(n44), .CK(W_CLK), .Q(\mem[0][6] ) );
  DFFQX2M \mem_reg[0][5]  ( .D(n43), .CK(W_CLK), .Q(\mem[0][5] ) );
  DFFQX2M \mem_reg[0][4]  ( .D(n42), .CK(W_CLK), .Q(\mem[0][4] ) );
  DFFQX2M \mem_reg[0][3]  ( .D(n41), .CK(W_CLK), .Q(\mem[0][3] ) );
  DFFQX2M \mem_reg[0][2]  ( .D(n40), .CK(W_CLK), .Q(\mem[0][2] ) );
  DFFQX2M \mem_reg[0][1]  ( .D(n39), .CK(W_CLK), .Q(\mem[0][1] ) );
  DFFQX2M \mem_reg[0][0]  ( .D(n38), .CK(W_CLK), .Q(\mem[0][0] ) );
  NOR2X2M U2 ( .A(n260), .B(n263), .Y(n249) );
  NOR2X2M U3 ( .A(n260), .B(N9), .Y(n250) );
  NOR2X2M U4 ( .A(n263), .B(N10), .Y(n251) );
  NOR2X2M U5 ( .A(N9), .B(N10), .Y(n252) );
  NAND2X4M U6 ( .A(N11), .B(n261), .Y(n253) );
  NAND2X4M U7 ( .A(N12), .B(n262), .Y(n240) );
  CLKINVX1M U8 ( .A(N11), .Y(n262) );
  NAND2X4M U9 ( .A(N12), .B(N11), .Y(n243) );
  NAND2X4M U10 ( .A(n262), .B(n261), .Y(n246) );
  CLKINVX1M U11 ( .A(N12), .Y(n261) );
  AND2X2M U12 ( .A(n24), .B(w_addr[0]), .Y(n15) );
  AND2X2M U13 ( .A(n36), .B(w_addr[0]), .Y(n30) );
  NOR2X4M U14 ( .A(n329), .B(w_addr[2]), .Y(n17) );
  NOR2X4M U15 ( .A(w_addr[1]), .B(w_addr[2]), .Y(n12) );
  AND2X2M U16 ( .A(w_addr[2]), .B(w_addr[1]), .Y(n23) );
  AND2X2M U17 ( .A(w_addr[2]), .B(n329), .Y(n20) );
  CLKBUFX6M U18 ( .A(n264), .Y(n266) );
  BUFX4M U19 ( .A(n249), .Y(n265) );
  BUFX4M U20 ( .A(n16), .Y(n323) );
  BUFX4M U21 ( .A(n18), .Y(n321) );
  BUFX4M U22 ( .A(n14), .Y(n325) );
  BUFX4M U23 ( .A(n27), .Y(n311) );
  BUFX4M U24 ( .A(n29), .Y(n309) );
  BUFX4M U25 ( .A(n31), .Y(n307) );
  BUFX4M U26 ( .A(n32), .Y(n305) );
  BUFX4M U27 ( .A(n11), .Y(n327) );
  BUFX4M U28 ( .A(n16), .Y(n322) );
  BUFX4M U29 ( .A(n18), .Y(n320) );
  BUFX4M U30 ( .A(n14), .Y(n324) );
  BUFX4M U31 ( .A(n27), .Y(n310) );
  BUFX4M U32 ( .A(n29), .Y(n308) );
  BUFX4M U33 ( .A(n31), .Y(n306) );
  BUFX4M U34 ( .A(n32), .Y(n304) );
  BUFX4M U35 ( .A(n11), .Y(n326) );
  INVX4M U36 ( .A(n1), .Y(n319) );
  INVX4M U37 ( .A(n1), .Y(n318) );
  INVX4M U38 ( .A(n2), .Y(n317) );
  INVX4M U39 ( .A(n2), .Y(n316) );
  INVX4M U40 ( .A(n3), .Y(n315) );
  INVX4M U41 ( .A(n3), .Y(n314) );
  INVX4M U42 ( .A(n4), .Y(n313) );
  INVX4M U43 ( .A(n4), .Y(n312) );
  INVX4M U44 ( .A(n7), .Y(n303) );
  INVX4M U45 ( .A(n7), .Y(n302) );
  INVX4M U46 ( .A(n5), .Y(n301) );
  INVX4M U47 ( .A(n5), .Y(n300) );
  INVX4M U48 ( .A(n8), .Y(n299) );
  INVX4M U49 ( .A(n8), .Y(n298) );
  INVX4M U50 ( .A(n6), .Y(n297) );
  INVX4M U51 ( .A(n6), .Y(n296) );
  CLKBUFX6M U52 ( .A(n268), .Y(n270) );
  CLKBUFX6M U53 ( .A(n276), .Y(n278) );
  CLKBUFX6M U54 ( .A(n272), .Y(n274) );
  CLKBUFX6M U55 ( .A(n264), .Y(n267) );
  BUFX2M U56 ( .A(n249), .Y(n264) );
  BUFX4M U57 ( .A(n250), .Y(n269) );
  BUFX4M U58 ( .A(n276), .Y(n277) );
  BUFX4M U59 ( .A(n251), .Y(n273) );
  AND2X2M U60 ( .A(n24), .B(n328), .Y(n13) );
  AND2X2M U61 ( .A(n36), .B(n328), .Y(n28) );
  NAND2X2M U62 ( .A(n12), .B(n13), .Y(n11) );
  NAND2X2M U63 ( .A(n17), .B(n13), .Y(n16) );
  NAND2X2M U64 ( .A(n17), .B(n15), .Y(n18) );
  NAND2X2M U65 ( .A(n15), .B(n12), .Y(n14) );
  NAND2X2M U66 ( .A(n28), .B(n12), .Y(n27) );
  NAND2X2M U67 ( .A(n30), .B(n12), .Y(n29) );
  NAND2X2M U68 ( .A(n28), .B(n17), .Y(n31) );
  NAND2X2M U69 ( .A(n30), .B(n17), .Y(n32) );
  AND2X2M U70 ( .A(n20), .B(n13), .Y(n1) );
  AND2X2M U71 ( .A(n20), .B(n15), .Y(n2) );
  AND2X2M U72 ( .A(n23), .B(n13), .Y(n3) );
  AND2X2M U73 ( .A(n23), .B(n15), .Y(n4) );
  AND2X2M U74 ( .A(n30), .B(n20), .Y(n5) );
  AND2X2M U75 ( .A(n30), .B(n23), .Y(n6) );
  AND2X2M U76 ( .A(n28), .B(n20), .Y(n7) );
  AND2X2M U77 ( .A(n28), .B(n23), .Y(n8) );
  BUFX4M U78 ( .A(n337), .Y(n294) );
  BUFX4M U79 ( .A(n336), .Y(n292) );
  BUFX4M U80 ( .A(n335), .Y(n290) );
  BUFX4M U81 ( .A(n334), .Y(n288) );
  BUFX4M U82 ( .A(n333), .Y(n286) );
  BUFX4M U83 ( .A(n332), .Y(n284) );
  BUFX4M U84 ( .A(n331), .Y(n282) );
  BUFX4M U85 ( .A(n330), .Y(n280) );
  BUFX4M U86 ( .A(n337), .Y(n295) );
  BUFX4M U87 ( .A(n336), .Y(n293) );
  BUFX4M U88 ( .A(n335), .Y(n291) );
  BUFX4M U89 ( .A(n334), .Y(n289) );
  BUFX4M U90 ( .A(n333), .Y(n287) );
  BUFX4M U91 ( .A(n332), .Y(n285) );
  BUFX4M U92 ( .A(n331), .Y(n283) );
  BUFX4M U93 ( .A(n330), .Y(n281) );
  CLKBUFX6M U94 ( .A(n268), .Y(n271) );
  BUFX2M U95 ( .A(n250), .Y(n268) );
  CLKBUFX6M U96 ( .A(n276), .Y(n279) );
  CLKBUFX6M U97 ( .A(n272), .Y(n275) );
  BUFX2M U98 ( .A(n251), .Y(n272) );
  BUFX2M U99 ( .A(n252), .Y(n276) );
  NOR2BX2M U100 ( .AN(W_INC), .B(wfull), .Y(n26) );
  NOR2BX2M U101 ( .AN(n26), .B(w_addr[3]), .Y(n24) );
  OAI2BB2X1M U102 ( .B0(n293), .B1(n324), .A0N(\mem[1][1] ), .A1N(n325), .Y(
        n47) );
  OAI2BB2X1M U103 ( .B0(n291), .B1(n324), .A0N(\mem[1][2] ), .A1N(n325), .Y(
        n48) );
  OAI2BB2X1M U104 ( .B0(n289), .B1(n324), .A0N(\mem[1][3] ), .A1N(n325), .Y(
        n49) );
  OAI2BB2X1M U105 ( .B0(n287), .B1(n324), .A0N(\mem[1][4] ), .A1N(n325), .Y(
        n50) );
  OAI2BB2X1M U106 ( .B0(n285), .B1(n324), .A0N(\mem[1][5] ), .A1N(n325), .Y(
        n51) );
  OAI2BB2X1M U107 ( .B0(n283), .B1(n324), .A0N(\mem[1][6] ), .A1N(n325), .Y(
        n52) );
  OAI2BB2X1M U108 ( .B0(n281), .B1(n324), .A0N(\mem[1][7] ), .A1N(n325), .Y(
        n53) );
  OAI2BB2X1M U109 ( .B0(n293), .B1(n322), .A0N(\mem[2][1] ), .A1N(n323), .Y(
        n55) );
  OAI2BB2X1M U110 ( .B0(n291), .B1(n322), .A0N(\mem[2][2] ), .A1N(n323), .Y(
        n56) );
  OAI2BB2X1M U111 ( .B0(n289), .B1(n322), .A0N(\mem[2][3] ), .A1N(n323), .Y(
        n57) );
  OAI2BB2X1M U112 ( .B0(n287), .B1(n322), .A0N(\mem[2][4] ), .A1N(n323), .Y(
        n58) );
  OAI2BB2X1M U113 ( .B0(n285), .B1(n322), .A0N(\mem[2][5] ), .A1N(n323), .Y(
        n59) );
  OAI2BB2X1M U114 ( .B0(n283), .B1(n322), .A0N(\mem[2][6] ), .A1N(n323), .Y(
        n60) );
  OAI2BB2X1M U115 ( .B0(n281), .B1(n322), .A0N(\mem[2][7] ), .A1N(n323), .Y(
        n61) );
  OAI2BB2X1M U116 ( .B0(n293), .B1(n320), .A0N(\mem[3][1] ), .A1N(n321), .Y(
        n63) );
  OAI2BB2X1M U117 ( .B0(n291), .B1(n320), .A0N(\mem[3][2] ), .A1N(n321), .Y(
        n64) );
  OAI2BB2X1M U118 ( .B0(n289), .B1(n320), .A0N(\mem[3][3] ), .A1N(n321), .Y(
        n65) );
  OAI2BB2X1M U119 ( .B0(n287), .B1(n320), .A0N(\mem[3][4] ), .A1N(n321), .Y(
        n66) );
  OAI2BB2X1M U120 ( .B0(n285), .B1(n320), .A0N(\mem[3][5] ), .A1N(n321), .Y(
        n67) );
  OAI2BB2X1M U121 ( .B0(n283), .B1(n320), .A0N(\mem[3][6] ), .A1N(n321), .Y(
        n68) );
  OAI2BB2X1M U122 ( .B0(n281), .B1(n320), .A0N(\mem[3][7] ), .A1N(n321), .Y(
        n69) );
  OAI2BB2X1M U123 ( .B0(n295), .B1(n319), .A0N(\mem[4][0] ), .A1N(n319), .Y(
        n70) );
  OAI2BB2X1M U124 ( .B0(n293), .B1(n318), .A0N(\mem[4][1] ), .A1N(n318), .Y(
        n71) );
  OAI2BB2X1M U125 ( .B0(n291), .B1(n319), .A0N(\mem[4][2] ), .A1N(n319), .Y(
        n72) );
  OAI2BB2X1M U126 ( .B0(n289), .B1(n318), .A0N(\mem[4][3] ), .A1N(n318), .Y(
        n73) );
  OAI2BB2X1M U127 ( .B0(n287), .B1(n319), .A0N(\mem[4][4] ), .A1N(n319), .Y(
        n74) );
  OAI2BB2X1M U128 ( .B0(n285), .B1(n318), .A0N(\mem[4][5] ), .A1N(n318), .Y(
        n75) );
  OAI2BB2X1M U129 ( .B0(n283), .B1(n319), .A0N(\mem[4][6] ), .A1N(n319), .Y(
        n76) );
  OAI2BB2X1M U130 ( .B0(n281), .B1(n318), .A0N(\mem[4][7] ), .A1N(n318), .Y(
        n77) );
  OAI2BB2X1M U131 ( .B0(n295), .B1(n317), .A0N(\mem[5][0] ), .A1N(n317), .Y(
        n78) );
  OAI2BB2X1M U132 ( .B0(n293), .B1(n316), .A0N(\mem[5][1] ), .A1N(n316), .Y(
        n79) );
  OAI2BB2X1M U133 ( .B0(n291), .B1(n317), .A0N(\mem[5][2] ), .A1N(n317), .Y(
        n80) );
  OAI2BB2X1M U134 ( .B0(n289), .B1(n316), .A0N(\mem[5][3] ), .A1N(n316), .Y(
        n81) );
  OAI2BB2X1M U135 ( .B0(n287), .B1(n317), .A0N(\mem[5][4] ), .A1N(n317), .Y(
        n82) );
  OAI2BB2X1M U136 ( .B0(n285), .B1(n316), .A0N(\mem[5][5] ), .A1N(n316), .Y(
        n83) );
  OAI2BB2X1M U137 ( .B0(n283), .B1(n317), .A0N(\mem[5][6] ), .A1N(n317), .Y(
        n84) );
  OAI2BB2X1M U138 ( .B0(n281), .B1(n316), .A0N(\mem[5][7] ), .A1N(n316), .Y(
        n85) );
  OAI2BB2X1M U139 ( .B0(n295), .B1(n315), .A0N(\mem[6][0] ), .A1N(n315), .Y(
        n86) );
  OAI2BB2X1M U140 ( .B0(n293), .B1(n314), .A0N(\mem[6][1] ), .A1N(n314), .Y(
        n87) );
  OAI2BB2X1M U141 ( .B0(n291), .B1(n315), .A0N(\mem[6][2] ), .A1N(n315), .Y(
        n88) );
  OAI2BB2X1M U142 ( .B0(n289), .B1(n314), .A0N(\mem[6][3] ), .A1N(n314), .Y(
        n89) );
  OAI2BB2X1M U143 ( .B0(n287), .B1(n315), .A0N(\mem[6][4] ), .A1N(n315), .Y(
        n90) );
  OAI2BB2X1M U144 ( .B0(n285), .B1(n314), .A0N(\mem[6][5] ), .A1N(n314), .Y(
        n91) );
  OAI2BB2X1M U145 ( .B0(n283), .B1(n315), .A0N(\mem[6][6] ), .A1N(n315), .Y(
        n92) );
  OAI2BB2X1M U146 ( .B0(n281), .B1(n314), .A0N(\mem[6][7] ), .A1N(n314), .Y(
        n93) );
  OAI2BB2X1M U147 ( .B0(n295), .B1(n313), .A0N(\mem[7][0] ), .A1N(n313), .Y(
        n94) );
  OAI2BB2X1M U148 ( .B0(n293), .B1(n312), .A0N(\mem[7][1] ), .A1N(n312), .Y(
        n95) );
  OAI2BB2X1M U149 ( .B0(n291), .B1(n313), .A0N(\mem[7][2] ), .A1N(n313), .Y(
        n96) );
  OAI2BB2X1M U150 ( .B0(n289), .B1(n312), .A0N(\mem[7][3] ), .A1N(n312), .Y(
        n97) );
  OAI2BB2X1M U151 ( .B0(n287), .B1(n313), .A0N(\mem[7][4] ), .A1N(n313), .Y(
        n98) );
  OAI2BB2X1M U152 ( .B0(n285), .B1(n312), .A0N(\mem[7][5] ), .A1N(n312), .Y(
        n99) );
  OAI2BB2X1M U153 ( .B0(n283), .B1(n313), .A0N(\mem[7][6] ), .A1N(n313), .Y(
        n100) );
  OAI2BB2X1M U154 ( .B0(n281), .B1(n312), .A0N(\mem[7][7] ), .A1N(n312), .Y(
        n101) );
  OAI2BB2X1M U155 ( .B0(n293), .B1(n310), .A0N(\mem[8][1] ), .A1N(n311), .Y(
        n103) );
  OAI2BB2X1M U156 ( .B0(n291), .B1(n310), .A0N(\mem[8][2] ), .A1N(n311), .Y(
        n104) );
  OAI2BB2X1M U157 ( .B0(n289), .B1(n310), .A0N(\mem[8][3] ), .A1N(n311), .Y(
        n105) );
  OAI2BB2X1M U158 ( .B0(n287), .B1(n310), .A0N(\mem[8][4] ), .A1N(n311), .Y(
        n106) );
  OAI2BB2X1M U159 ( .B0(n285), .B1(n310), .A0N(\mem[8][5] ), .A1N(n311), .Y(
        n107) );
  OAI2BB2X1M U160 ( .B0(n283), .B1(n310), .A0N(\mem[8][6] ), .A1N(n311), .Y(
        n108) );
  OAI2BB2X1M U161 ( .B0(n281), .B1(n310), .A0N(\mem[8][7] ), .A1N(n311), .Y(
        n109) );
  OAI2BB2X1M U162 ( .B0(n292), .B1(n308), .A0N(\mem[9][1] ), .A1N(n309), .Y(
        n111) );
  OAI2BB2X1M U163 ( .B0(n290), .B1(n308), .A0N(\mem[9][2] ), .A1N(n309), .Y(
        n112) );
  OAI2BB2X1M U164 ( .B0(n288), .B1(n308), .A0N(\mem[9][3] ), .A1N(n309), .Y(
        n113) );
  OAI2BB2X1M U165 ( .B0(n286), .B1(n308), .A0N(\mem[9][4] ), .A1N(n309), .Y(
        n114) );
  OAI2BB2X1M U166 ( .B0(n284), .B1(n308), .A0N(\mem[9][5] ), .A1N(n309), .Y(
        n115) );
  OAI2BB2X1M U167 ( .B0(n282), .B1(n308), .A0N(\mem[9][6] ), .A1N(n309), .Y(
        n116) );
  OAI2BB2X1M U168 ( .B0(n280), .B1(n308), .A0N(\mem[9][7] ), .A1N(n309), .Y(
        n117) );
  OAI2BB2X1M U169 ( .B0(n292), .B1(n306), .A0N(\mem[10][1] ), .A1N(n307), .Y(
        n119) );
  OAI2BB2X1M U170 ( .B0(n290), .B1(n306), .A0N(\mem[10][2] ), .A1N(n307), .Y(
        n120) );
  OAI2BB2X1M U171 ( .B0(n288), .B1(n306), .A0N(\mem[10][3] ), .A1N(n307), .Y(
        n121) );
  OAI2BB2X1M U172 ( .B0(n286), .B1(n306), .A0N(\mem[10][4] ), .A1N(n307), .Y(
        n122) );
  OAI2BB2X1M U173 ( .B0(n284), .B1(n306), .A0N(\mem[10][5] ), .A1N(n307), .Y(
        n123) );
  OAI2BB2X1M U174 ( .B0(n282), .B1(n306), .A0N(\mem[10][6] ), .A1N(n307), .Y(
        n124) );
  OAI2BB2X1M U175 ( .B0(n280), .B1(n306), .A0N(\mem[10][7] ), .A1N(n307), .Y(
        n125) );
  OAI2BB2X1M U176 ( .B0(n292), .B1(n304), .A0N(\mem[11][1] ), .A1N(n305), .Y(
        n127) );
  OAI2BB2X1M U177 ( .B0(n290), .B1(n304), .A0N(\mem[11][2] ), .A1N(n305), .Y(
        n128) );
  OAI2BB2X1M U178 ( .B0(n288), .B1(n304), .A0N(\mem[11][3] ), .A1N(n305), .Y(
        n129) );
  OAI2BB2X1M U179 ( .B0(n286), .B1(n304), .A0N(\mem[11][4] ), .A1N(n305), .Y(
        n130) );
  OAI2BB2X1M U180 ( .B0(n284), .B1(n304), .A0N(\mem[11][5] ), .A1N(n305), .Y(
        n131) );
  OAI2BB2X1M U181 ( .B0(n282), .B1(n304), .A0N(\mem[11][6] ), .A1N(n305), .Y(
        n132) );
  OAI2BB2X1M U182 ( .B0(n280), .B1(n304), .A0N(\mem[11][7] ), .A1N(n305), .Y(
        n133) );
  OAI2BB2X1M U183 ( .B0(n294), .B1(n303), .A0N(\mem[12][0] ), .A1N(n303), .Y(
        n134) );
  OAI2BB2X1M U184 ( .B0(n292), .B1(n302), .A0N(\mem[12][1] ), .A1N(n302), .Y(
        n135) );
  OAI2BB2X1M U185 ( .B0(n290), .B1(n303), .A0N(\mem[12][2] ), .A1N(n303), .Y(
        n136) );
  OAI2BB2X1M U186 ( .B0(n288), .B1(n302), .A0N(\mem[12][3] ), .A1N(n302), .Y(
        n137) );
  OAI2BB2X1M U187 ( .B0(n286), .B1(n303), .A0N(\mem[12][4] ), .A1N(n303), .Y(
        n138) );
  OAI2BB2X1M U188 ( .B0(n284), .B1(n302), .A0N(\mem[12][5] ), .A1N(n302), .Y(
        n139) );
  OAI2BB2X1M U189 ( .B0(n282), .B1(n303), .A0N(\mem[12][6] ), .A1N(n303), .Y(
        n140) );
  OAI2BB2X1M U190 ( .B0(n280), .B1(n302), .A0N(\mem[12][7] ), .A1N(n302), .Y(
        n141) );
  OAI2BB2X1M U191 ( .B0(n294), .B1(n301), .A0N(\mem[13][0] ), .A1N(n301), .Y(
        n142) );
  OAI2BB2X1M U192 ( .B0(n292), .B1(n300), .A0N(\mem[13][1] ), .A1N(n300), .Y(
        n143) );
  OAI2BB2X1M U193 ( .B0(n290), .B1(n301), .A0N(\mem[13][2] ), .A1N(n301), .Y(
        n144) );
  OAI2BB2X1M U194 ( .B0(n288), .B1(n300), .A0N(\mem[13][3] ), .A1N(n300), .Y(
        n145) );
  OAI2BB2X1M U195 ( .B0(n286), .B1(n301), .A0N(\mem[13][4] ), .A1N(n301), .Y(
        n146) );
  OAI2BB2X1M U196 ( .B0(n284), .B1(n300), .A0N(\mem[13][5] ), .A1N(n300), .Y(
        n147) );
  OAI2BB2X1M U197 ( .B0(n282), .B1(n301), .A0N(\mem[13][6] ), .A1N(n301), .Y(
        n148) );
  OAI2BB2X1M U198 ( .B0(n280), .B1(n300), .A0N(\mem[13][7] ), .A1N(n300), .Y(
        n149) );
  OAI2BB2X1M U199 ( .B0(n294), .B1(n299), .A0N(\mem[14][0] ), .A1N(n299), .Y(
        n150) );
  OAI2BB2X1M U200 ( .B0(n292), .B1(n298), .A0N(\mem[14][1] ), .A1N(n298), .Y(
        n151) );
  OAI2BB2X1M U201 ( .B0(n290), .B1(n299), .A0N(\mem[14][2] ), .A1N(n299), .Y(
        n152) );
  OAI2BB2X1M U202 ( .B0(n288), .B1(n298), .A0N(\mem[14][3] ), .A1N(n298), .Y(
        n153) );
  OAI2BB2X1M U203 ( .B0(n286), .B1(n299), .A0N(\mem[14][4] ), .A1N(n299), .Y(
        n154) );
  OAI2BB2X1M U204 ( .B0(n284), .B1(n298), .A0N(\mem[14][5] ), .A1N(n298), .Y(
        n155) );
  OAI2BB2X1M U205 ( .B0(n282), .B1(n299), .A0N(\mem[14][6] ), .A1N(n299), .Y(
        n156) );
  OAI2BB2X1M U206 ( .B0(n280), .B1(n298), .A0N(\mem[14][7] ), .A1N(n298), .Y(
        n157) );
  OAI2BB2X1M U207 ( .B0(n294), .B1(n297), .A0N(\mem[15][0] ), .A1N(n297), .Y(
        n158) );
  OAI2BB2X1M U208 ( .B0(n292), .B1(n296), .A0N(\mem[15][1] ), .A1N(n296), .Y(
        n159) );
  OAI2BB2X1M U209 ( .B0(n290), .B1(n297), .A0N(\mem[15][2] ), .A1N(n297), .Y(
        n160) );
  OAI2BB2X1M U210 ( .B0(n288), .B1(n296), .A0N(\mem[15][3] ), .A1N(n296), .Y(
        n161) );
  OAI2BB2X1M U211 ( .B0(n286), .B1(n297), .A0N(\mem[15][4] ), .A1N(n297), .Y(
        n162) );
  OAI2BB2X1M U212 ( .B0(n284), .B1(n296), .A0N(\mem[15][5] ), .A1N(n296), .Y(
        n163) );
  OAI2BB2X1M U213 ( .B0(n282), .B1(n297), .A0N(\mem[15][6] ), .A1N(n297), .Y(
        n164) );
  OAI2BB2X1M U214 ( .B0(n280), .B1(n296), .A0N(\mem[15][7] ), .A1N(n296), .Y(
        n165) );
  OAI2BB2X1M U215 ( .B0(n327), .B1(n294), .A0N(\mem[0][0] ), .A1N(n327), .Y(
        n38) );
  OAI2BB2X1M U216 ( .B0(n326), .B1(n292), .A0N(\mem[0][1] ), .A1N(n327), .Y(
        n39) );
  OAI2BB2X1M U217 ( .B0(n326), .B1(n290), .A0N(\mem[0][2] ), .A1N(n327), .Y(
        n40) );
  OAI2BB2X1M U218 ( .B0(n326), .B1(n288), .A0N(\mem[0][3] ), .A1N(n327), .Y(
        n41) );
  OAI2BB2X1M U219 ( .B0(n326), .B1(n286), .A0N(\mem[0][4] ), .A1N(n327), .Y(
        n42) );
  OAI2BB2X1M U220 ( .B0(n326), .B1(n284), .A0N(\mem[0][5] ), .A1N(n327), .Y(
        n43) );
  OAI2BB2X1M U221 ( .B0(n326), .B1(n282), .A0N(\mem[0][6] ), .A1N(n327), .Y(
        n44) );
  OAI2BB2X1M U222 ( .B0(n326), .B1(n280), .A0N(\mem[0][7] ), .A1N(n327), .Y(
        n45) );
  OAI2BB2X1M U223 ( .B0(n295), .B1(n325), .A0N(\mem[1][0] ), .A1N(n325), .Y(
        n46) );
  OAI2BB2X1M U224 ( .B0(n295), .B1(n323), .A0N(\mem[2][0] ), .A1N(n323), .Y(
        n54) );
  OAI2BB2X1M U225 ( .B0(n295), .B1(n321), .A0N(\mem[3][0] ), .A1N(n321), .Y(
        n62) );
  OAI2BB2X1M U226 ( .B0(n295), .B1(n311), .A0N(\mem[8][0] ), .A1N(n311), .Y(
        n102) );
  OAI2BB2X1M U227 ( .B0(n294), .B1(n309), .A0N(\mem[9][0] ), .A1N(n309), .Y(
        n110) );
  OAI2BB2X1M U228 ( .B0(n294), .B1(n307), .A0N(\mem[10][0] ), .A1N(n307), .Y(
        n118) );
  OAI2BB2X1M U229 ( .B0(n294), .B1(n305), .A0N(\mem[11][0] ), .A1N(n305), .Y(
        n126) );
  AND2X2M U230 ( .A(w_addr[3]), .B(n26), .Y(n36) );
  INVX2M U231 ( .A(wdata[0]), .Y(n337) );
  INVX2M U232 ( .A(wdata[1]), .Y(n336) );
  INVX2M U233 ( .A(wdata[2]), .Y(n335) );
  INVX2M U234 ( .A(wdata[3]), .Y(n334) );
  INVX2M U235 ( .A(wdata[4]), .Y(n333) );
  INVX2M U236 ( .A(wdata[5]), .Y(n332) );
  INVX2M U237 ( .A(wdata[6]), .Y(n331) );
  INVX2M U238 ( .A(wdata[7]), .Y(n330) );
  INVX2M U239 ( .A(w_addr[1]), .Y(n329) );
  INVX2M U240 ( .A(w_addr[0]), .Y(n328) );
  INVX2M U241 ( .A(N10), .Y(n260) );
  INVX2M U242 ( .A(N9), .Y(n263) );
  AOI22X1M U243 ( .A0(\mem[10][0] ), .A1(n271), .B0(\mem[11][0] ), .B1(n267), 
        .Y(n10) );
  AOI22X1M U244 ( .A0(\mem[8][0] ), .A1(n279), .B0(\mem[9][0] ), .B1(n275), 
        .Y(n9) );
  AOI21X1M U245 ( .A0(n10), .A1(n9), .B0(n240), .Y(n167) );
  AOI22X1M U246 ( .A0(\mem[14][0] ), .A1(n271), .B0(\mem[15][0] ), .B1(n267), 
        .Y(n21) );
  AOI22X1M U247 ( .A0(\mem[12][0] ), .A1(n279), .B0(\mem[13][0] ), .B1(n275), 
        .Y(n19) );
  AOI21X1M U248 ( .A0(n21), .A1(n19), .B0(n243), .Y(n166) );
  AOI22X1M U249 ( .A0(\mem[2][0] ), .A1(n271), .B0(\mem[3][0] ), .B1(n267), 
        .Y(n25) );
  AOI22X1M U250 ( .A0(\mem[0][0] ), .A1(n279), .B0(\mem[1][0] ), .B1(n275), 
        .Y(n22) );
  AOI21X1M U251 ( .A0(n25), .A1(n22), .B0(n246), .Y(n37) );
  AOI22X1M U252 ( .A0(\mem[6][0] ), .A1(n271), .B0(\mem[7][0] ), .B1(n267), 
        .Y(n34) );
  AOI22X1M U253 ( .A0(\mem[4][0] ), .A1(n279), .B0(\mem[5][0] ), .B1(n275), 
        .Y(n33) );
  AOI21X1M U254 ( .A0(n34), .A1(n33), .B0(n253), .Y(n35) );
  OR4X1M U255 ( .A(n167), .B(n166), .C(n37), .D(n35), .Y(rdata[0]) );
  AOI22X1M U256 ( .A0(\mem[10][1] ), .A1(n271), .B0(\mem[11][1] ), .B1(n267), 
        .Y(n169) );
  AOI22X1M U257 ( .A0(\mem[8][1] ), .A1(n279), .B0(\mem[9][1] ), .B1(n275), 
        .Y(n168) );
  AOI21X1M U258 ( .A0(n169), .A1(n168), .B0(n240), .Y(n179) );
  AOI22X1M U259 ( .A0(\mem[14][1] ), .A1(n271), .B0(\mem[15][1] ), .B1(n267), 
        .Y(n171) );
  AOI22X1M U260 ( .A0(\mem[12][1] ), .A1(n279), .B0(\mem[13][1] ), .B1(n275), 
        .Y(n170) );
  AOI21X1M U261 ( .A0(n171), .A1(n170), .B0(n243), .Y(n178) );
  AOI22X1M U262 ( .A0(\mem[2][1] ), .A1(n271), .B0(\mem[3][1] ), .B1(n267), 
        .Y(n173) );
  AOI22X1M U263 ( .A0(\mem[0][1] ), .A1(n279), .B0(\mem[1][1] ), .B1(n275), 
        .Y(n172) );
  AOI21X1M U264 ( .A0(n173), .A1(n172), .B0(n246), .Y(n177) );
  AOI22X1M U265 ( .A0(\mem[6][1] ), .A1(n271), .B0(\mem[7][1] ), .B1(n267), 
        .Y(n175) );
  AOI22X1M U266 ( .A0(\mem[4][1] ), .A1(n279), .B0(\mem[5][1] ), .B1(n275), 
        .Y(n174) );
  AOI21X1M U267 ( .A0(n175), .A1(n174), .B0(n253), .Y(n176) );
  OR4X1M U268 ( .A(n179), .B(n178), .C(n177), .D(n176), .Y(rdata[1]) );
  AOI22X1M U269 ( .A0(\mem[10][2] ), .A1(n271), .B0(\mem[11][2] ), .B1(n267), 
        .Y(n181) );
  AOI22X1M U270 ( .A0(\mem[8][2] ), .A1(n279), .B0(\mem[9][2] ), .B1(n275), 
        .Y(n180) );
  AOI21X1M U271 ( .A0(n181), .A1(n180), .B0(n240), .Y(n191) );
  AOI22X1M U272 ( .A0(\mem[14][2] ), .A1(n271), .B0(\mem[15][2] ), .B1(n267), 
        .Y(n183) );
  AOI22X1M U273 ( .A0(\mem[12][2] ), .A1(n279), .B0(\mem[13][2] ), .B1(n275), 
        .Y(n182) );
  AOI21X1M U274 ( .A0(n183), .A1(n182), .B0(n243), .Y(n190) );
  AOI22X1M U275 ( .A0(\mem[2][2] ), .A1(n271), .B0(\mem[3][2] ), .B1(n267), 
        .Y(n185) );
  AOI22X1M U276 ( .A0(\mem[0][2] ), .A1(n279), .B0(\mem[1][2] ), .B1(n275), 
        .Y(n184) );
  AOI21X1M U277 ( .A0(n185), .A1(n184), .B0(n246), .Y(n189) );
  AOI22X1M U278 ( .A0(\mem[6][2] ), .A1(n271), .B0(\mem[7][2] ), .B1(n267), 
        .Y(n187) );
  AOI22X1M U279 ( .A0(\mem[4][2] ), .A1(n279), .B0(\mem[5][2] ), .B1(n275), 
        .Y(n186) );
  AOI21X1M U280 ( .A0(n187), .A1(n186), .B0(n253), .Y(n188) );
  OR4X1M U281 ( .A(n191), .B(n190), .C(n189), .D(n188), .Y(rdata[2]) );
  AOI22X1M U282 ( .A0(\mem[10][3] ), .A1(n270), .B0(\mem[11][3] ), .B1(n266), 
        .Y(n193) );
  AOI22X1M U283 ( .A0(\mem[8][3] ), .A1(n278), .B0(\mem[9][3] ), .B1(n274), 
        .Y(n192) );
  AOI21X1M U284 ( .A0(n193), .A1(n192), .B0(n240), .Y(n203) );
  AOI22X1M U285 ( .A0(\mem[14][3] ), .A1(n270), .B0(\mem[15][3] ), .B1(n266), 
        .Y(n195) );
  AOI22X1M U286 ( .A0(\mem[12][3] ), .A1(n278), .B0(\mem[13][3] ), .B1(n274), 
        .Y(n194) );
  AOI21X1M U287 ( .A0(n195), .A1(n194), .B0(n243), .Y(n202) );
  AOI22X1M U288 ( .A0(\mem[2][3] ), .A1(n270), .B0(\mem[3][3] ), .B1(n266), 
        .Y(n197) );
  AOI22X1M U289 ( .A0(\mem[0][3] ), .A1(n278), .B0(\mem[1][3] ), .B1(n274), 
        .Y(n196) );
  AOI21X1M U290 ( .A0(n197), .A1(n196), .B0(n246), .Y(n201) );
  AOI22X1M U291 ( .A0(\mem[6][3] ), .A1(n270), .B0(\mem[7][3] ), .B1(n266), 
        .Y(n199) );
  AOI22X1M U292 ( .A0(\mem[4][3] ), .A1(n278), .B0(\mem[5][3] ), .B1(n274), 
        .Y(n198) );
  AOI21X1M U293 ( .A0(n199), .A1(n198), .B0(n253), .Y(n200) );
  OR4X1M U294 ( .A(n203), .B(n202), .C(n201), .D(n200), .Y(rdata[3]) );
  AOI22X1M U295 ( .A0(\mem[10][4] ), .A1(n270), .B0(\mem[11][4] ), .B1(n266), 
        .Y(n205) );
  AOI22X1M U296 ( .A0(\mem[8][4] ), .A1(n278), .B0(\mem[9][4] ), .B1(n274), 
        .Y(n204) );
  AOI21X1M U297 ( .A0(n205), .A1(n204), .B0(n240), .Y(n215) );
  AOI22X1M U298 ( .A0(\mem[14][4] ), .A1(n270), .B0(\mem[15][4] ), .B1(n266), 
        .Y(n207) );
  AOI22X1M U299 ( .A0(\mem[12][4] ), .A1(n278), .B0(\mem[13][4] ), .B1(n274), 
        .Y(n206) );
  AOI21X1M U300 ( .A0(n207), .A1(n206), .B0(n243), .Y(n214) );
  AOI22X1M U301 ( .A0(\mem[2][4] ), .A1(n270), .B0(\mem[3][4] ), .B1(n266), 
        .Y(n209) );
  AOI22X1M U302 ( .A0(\mem[0][4] ), .A1(n278), .B0(\mem[1][4] ), .B1(n274), 
        .Y(n208) );
  AOI21X1M U303 ( .A0(n209), .A1(n208), .B0(n246), .Y(n213) );
  AOI22X1M U304 ( .A0(\mem[6][4] ), .A1(n270), .B0(\mem[7][4] ), .B1(n266), 
        .Y(n211) );
  AOI22X1M U305 ( .A0(\mem[4][4] ), .A1(n278), .B0(\mem[5][4] ), .B1(n274), 
        .Y(n210) );
  AOI21X1M U306 ( .A0(n211), .A1(n210), .B0(n253), .Y(n212) );
  OR4X1M U307 ( .A(n215), .B(n214), .C(n213), .D(n212), .Y(rdata[4]) );
  AOI22X1M U308 ( .A0(\mem[10][5] ), .A1(n270), .B0(\mem[11][5] ), .B1(n266), 
        .Y(n217) );
  AOI22X1M U309 ( .A0(\mem[8][5] ), .A1(n278), .B0(\mem[9][5] ), .B1(n274), 
        .Y(n216) );
  AOI21X1M U310 ( .A0(n217), .A1(n216), .B0(n240), .Y(n227) );
  AOI22X1M U311 ( .A0(\mem[14][5] ), .A1(n270), .B0(\mem[15][5] ), .B1(n266), 
        .Y(n219) );
  AOI22X1M U312 ( .A0(\mem[12][5] ), .A1(n278), .B0(\mem[13][5] ), .B1(n274), 
        .Y(n218) );
  AOI21X1M U313 ( .A0(n219), .A1(n218), .B0(n243), .Y(n226) );
  AOI22X1M U314 ( .A0(\mem[2][5] ), .A1(n270), .B0(\mem[3][5] ), .B1(n266), 
        .Y(n221) );
  AOI22X1M U315 ( .A0(\mem[0][5] ), .A1(n278), .B0(\mem[1][5] ), .B1(n274), 
        .Y(n220) );
  AOI21X1M U316 ( .A0(n221), .A1(n220), .B0(n246), .Y(n225) );
  AOI22X1M U317 ( .A0(\mem[6][5] ), .A1(n270), .B0(\mem[7][5] ), .B1(n266), 
        .Y(n223) );
  AOI22X1M U318 ( .A0(\mem[4][5] ), .A1(n278), .B0(\mem[5][5] ), .B1(n274), 
        .Y(n222) );
  AOI21X1M U319 ( .A0(n223), .A1(n222), .B0(n253), .Y(n224) );
  OR4X1M U320 ( .A(n227), .B(n226), .C(n225), .D(n224), .Y(rdata[5]) );
  AOI22X1M U321 ( .A0(\mem[10][6] ), .A1(n269), .B0(\mem[11][6] ), .B1(n265), 
        .Y(n229) );
  AOI22X1M U322 ( .A0(\mem[8][6] ), .A1(n277), .B0(\mem[9][6] ), .B1(n273), 
        .Y(n228) );
  AOI21X1M U323 ( .A0(n229), .A1(n228), .B0(n240), .Y(n239) );
  AOI22X1M U324 ( .A0(\mem[14][6] ), .A1(n269), .B0(\mem[15][6] ), .B1(n265), 
        .Y(n231) );
  AOI22X1M U325 ( .A0(\mem[12][6] ), .A1(n277), .B0(\mem[13][6] ), .B1(n273), 
        .Y(n230) );
  AOI21X1M U326 ( .A0(n231), .A1(n230), .B0(n243), .Y(n238) );
  AOI22X1M U327 ( .A0(\mem[2][6] ), .A1(n269), .B0(\mem[3][6] ), .B1(n265), 
        .Y(n233) );
  AOI22X1M U328 ( .A0(\mem[0][6] ), .A1(n277), .B0(\mem[1][6] ), .B1(n273), 
        .Y(n232) );
  AOI21X1M U329 ( .A0(n233), .A1(n232), .B0(n246), .Y(n237) );
  AOI22X1M U330 ( .A0(\mem[6][6] ), .A1(n269), .B0(\mem[7][6] ), .B1(n265), 
        .Y(n235) );
  AOI22X1M U331 ( .A0(\mem[4][6] ), .A1(n277), .B0(\mem[5][6] ), .B1(n273), 
        .Y(n234) );
  AOI21X1M U332 ( .A0(n235), .A1(n234), .B0(n253), .Y(n236) );
  OR4X1M U333 ( .A(n239), .B(n238), .C(n237), .D(n236), .Y(rdata[6]) );
  AOI22X1M U334 ( .A0(\mem[10][7] ), .A1(n269), .B0(\mem[11][7] ), .B1(n265), 
        .Y(n242) );
  AOI22X1M U335 ( .A0(\mem[8][7] ), .A1(n277), .B0(\mem[9][7] ), .B1(n273), 
        .Y(n241) );
  AOI21X1M U336 ( .A0(n242), .A1(n241), .B0(n240), .Y(n259) );
  AOI22X1M U337 ( .A0(\mem[14][7] ), .A1(n269), .B0(\mem[15][7] ), .B1(n265), 
        .Y(n245) );
  AOI22X1M U338 ( .A0(\mem[12][7] ), .A1(n277), .B0(\mem[13][7] ), .B1(n273), 
        .Y(n244) );
  AOI21X1M U339 ( .A0(n245), .A1(n244), .B0(n243), .Y(n258) );
  AOI22X1M U340 ( .A0(\mem[2][7] ), .A1(n269), .B0(\mem[3][7] ), .B1(n265), 
        .Y(n248) );
  AOI22X1M U341 ( .A0(\mem[0][7] ), .A1(n277), .B0(\mem[1][7] ), .B1(n273), 
        .Y(n247) );
  AOI21X1M U342 ( .A0(n248), .A1(n247), .B0(n246), .Y(n257) );
  AOI22X1M U343 ( .A0(\mem[6][7] ), .A1(n269), .B0(\mem[7][7] ), .B1(n265), 
        .Y(n255) );
  AOI22X1M U344 ( .A0(\mem[4][7] ), .A1(n277), .B0(\mem[5][7] ), .B1(n273), 
        .Y(n254) );
  AOI21X1M U345 ( .A0(n255), .A1(n254), .B0(n253), .Y(n256) );
  OR4X1M U346 ( .A(n259), .B(n258), .C(n257), .D(n256), .Y(rdata[7]) );
endmodule


module fifo_DATA_WIDTH8_NUM_ADDR_BITS4 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, RD_DATA, FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   internal_full, internal_empty, n1, n2;
  wire   [7:0] internal_rd_data;
  wire   [4:0] wq2_rptr;
  wire   [3:0] w_addr;
  wire   [4:0] w_ptr;
  wire   [4:0] rq2_wptr;
  wire   [3:0] r_addr;
  wire   [4:0] r_ptr;

  FIFO_WR_NUM_ADDR_BITS4 u_FIFO_WR ( .W_CLK(W_CLK), .W_RST(W_RST), .W_INC(
        W_INC), .wq_rptr(wq2_rptr), .wfull(internal_full), .w_addr(w_addr), 
        .w_ptr(w_ptr) );
  FIFO_RD_NUM_ADDR_BITS4 u_FIFO_RD ( .R_CLK(R_CLK), .R_RST(n1), .R_INC(R_INC), 
        .rq_wptr(rq2_wptr), .rempty(internal_empty), .r_addr(r_addr), .r_ptr(
        r_ptr) );
  DF_SYNC_NUM_ADDR_BITS4_0 u_DF_SYNC_W2R ( .clk(R_CLK), .rst_n(n1), 
        .unsynchronized_in(w_ptr), .synchronized_out(rq2_wptr) );
  DF_SYNC_NUM_ADDR_BITS4_1 u_DF_SYNC_R2W ( .clk(W_CLK), .rst_n(W_RST), 
        .unsynchronized_in(r_ptr), .synchronized_out(wq2_rptr) );
  fifo_mem_cntrl_DATA_WIDTH8_NUM_ADDR_BITS4 u_fifo_mem_cntrl ( .W_CLK(W_CLK), 
        .W_INC(W_INC), .wfull(internal_full), .w_addr(w_addr), .wdata(WR_DATA), 
        .r_addr(r_addr), .rdata(internal_rd_data) );
  DFFRQX1M \RD_DATA_reg[7]  ( .D(internal_rd_data[7]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[7]) );
  DFFRQX1M \RD_DATA_reg[6]  ( .D(internal_rd_data[6]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[6]) );
  DFFRQX1M \RD_DATA_reg[5]  ( .D(internal_rd_data[5]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[5]) );
  DFFRQX1M \RD_DATA_reg[4]  ( .D(internal_rd_data[4]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[4]) );
  DFFRQX1M \RD_DATA_reg[3]  ( .D(internal_rd_data[3]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[3]) );
  DFFRQX1M \RD_DATA_reg[2]  ( .D(internal_rd_data[2]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[2]) );
  DFFRQX1M \RD_DATA_reg[1]  ( .D(internal_rd_data[1]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[1]) );
  DFFRQX1M \RD_DATA_reg[0]  ( .D(internal_rd_data[0]), .CK(R_CLK), .RN(n1), 
        .Q(RD_DATA[0]) );
  DFFSQX2M EMPTY_reg ( .D(internal_empty), .CK(R_CLK), .SN(n1), .Q(EMPTY) );
  DFFRQX2M FULL_reg ( .D(internal_full), .CK(W_CLK), .RN(W_RST), .Q(FULL) );
  INVX6M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
endmodule


module rst_synchronizer_1 ( clk, rst, synch_rst );
  input clk, rst;
  output synch_rst;
  wire   \Q[0] ;

  DFFRQX2M \Q_reg[1]  ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(synch_rst) );
  DFFRQX2M \Q_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(\Q[0] ) );
endmodule


module clk_div_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module clk_div_0 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, o_div_clk );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output o_div_clk;
  wire   div_clk, clk_state, N10, N12, N13, N14, N15, N16, N17, N18, N23, N25,
         N26, N27, N28, N29, N30, N31, N33, N37, N38, N39, N40, N41, N42, N43,
         N44, N72, N73, N74, N75, N76, N77, N78, N79, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;
  wire   [7:0] counter;

  clk_div_0_DW01_inc_0 r75 ( .A(counter), .SUM({N44, N43, N42, N41, N40, N39, 
        N38, N37}) );
  DFFSQX2M div_clk_reg ( .D(n24), .CK(I_ref_clk), .SN(n3), .Q(div_clk) );
  DFFSQX2M clk_state_reg ( .D(n25), .CK(I_ref_clk), .SN(n3), .Q(clk_state) );
  DFFRQX2M \counter_reg[7]  ( .D(N79), .CK(I_ref_clk), .RN(n3), .Q(counter[7])
         );
  DFFRQX4M \counter_reg[1]  ( .D(N73), .CK(I_ref_clk), .RN(n3), .Q(counter[1])
         );
  DFFRQX4M \counter_reg[0]  ( .D(N72), .CK(I_ref_clk), .RN(n3), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[2]  ( .D(N74), .CK(I_ref_clk), .RN(n3), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N75), .CK(I_ref_clk), .RN(n3), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[4]  ( .D(N76), .CK(I_ref_clk), .RN(n3), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[5]  ( .D(N77), .CK(I_ref_clk), .RN(n3), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[6]  ( .D(N78), .CK(I_ref_clk), .RN(n3), .Q(counter[6])
         );
  AOI21BX2M U3 ( .A0(I_div_ratio[1]), .A1(I_div_ratio[2]), .B0N(n5), .Y(n1) );
  AOI21BX2M U4 ( .A0(I_div_ratio[1]), .A1(I_div_ratio[2]), .B0N(n10), .Y(n2)
         );
  NOR3X2M U5 ( .A(n52), .B(N30), .C(counter[7]), .Y(n58) );
  NOR3X4M U6 ( .A(I_div_ratio[6]), .B(I_div_ratio[7]), .C(n13), .Y(N30) );
  OAI211X4M U7 ( .A0(n16), .A1(n17), .B0(n18), .C0(I_clk_en), .Y(n15) );
  OAI2B1X2M U8 ( .A1N(n16), .A0(n17), .B0(n21), .Y(n23) );
  OAI22X4M U9 ( .A0(clk_state), .A1(N33), .B0(N31), .B1(n62), .Y(n16) );
  NOR3X2M U10 ( .A(n29), .B(N17), .C(counter[7]), .Y(n35) );
  NOR3X4M U11 ( .A(I_div_ratio[6]), .B(I_div_ratio[7]), .C(n8), .Y(N17) );
  NOR2X2M U12 ( .A(n38), .B(N10), .Y(n27) );
  NOR2BX2M U13 ( .AN(I_div_ratio[1]), .B(counter[0]), .Y(n40) );
  NOR2X2M U14 ( .A(n38), .B(N23), .Y(n50) );
  NOR2BX2M U15 ( .AN(counter[0]), .B(I_div_ratio[1]), .Y(n39) );
  CLKINVX2M U16 ( .A(n15), .Y(n61) );
  NOR2X2M U17 ( .A(n49), .B(n48), .Y(N33) );
  OR2X2M U18 ( .A(n12), .B(I_div_ratio[5]), .Y(n13) );
  OR2X2M U19 ( .A(n7), .B(I_div_ratio[5]), .Y(n8) );
  NAND2BX2M U20 ( .AN(I_div_ratio[2]), .B(N10), .Y(n5) );
  NAND2BX2M U21 ( .AN(I_div_ratio[2]), .B(N23), .Y(n10) );
  OR2X2M U22 ( .A(n11), .B(I_div_ratio[4]), .Y(n12) );
  OR2X2M U23 ( .A(n10), .B(I_div_ratio[3]), .Y(n11) );
  OR2X2M U24 ( .A(n6), .B(I_div_ratio[4]), .Y(n7) );
  OR2X2M U25 ( .A(n5), .B(I_div_ratio[3]), .Y(n6) );
  OAI2BB1XLM U26 ( .A0N(n5), .A1N(I_div_ratio[3]), .B0(n6), .Y(N12) );
  OAI2BB1XLM U27 ( .A0N(n10), .A1N(I_div_ratio[3]), .B0(n11), .Y(N25) );
  NOR2X2M U28 ( .A(n62), .B(n63), .Y(n14) );
  NAND2X4M U29 ( .A(n23), .B(I_clk_en), .Y(n22) );
  OAI22X1M U30 ( .A0(n62), .A1(n15), .B0(n61), .B1(n14), .Y(n25) );
  NAND2X2M U31 ( .A(N18), .B(n62), .Y(n18) );
  NOR2BX2M U32 ( .AN(N43), .B(n22), .Y(N78) );
  NOR2BX2M U33 ( .AN(N42), .B(n22), .Y(N77) );
  NOR2BX2M U34 ( .AN(N41), .B(n22), .Y(N76) );
  NOR2BX2M U35 ( .AN(N40), .B(n22), .Y(N75) );
  NOR2BX2M U36 ( .AN(N39), .B(n22), .Y(N74) );
  NOR2BX2M U37 ( .AN(N38), .B(n22), .Y(N73) );
  INVX6M U38 ( .A(n4), .Y(n3) );
  INVX2M U39 ( .A(I_rst_n), .Y(n4) );
  OAI2BB2X1M U40 ( .B0(n61), .B1(n14), .A0N(div_clk), .A1N(n61), .Y(n24) );
  AND3X2M U41 ( .A(n19), .B(I_clk_en), .C(N44), .Y(N79) );
  OAI211X2M U42 ( .A0(N31), .A1(n62), .B0(n20), .C0(n21), .Y(n19) );
  OR3X1M U43 ( .A(N33), .B(clk_state), .C(N18), .Y(n20) );
  NAND2BX2M U44 ( .AN(I_div_ratio[0]), .B(n18), .Y(n21) );
  NOR2BX2M U45 ( .AN(N37), .B(n22), .Y(N72) );
  NAND2X2M U46 ( .A(I_div_ratio[0]), .B(n18), .Y(n17) );
  INVX2M U47 ( .A(counter[0]), .Y(n38) );
  INVX4M U48 ( .A(clk_state), .Y(n62) );
  INVX2M U49 ( .A(I_div_ratio[1]), .Y(N10) );
  INVX2M U50 ( .A(I_div_ratio[1]), .Y(N23) );
  INVX2M U51 ( .A(I_clk_en), .Y(n63) );
  OAI2BB1X1M U52 ( .A0N(n6), .A1N(I_div_ratio[4]), .B0(n7), .Y(N13) );
  OAI2BB1X1M U53 ( .A0N(n7), .A1N(I_div_ratio[5]), .B0(n8), .Y(N14) );
  XNOR2X1M U54 ( .A(I_div_ratio[6]), .B(n8), .Y(N15) );
  OAI21X1M U55 ( .A0(I_div_ratio[6]), .A1(n8), .B0(I_div_ratio[7]), .Y(n9) );
  NAND2BX1M U56 ( .AN(N17), .B(n9), .Y(N16) );
  OAI2BB1X1M U57 ( .A0N(n11), .A1N(I_div_ratio[4]), .B0(n12), .Y(N26) );
  OAI2BB1X1M U58 ( .A0N(n12), .A1N(I_div_ratio[5]), .B0(n13), .Y(N27) );
  XNOR2X1M U59 ( .A(I_div_ratio[6]), .B(n13), .Y(N28) );
  OAI21X1M U60 ( .A0(I_div_ratio[6]), .A1(n13), .B0(I_div_ratio[7]), .Y(n26)
         );
  NAND2BX1M U61 ( .AN(N30), .B(n26), .Y(N29) );
  MX2X6M U62 ( .A(div_clk), .B(I_ref_clk), .S0(n63), .Y(o_div_clk) );
  XNOR2X1M U63 ( .A(N12), .B(counter[2]), .Y(n37) );
  OAI22X1M U64 ( .A0(counter[1]), .A1(n27), .B0(n27), .B1(n1), .Y(n36) );
  CLKNAND2X2M U65 ( .A(N10), .B(n38), .Y(n28) );
  AOI22X1M U66 ( .A0(n28), .A1(n1), .B0(n28), .B1(counter[1]), .Y(n29) );
  CLKXOR2X2M U67 ( .A(N13), .B(counter[3]), .Y(n33) );
  CLKXOR2X2M U68 ( .A(N14), .B(counter[4]), .Y(n32) );
  CLKXOR2X2M U69 ( .A(N15), .B(counter[5]), .Y(n31) );
  CLKXOR2X2M U70 ( .A(N16), .B(counter[6]), .Y(n30) );
  NOR4X1M U71 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n34) );
  AND4X1M U72 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N18) );
  OAI2B2X1M U73 ( .A1N(I_div_ratio[2]), .A0(n39), .B0(counter[1]), .B1(n39), 
        .Y(n43) );
  XNOR2X1M U74 ( .A(I_div_ratio[3]), .B(counter[2]), .Y(n42) );
  OAI2B2X1M U75 ( .A1N(counter[1]), .A0(n40), .B0(I_div_ratio[2]), .B1(n40), 
        .Y(n41) );
  NAND4BX1M U76 ( .AN(counter[7]), .B(n43), .C(n42), .D(n41), .Y(n49) );
  XNOR2X1M U77 ( .A(I_div_ratio[7]), .B(counter[6]), .Y(n47) );
  XNOR2X1M U78 ( .A(I_div_ratio[6]), .B(counter[5]), .Y(n46) );
  XNOR2X1M U79 ( .A(I_div_ratio[5]), .B(counter[4]), .Y(n45) );
  XNOR2X1M U80 ( .A(I_div_ratio[4]), .B(counter[3]), .Y(n44) );
  NAND4X1M U81 ( .A(n47), .B(n46), .C(n45), .D(n44), .Y(n48) );
  XNOR2X1M U82 ( .A(N25), .B(counter[2]), .Y(n60) );
  OAI22X1M U83 ( .A0(counter[1]), .A1(n50), .B0(n50), .B1(n2), .Y(n59) );
  CLKNAND2X2M U84 ( .A(N23), .B(n38), .Y(n51) );
  AOI22X1M U85 ( .A0(n51), .A1(n2), .B0(n51), .B1(counter[1]), .Y(n52) );
  CLKXOR2X2M U86 ( .A(N26), .B(counter[3]), .Y(n56) );
  CLKXOR2X2M U87 ( .A(N27), .B(counter[4]), .Y(n55) );
  CLKXOR2X2M U88 ( .A(N28), .B(counter[5]), .Y(n54) );
  CLKXOR2X2M U89 ( .A(N29), .B(counter[6]), .Y(n53) );
  NOR4X1M U90 ( .A(n56), .B(n55), .C(n54), .D(n53), .Y(n57) );
  AND4X1M U91 ( .A(n60), .B(n59), .C(n58), .D(n57), .Y(N31) );
endmodule


module clk_div_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module clk_div_1 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, o_div_clk );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output o_div_clk;
  wire   div_clk, clk_state, N10, N12, N13, N14, N15, N16, N17, N18, N23, N25,
         N26, N27, N28, N29, N30, N31, N33, N37, N38, N39, N40, N41, N42, N43,
         N44, N72, N73, N74, N75, N76, N77, N78, N79, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75;
  wire   [7:0] counter;

  clk_div_1_DW01_inc_0 r75 ( .A(counter), .SUM({N44, N43, N42, N41, N40, N39, 
        N38, N37}) );
  DFFSQX2M div_clk_reg ( .D(n65), .CK(I_ref_clk), .SN(n3), .Q(div_clk) );
  DFFSQX2M clk_state_reg ( .D(n64), .CK(I_ref_clk), .SN(n3), .Q(clk_state) );
  DFFRQX2M \counter_reg[7]  ( .D(N79), .CK(I_ref_clk), .RN(n3), .Q(counter[7])
         );
  DFFRQX4M \counter_reg[1]  ( .D(N73), .CK(I_ref_clk), .RN(n3), .Q(counter[1])
         );
  DFFRQX4M \counter_reg[0]  ( .D(N72), .CK(I_ref_clk), .RN(n3), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[2]  ( .D(N74), .CK(I_ref_clk), .RN(n3), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N75), .CK(I_ref_clk), .RN(n3), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[4]  ( .D(N76), .CK(I_ref_clk), .RN(n3), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[5]  ( .D(N77), .CK(I_ref_clk), .RN(n3), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[6]  ( .D(N78), .CK(I_ref_clk), .RN(n3), .Q(counter[6])
         );
  AOI21BX2M U3 ( .A0(I_div_ratio[1]), .A1(I_div_ratio[2]), .B0N(n5), .Y(n1) );
  AOI21BX2M U4 ( .A0(I_div_ratio[1]), .A1(I_div_ratio[2]), .B0N(n10), .Y(n2)
         );
  OAI211X4M U5 ( .A0(n73), .A1(n72), .B0(n71), .C0(I_clk_en), .Y(n74) );
  OAI2B1X2M U6 ( .A1N(n73), .A0(n72), .B0(n68), .Y(n66) );
  OAI22X4M U7 ( .A0(clk_state), .A1(N33), .B0(N31), .B1(n62), .Y(n73) );
  NOR3X2M U8 ( .A(n52), .B(N30), .C(counter[7]), .Y(n58) );
  NOR3X4M U9 ( .A(I_div_ratio[6]), .B(I_div_ratio[7]), .C(n13), .Y(N30) );
  NOR3X2M U10 ( .A(n29), .B(N17), .C(counter[7]), .Y(n35) );
  NOR3X4M U11 ( .A(I_div_ratio[6]), .B(I_div_ratio[7]), .C(n8), .Y(N17) );
  NOR2X2M U12 ( .A(n38), .B(N10), .Y(n27) );
  NOR2BX2M U13 ( .AN(I_div_ratio[1]), .B(counter[0]), .Y(n40) );
  NOR2X2M U14 ( .A(n38), .B(N23), .Y(n50) );
  NOR2BX2M U15 ( .AN(counter[0]), .B(I_div_ratio[1]), .Y(n39) );
  NAND2BX2M U16 ( .AN(I_div_ratio[2]), .B(N23), .Y(n10) );
  NAND2BX2M U17 ( .AN(I_div_ratio[2]), .B(N10), .Y(n5) );
  CLKINVX2M U18 ( .A(n74), .Y(n61) );
  NOR2X2M U19 ( .A(n49), .B(n48), .Y(N33) );
  OR2X2M U20 ( .A(n12), .B(I_div_ratio[5]), .Y(n13) );
  OR2X2M U21 ( .A(n7), .B(I_div_ratio[5]), .Y(n8) );
  OR2X2M U22 ( .A(n10), .B(I_div_ratio[3]), .Y(n11) );
  OR2X2M U23 ( .A(n5), .B(I_div_ratio[3]), .Y(n6) );
  OR2X2M U24 ( .A(n11), .B(I_div_ratio[4]), .Y(n12) );
  OR2X2M U25 ( .A(n6), .B(I_div_ratio[4]), .Y(n7) );
  OAI2BB1XLM U26 ( .A0N(n5), .A1N(I_div_ratio[3]), .B0(n6), .Y(N12) );
  OAI2BB1XLM U27 ( .A0N(n10), .A1N(I_div_ratio[3]), .B0(n11), .Y(N25) );
  NOR2X2M U28 ( .A(n62), .B(n63), .Y(n75) );
  NAND2X4M U29 ( .A(n66), .B(I_clk_en), .Y(n67) );
  NAND2BX2M U30 ( .AN(I_div_ratio[0]), .B(n71), .Y(n68) );
  NAND2X2M U31 ( .A(I_div_ratio[0]), .B(n71), .Y(n72) );
  INVX2M U32 ( .A(I_div_ratio[1]), .Y(N10) );
  INVX2M U33 ( .A(I_div_ratio[1]), .Y(N23) );
  OAI22X1M U34 ( .A0(n62), .A1(n74), .B0(n61), .B1(n75), .Y(n64) );
  NAND2X2M U35 ( .A(N18), .B(n62), .Y(n71) );
  NOR2BX2M U36 ( .AN(N43), .B(n67), .Y(N78) );
  NOR2BX2M U37 ( .AN(N42), .B(n67), .Y(N77) );
  NOR2BX2M U38 ( .AN(N41), .B(n67), .Y(N76) );
  NOR2BX2M U39 ( .AN(N40), .B(n67), .Y(N75) );
  NOR2BX2M U40 ( .AN(N39), .B(n67), .Y(N74) );
  NOR2BX2M U41 ( .AN(N38), .B(n67), .Y(N73) );
  INVX6M U42 ( .A(n4), .Y(n3) );
  INVX2M U43 ( .A(I_rst_n), .Y(n4) );
  OAI2BB2X1M U44 ( .B0(n61), .B1(n75), .A0N(div_clk), .A1N(n61), .Y(n65) );
  AND3X2M U45 ( .A(n70), .B(I_clk_en), .C(N44), .Y(N79) );
  OAI211X2M U46 ( .A0(N31), .A1(n62), .B0(n69), .C0(n68), .Y(n70) );
  OR3X1M U47 ( .A(N33), .B(clk_state), .C(N18), .Y(n69) );
  NOR2BX2M U48 ( .AN(N37), .B(n67), .Y(N72) );
  INVX2M U49 ( .A(counter[0]), .Y(n38) );
  INVX4M U50 ( .A(clk_state), .Y(n62) );
  INVX2M U51 ( .A(I_clk_en), .Y(n63) );
  OAI2BB1X1M U52 ( .A0N(n6), .A1N(I_div_ratio[4]), .B0(n7), .Y(N13) );
  OAI2BB1X1M U53 ( .A0N(n7), .A1N(I_div_ratio[5]), .B0(n8), .Y(N14) );
  XNOR2X1M U54 ( .A(I_div_ratio[6]), .B(n8), .Y(N15) );
  OAI21X1M U55 ( .A0(I_div_ratio[6]), .A1(n8), .B0(I_div_ratio[7]), .Y(n9) );
  NAND2BX1M U56 ( .AN(N17), .B(n9), .Y(N16) );
  OAI2BB1X1M U57 ( .A0N(n11), .A1N(I_div_ratio[4]), .B0(n12), .Y(N26) );
  OAI2BB1X1M U58 ( .A0N(n12), .A1N(I_div_ratio[5]), .B0(n13), .Y(N27) );
  XNOR2X1M U59 ( .A(I_div_ratio[6]), .B(n13), .Y(N28) );
  OAI21X1M U60 ( .A0(I_div_ratio[6]), .A1(n13), .B0(I_div_ratio[7]), .Y(n26)
         );
  NAND2BX1M U61 ( .AN(N30), .B(n26), .Y(N29) );
  MX2X6M U62 ( .A(div_clk), .B(I_ref_clk), .S0(n63), .Y(o_div_clk) );
  XNOR2X1M U63 ( .A(N12), .B(counter[2]), .Y(n37) );
  OAI22X1M U64 ( .A0(counter[1]), .A1(n27), .B0(n27), .B1(n1), .Y(n36) );
  CLKNAND2X2M U65 ( .A(N10), .B(n38), .Y(n28) );
  AOI22X1M U66 ( .A0(n28), .A1(n1), .B0(n28), .B1(counter[1]), .Y(n29) );
  CLKXOR2X2M U67 ( .A(N13), .B(counter[3]), .Y(n33) );
  CLKXOR2X2M U68 ( .A(N14), .B(counter[4]), .Y(n32) );
  CLKXOR2X2M U69 ( .A(N15), .B(counter[5]), .Y(n31) );
  CLKXOR2X2M U70 ( .A(N16), .B(counter[6]), .Y(n30) );
  NOR4X1M U71 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n34) );
  AND4X1M U72 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N18) );
  OAI2B2X1M U73 ( .A1N(I_div_ratio[2]), .A0(n39), .B0(counter[1]), .B1(n39), 
        .Y(n43) );
  XNOR2X1M U74 ( .A(I_div_ratio[3]), .B(counter[2]), .Y(n42) );
  OAI2B2X1M U75 ( .A1N(counter[1]), .A0(n40), .B0(I_div_ratio[2]), .B1(n40), 
        .Y(n41) );
  NAND4BX1M U76 ( .AN(counter[7]), .B(n43), .C(n42), .D(n41), .Y(n49) );
  XNOR2X1M U77 ( .A(I_div_ratio[7]), .B(counter[6]), .Y(n47) );
  XNOR2X1M U78 ( .A(I_div_ratio[6]), .B(counter[5]), .Y(n46) );
  XNOR2X1M U79 ( .A(I_div_ratio[5]), .B(counter[4]), .Y(n45) );
  XNOR2X1M U80 ( .A(I_div_ratio[4]), .B(counter[3]), .Y(n44) );
  NAND4X1M U81 ( .A(n47), .B(n46), .C(n45), .D(n44), .Y(n48) );
  XNOR2X1M U82 ( .A(N25), .B(counter[2]), .Y(n60) );
  OAI22X1M U83 ( .A0(counter[1]), .A1(n50), .B0(n50), .B1(n2), .Y(n59) );
  CLKNAND2X2M U84 ( .A(N23), .B(n38), .Y(n51) );
  AOI22X1M U85 ( .A0(n51), .A1(n2), .B0(n51), .B1(counter[1]), .Y(n52) );
  CLKXOR2X2M U86 ( .A(N26), .B(counter[3]), .Y(n56) );
  CLKXOR2X2M U87 ( .A(N27), .B(counter[4]), .Y(n55) );
  CLKXOR2X2M U88 ( .A(N28), .B(counter[5]), .Y(n54) );
  CLKXOR2X2M U89 ( .A(N29), .B(counter[6]), .Y(n53) );
  NOR4X1M U90 ( .A(n56), .B(n55), .C(n54), .D(n53), .Y(n57) );
  AND4X1M U91 ( .A(n60), .B(n59), .C(n58), .D(n57), .Y(N31) );
endmodule


module rx_DATA_WIDTH8 ( clk, rst, par_type, par_en, rx_in, Prescale, 
        parity_err, stop_err, data_valid, p_data );
  input [5:0] Prescale;
  output [7:0] p_data;
  input clk, rst, par_type, par_en, rx_in;
  output parity_err, stop_err, data_valid;
  wire   n137, N18, N19, N20, N21, N22, N23, N24, edge_max, N29, N68, N69, N70,
         N71, N72, N73, N95, N96, N97, N98, N99, N100, N104, N105, N106, N107,
         N108, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, \add_217/carry[4] , \add_217/carry[3] ,
         \add_217/carry[2] , \add_191/carry[5] , \add_191/carry[4] ,
         \add_191/carry[3] , \add_191/carry[2] , n1, n2, n3, n4, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136;
  wire   [5:0] edg_cnt;
  wire   [2:0] current_state;
  wire   [3:0] bit_cnt;
  wire   [2:0] samples;

  DFFSQX2M \p_data_reg[0]  ( .D(n85), .CK(clk), .SN(n8), .Q(p_data[0]) );
  DFFSQX2M \p_data_reg[4]  ( .D(n89), .CK(clk), .SN(n8), .Q(p_data[4]) );
  DFFSQX2M \p_data_reg[2]  ( .D(n87), .CK(clk), .SN(n8), .Q(p_data[2]) );
  DFFSQX2M \p_data_reg[1]  ( .D(n86), .CK(clk), .SN(n8), .Q(p_data[1]) );
  DFFSQX2M \p_data_reg[3]  ( .D(n88), .CK(clk), .SN(n8), .Q(p_data[3]) );
  DFFSQX2M \samples_reg[0]  ( .D(n110), .CK(clk), .SN(n8), .Q(samples[0]) );
  DFFSQX2M \samples_reg[1]  ( .D(n96), .CK(clk), .SN(n8), .Q(samples[1]) );
  DFFSQX2M \samples_reg[2]  ( .D(n95), .CK(clk), .SN(n9), .Q(samples[2]) );
  DFFRQX4M \edg_cnt_reg[3]  ( .D(n103), .CK(clk), .RN(n9), .Q(edg_cnt[3]) );
  DFFRQX4M \edg_cnt_reg[2]  ( .D(n104), .CK(clk), .RN(n9), .Q(edg_cnt[2]) );
  DFFRQX4M \edg_cnt_reg[4]  ( .D(n102), .CK(clk), .RN(n9), .Q(edg_cnt[4]) );
  DFFRQX4M \edg_cnt_reg[5]  ( .D(n101), .CK(clk), .RN(n9), .Q(edg_cnt[5]) );
  DFFRQX4M \edg_cnt_reg[1]  ( .D(n106), .CK(clk), .RN(n10), .Q(edg_cnt[1]) );
  DFFRQX1M \edg_cnt_reg[0]  ( .D(n105), .CK(clk), .RN(n9), .Q(edg_cnt[0]) );
  DFFRQX1M \current_state_reg[2]  ( .D(n109), .CK(clk), .RN(n9), .Q(
        current_state[2]) );
  DFFRQX1M data_valid_reg ( .D(N29), .CK(clk), .RN(n9), .Q(data_valid) );
  DFFSQX2M \p_data_reg[6]  ( .D(n91), .CK(clk), .SN(n8), .Q(p_data[6]) );
  DFFSQX2M \p_data_reg[5]  ( .D(n90), .CK(clk), .SN(n8), .Q(p_data[5]) );
  DFFRQX2M str_err_reg ( .D(n94), .CK(clk), .RN(n8), .Q(n136) );
  DFFSX1M \p_data_reg[7]  ( .D(n92), .CK(clk), .SN(n8), .Q(p_data[7]), .QN(n73) );
  DFFRX4M \current_state_reg[1]  ( .D(n108), .CK(clk), .RN(n9), .Q(
        current_state[1]), .QN(n122) );
  DFFRX4M \current_state_reg[0]  ( .D(n107), .CK(clk), .RN(n10), .Q(
        current_state[0]), .QN(n123) );
  DFFRQX4M \bit_cnt_reg[1]  ( .D(n98), .CK(clk), .RN(n9), .Q(bit_cnt[1]) );
  DFFRQX4M stop_err_reg ( .D(n93), .CK(clk), .RN(n8), .Q(stop_err) );
  DFFRQX1M parity_err_reg ( .D(n84), .CK(clk), .RN(n8), .Q(n137) );
  DFFRX4M \bit_cnt_reg[0]  ( .D(n99), .CK(clk), .RN(n9), .Q(bit_cnt[0]), .QN(
        n129) );
  DFFRX4M \bit_cnt_reg[3]  ( .D(n100), .CK(clk), .RN(n9), .Q(bit_cnt[3]) );
  DFFRQX1M \bit_cnt_reg[2]  ( .D(n97), .CK(clk), .RN(n9), .Q(bit_cnt[2]) );
  NOR2X8M U3 ( .A(n77), .B(n67), .Y(n74) );
  OR4X1M U4 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n1) );
  INVXLM U5 ( .A(bit_cnt[2]), .Y(n2) );
  INVX4M U6 ( .A(n2), .Y(n3) );
  NOR4X1M U7 ( .A(n135), .B(n136), .C(stop_err), .D(parity_err), .Y(N29) );
  MXI2XLM U8 ( .A(n35), .B(n36), .S0(bit_cnt[0]), .Y(n99) );
  NOR3X2M U9 ( .A(bit_cnt[0]), .B(n3), .C(bit_cnt[1]), .Y(n126) );
  INVXLM U10 ( .A(n137), .Y(n4) );
  INVX4M U11 ( .A(n4), .Y(parity_err) );
  NAND3XLM U12 ( .A(n43), .B(bit_cnt[1]), .C(n3), .Y(n132) );
  NOR3X6M U13 ( .A(n122), .B(current_state[2]), .C(n123), .Y(n81) );
  NOR2X2M U14 ( .A(n118), .B(n6), .Y(n115) );
  NOR3X4M U15 ( .A(current_state[0]), .B(current_state[1]), .C(n116), .Y(n134)
         );
  INVX4M U16 ( .A(current_state[2]), .Y(n116) );
  OAI32X2M U17 ( .A0(n118), .A1(n68), .A2(n71), .B0(n121), .B1(n122), .Y(n108)
         );
  ADDFX4M U18 ( .A(samples[0]), .B(samples[2]), .CI(samples[1]), .CO(n71) );
  NOR4X4M U19 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(edge_max) );
  NOR2BX2M U20 ( .AN(n134), .B(n67), .Y(n72) );
  NOR3X4M U21 ( .A(Prescale[4]), .B(Prescale[5]), .C(n16), .Y(N100) );
  NAND2X3M U22 ( .A(n6), .B(n69), .Y(n131) );
  NAND2X2M U23 ( .A(stop_err), .B(n69), .Y(n70) );
  OAI21X4M U24 ( .A0(n6), .A1(n67), .B0(n69), .Y(n36) );
  NAND3X3M U25 ( .A(n122), .B(n116), .C(n123), .Y(n69) );
  AO21X2M U26 ( .A0(rx_in), .A1(n127), .B0(n128), .Y(n118) );
  AO2B2X2M U27 ( .B0(N70), .B1(n128), .A0(edg_cnt[2]), .A1N(n131), .Y(n104) );
  AO2B2X2M U28 ( .B0(N71), .B1(n128), .A0(edg_cnt[3]), .A1N(n131), .Y(n103) );
  AO2B2X2M U29 ( .B0(N72), .B1(n128), .A0(edg_cnt[4]), .A1N(n131), .Y(n102) );
  AO2B2X2M U30 ( .B0(N73), .B1(n128), .A0(edg_cnt[5]), .A1N(n131), .Y(n101) );
  AO2B2X2M U31 ( .B0(N68), .B1(n128), .A0(n7), .A1N(n131), .Y(n105) );
  NOR2X8M U32 ( .A(edge_max), .B(n6), .Y(n128) );
  CLKINVX3M U33 ( .A(edge_max), .Y(n67) );
  NOR2X2M U34 ( .A(n14), .B(Prescale[5]), .Y(N24) );
  INVX2M U35 ( .A(n6), .Y(n37) );
  INVX2M U36 ( .A(n77), .Y(n120) );
  NOR2BX2M U37 ( .AN(N18), .B(n7), .Y(n18) );
  NOR2BX2M U38 ( .AN(n7), .B(N18), .Y(n19) );
  NOR2BX2M U39 ( .AN(N95), .B(n7), .Y(n28) );
  NOR2BX2M U40 ( .AN(n7), .B(N95), .Y(n27) );
  AND3XLM U41 ( .A(par_en), .B(n120), .C(bit_cnt[3]), .Y(n125) );
  NAND4X2M U42 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n44) );
  NAND4X2M U43 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n55) );
  NAND3X2M U44 ( .A(n123), .B(n116), .C(current_state[1]), .Y(n77) );
  NAND3X2M U45 ( .A(n122), .B(n116), .C(current_state[0]), .Y(n68) );
  OAI21X2M U46 ( .A0(bit_cnt[1]), .A1(n6), .B0(n39), .Y(n42) );
  MX2XLM U47 ( .A(p_data[0]), .B(p_data[1]), .S0(n74), .Y(n85) );
  MX2XLM U48 ( .A(p_data[1]), .B(p_data[2]), .S0(n74), .Y(n86) );
  MX2XLM U49 ( .A(p_data[2]), .B(p_data[3]), .S0(n74), .Y(n87) );
  MX2XLM U50 ( .A(p_data[3]), .B(p_data[4]), .S0(n74), .Y(n88) );
  MX2XLM U51 ( .A(p_data[4]), .B(p_data[5]), .S0(n74), .Y(n89) );
  NAND2XLM U52 ( .A(n36), .B(n37), .Y(n35) );
  NAND2XLM U53 ( .A(n72), .B(n71), .Y(n135) );
  NAND2XLM U54 ( .A(n136), .B(n69), .Y(n64) );
  NAND2XLM U55 ( .A(parity_err), .B(n69), .Y(n78) );
  NOR3X2M U56 ( .A(n61), .B(n62), .C(n63), .Y(n60) );
  NOR3X2M U57 ( .A(n52), .B(edg_cnt[5]), .C(n53), .Y(n51) );
  NOR3X2M U58 ( .A(bit_cnt[1]), .B(par_en), .C(n3), .Y(n130) );
  OR2X2M U59 ( .A(n15), .B(Prescale[3]), .Y(n16) );
  NAND2BX2M U60 ( .AN(Prescale[1]), .B(N18), .Y(n11) );
  NAND2BX2M U61 ( .AN(Prescale[2]), .B(N95), .Y(n15) );
  OR2X2M U62 ( .A(n13), .B(Prescale[4]), .Y(n14) );
  OR2X2M U63 ( .A(n11), .B(Prescale[2]), .Y(n12) );
  OR2X2M U64 ( .A(n12), .B(Prescale[3]), .Y(n13) );
  OAI2BB1XLM U65 ( .A0N(n13), .A1N(Prescale[4]), .B0(n14), .Y(N22) );
  OAI2BB1XLM U66 ( .A0N(n12), .A1N(Prescale[3]), .B0(n13), .Y(N21) );
  OAI2BB1XLM U67 ( .A0N(n11), .A1N(Prescale[2]), .B0(n12), .Y(N20) );
  CLKBUFX8M U68 ( .A(n10), .Y(n9) );
  BUFX6M U69 ( .A(n10), .Y(n8) );
  BUFX2M U70 ( .A(rst), .Y(n10) );
  CLKBUFX6M U71 ( .A(n47), .Y(n6) );
  NOR4BX1M U72 ( .AN(n68), .B(n134), .C(n81), .D(n120), .Y(n47) );
  INVX2M U73 ( .A(n7), .Y(N68) );
  CLKBUFX6M U74 ( .A(edg_cnt[0]), .Y(n7) );
  ADDHX1M U75 ( .A(edg_cnt[1]), .B(n7), .CO(\add_191/carry[2] ), .S(N69) );
  ADDHX1M U76 ( .A(edg_cnt[2]), .B(\add_191/carry[2] ), .CO(\add_191/carry[3] ), .S(N70) );
  ADDHX1M U77 ( .A(edg_cnt[3]), .B(\add_191/carry[3] ), .CO(\add_191/carry[4] ), .S(N71) );
  ADDHX1M U78 ( .A(edg_cnt[4]), .B(\add_191/carry[4] ), .CO(\add_191/carry[5] ), .S(N72) );
  INVX2M U79 ( .A(Prescale[1]), .Y(N95) );
  INVX2M U80 ( .A(Prescale[0]), .Y(N18) );
  ADDHX1M U81 ( .A(Prescale[4]), .B(\add_217/carry[3] ), .CO(
        \add_217/carry[4] ), .S(N106) );
  ADDHX1M U82 ( .A(Prescale[3]), .B(\add_217/carry[2] ), .CO(
        \add_217/carry[3] ), .S(N105) );
  ADDHX1M U83 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\add_217/carry[2] ), .S(
        N104) );
  ADDHX1M U84 ( .A(Prescale[5]), .B(\add_217/carry[4] ), .CO(N108), .S(N107)
         );
  OAI2BB1X1M U85 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n11), .Y(N19) );
  AO21XLM U86 ( .A0(n14), .A1(Prescale[5]), .B0(N24), .Y(N23) );
  CLKXOR2X2M U87 ( .A(\add_191/carry[5] ), .B(edg_cnt[5]), .Y(N73) );
  OAI2BB1X1M U88 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n15), .Y(N96) );
  OAI2BB1X1M U89 ( .A0N(n15), .A1N(Prescale[3]), .B0(n16), .Y(N97) );
  XNOR2X1M U90 ( .A(Prescale[4]), .B(n16), .Y(N98) );
  OAI21X1M U91 ( .A0(Prescale[4]), .A1(n16), .B0(Prescale[5]), .Y(n17) );
  NAND2BX1M U92 ( .AN(N100), .B(n17), .Y(N99) );
  OAI2B2X1M U93 ( .A1N(edg_cnt[1]), .A0(n18), .B0(N19), .B1(n18), .Y(n22) );
  XNOR2X1M U94 ( .A(N23), .B(edg_cnt[5]), .Y(n21) );
  OAI2B2X1M U95 ( .A1N(N19), .A0(n19), .B0(edg_cnt[1]), .B1(n19), .Y(n20) );
  NAND4BX1M U96 ( .AN(N24), .B(n22), .C(n21), .D(n20), .Y(n26) );
  CLKXOR2X2M U97 ( .A(N22), .B(edg_cnt[4]), .Y(n25) );
  CLKXOR2X2M U98 ( .A(N20), .B(edg_cnt[2]), .Y(n24) );
  CLKXOR2X2M U99 ( .A(N21), .B(edg_cnt[3]), .Y(n23) );
  OAI2B2X1M U100 ( .A1N(N96), .A0(n27), .B0(edg_cnt[1]), .B1(n27), .Y(n30) );
  OAI2B2X1M U101 ( .A1N(edg_cnt[1]), .A0(n28), .B0(N96), .B1(n28), .Y(n29) );
  NAND4BBX1M U102 ( .AN(N100), .BN(edg_cnt[5]), .C(n30), .D(n29), .Y(n34) );
  CLKXOR2X2M U103 ( .A(N99), .B(edg_cnt[4]), .Y(n33) );
  CLKXOR2X2M U104 ( .A(N97), .B(edg_cnt[2]), .Y(n32) );
  CLKXOR2X2M U105 ( .A(N98), .B(edg_cnt[3]), .Y(n31) );
  MXI2X1M U106 ( .A(n38), .B(n39), .S0(bit_cnt[1]), .Y(n98) );
  MXI2X1M U107 ( .A(n40), .B(n41), .S0(n3), .Y(n97) );
  CLKINVX1M U108 ( .A(n42), .Y(n41) );
  CLKNAND2X2M U109 ( .A(n43), .B(bit_cnt[1]), .Y(n40) );
  OAI21X1M U110 ( .A0(n44), .A1(n45), .B0(n46), .Y(n96) );
  OAI21X1M U111 ( .A0(n6), .A1(n44), .B0(samples[1]), .Y(n46) );
  CLKXOR2X2M U112 ( .A(n7), .B(Prescale[1]), .Y(n53) );
  CLKXOR2X2M U113 ( .A(edg_cnt[4]), .B(Prescale[5]), .Y(n52) );
  XNOR2X1M U114 ( .A(edg_cnt[2]), .B(Prescale[3]), .Y(n50) );
  XNOR2X1M U115 ( .A(edg_cnt[3]), .B(Prescale[4]), .Y(n49) );
  CLKXOR2X2M U116 ( .A(n54), .B(Prescale[2]), .Y(n48) );
  OAI21X1M U117 ( .A0(n45), .A1(n55), .B0(n56), .Y(n95) );
  OAI21X1M U118 ( .A0(n6), .A1(n55), .B0(samples[2]), .Y(n56) );
  CLKXOR2X2M U119 ( .A(edg_cnt[4]), .B(N107), .Y(n63) );
  CLKXOR2X2M U120 ( .A(edg_cnt[1]), .B(N104), .Y(n62) );
  CLKXOR2X2M U121 ( .A(n7), .B(N95), .Y(n61) );
  XNOR2X1M U122 ( .A(edg_cnt[2]), .B(N105), .Y(n59) );
  XNOR2X1M U123 ( .A(edg_cnt[3]), .B(N106), .Y(n58) );
  XNOR2X1M U124 ( .A(edg_cnt[5]), .B(N108), .Y(n57) );
  MXI2X1M U125 ( .A(n64), .B(n65), .S0(n66), .Y(n94) );
  NOR2X1M U126 ( .A(n67), .B(n68), .Y(n66) );
  MXI2X1M U127 ( .A(n70), .B(n71), .S0(n72), .Y(n93) );
  MXI2X1M U128 ( .A(n73), .B(n65), .S0(n74), .Y(n92) );
  CLKINVX1M U129 ( .A(n71), .Y(n65) );
  MXI2X1M U130 ( .A(n75), .B(n73), .S0(n74), .Y(n91) );
  MXI2X1M U131 ( .A(n76), .B(n75), .S0(n74), .Y(n90) );
  CLKINVX1M U132 ( .A(p_data[6]), .Y(n75) );
  MXI2X1M U133 ( .A(n78), .B(n79), .S0(n80), .Y(n84) );
  NOR2BX1M U134 ( .AN(n81), .B(n67), .Y(n80) );
  XOR3XLM U135 ( .A(n82), .B(n76), .C(n83), .Y(n79) );
  XOR3XLM U136 ( .A(n111), .B(n112), .C(n113), .Y(n83) );
  XOR3XLM U137 ( .A(p_data[1]), .B(p_data[0]), .C(n71), .Y(n113) );
  CLKXOR2X2M U138 ( .A(p_data[3]), .B(p_data[2]), .Y(n112) );
  CLKXOR2X2M U139 ( .A(par_type), .B(p_data[4]), .Y(n111) );
  CLKINVX1M U140 ( .A(p_data[5]), .Y(n76) );
  CLKXOR2X2M U141 ( .A(p_data[7]), .B(p_data[6]), .Y(n82) );
  OAI21X1M U142 ( .A0(n45), .A1(n1), .B0(n114), .Y(n110) );
  OAI21X1M U143 ( .A0(n6), .A1(n1), .B0(samples[0]), .Y(n114) );
  CLKNAND2X2M U144 ( .A(rx_in), .B(n37), .Y(n45) );
  OAI22X1M U145 ( .A0(n115), .A1(n116), .B0(n117), .B1(n118), .Y(n109) );
  AOI21X1M U146 ( .A0(n119), .A1(n120), .B0(n81), .Y(n117) );
  OAI22X1M U147 ( .A0(n121), .A1(n123), .B0(n124), .B1(n118), .Y(n107) );
  AOI21X1M U148 ( .A0(n125), .A1(n126), .B0(n127), .Y(n124) );
  OA21X1M U149 ( .A0(n119), .A1(n77), .B0(n115), .Y(n121) );
  CLKINVX1M U150 ( .A(n69), .Y(n127) );
  AND3X1M U151 ( .A(bit_cnt[3]), .B(n129), .C(n130), .Y(n119) );
  OAI2BB2X1M U152 ( .B0(n54), .B1(n131), .A0N(N69), .A1N(n128), .Y(n106) );
  CLKINVX1M U153 ( .A(edg_cnt[1]), .Y(n54) );
  MXI2X1M U154 ( .A(n132), .B(n133), .S0(bit_cnt[3]), .Y(n100) );
  AOI2BB1X1M U155 ( .A0N(n3), .A1N(n6), .B0(n42), .Y(n133) );
  AOI21BX1M U156 ( .A0(n129), .A1(n37), .B0N(n36), .Y(n39) );
  CLKINVX1M U157 ( .A(n38), .Y(n43) );
  NAND3X1M U158 ( .A(n36), .B(n37), .C(bit_cnt[0]), .Y(n38) );
endmodule


module Tx_DATA_WIDTH8 ( clk, rst, par_type, par_enable, data_valid, p_data, 
        tx_out, busy );
  input [7:0] p_data;
  input clk, rst, par_type, par_enable, data_valid;
  output tx_out, busy;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n1, n2, n3, n4, n5, n6, n7, n8, n54, n55, n56, n57,
         n58, n59;
  wire   [7:0] shift_reg;
  wire   [2:0] count;
  wire   [2:0] current_state;

  OAI22X8M U38 ( .A0(data_valid), .A1(n11), .B0(n36), .B1(n54), .Y(n33) );
  DFFRQX1M \count_reg[2]  ( .D(n48), .CK(clk), .RN(n5), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n49), .CK(clk), .RN(n4), .Q(count[1]) );
  DFFRQX1M \shift_reg_reg[7]  ( .D(n40), .CK(clk), .RN(n4), .Q(shift_reg[7])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n42), .CK(clk), .RN(n4), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n47), .CK(clk), .RN(n4), .Q(shift_reg[1])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n43), .CK(clk), .RN(n4), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[0]  ( .D(n46), .CK(clk), .RN(n4), .Q(shift_reg[0])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n44), .CK(clk), .RN(n4), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n41), .CK(clk), .RN(n4), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n45), .CK(clk), .RN(n4), .Q(shift_reg[2])
         );
  DFFRQX2M \current_state_reg[0]  ( .D(n53), .CK(clk), .RN(n4), .Q(
        current_state[0]) );
  DFFRQX4M \current_state_reg[2]  ( .D(n51), .CK(clk), .RN(n5), .Q(
        current_state[2]) );
  DFFRQX2M \count_reg[0]  ( .D(n50), .CK(clk), .RN(n4), .Q(count[0]) );
  DFFRQX1M \current_state_reg[1]  ( .D(n52), .CK(clk), .RN(n4), .Q(
        current_state[1]) );
  NAND2X2M U3 ( .A(n39), .B(n8), .Y(n11) );
  INVX2M U4 ( .A(current_state[1]), .Y(n55) );
  NOR2X2M U5 ( .A(current_state[1]), .B(current_state[2]), .Y(n39) );
  INVX2M U6 ( .A(current_state[0]), .Y(n8) );
  NAND3X2M U7 ( .A(n8), .B(n55), .C(current_state[2]), .Y(n9) );
  BUFX4M U8 ( .A(n20), .Y(n3) );
  NOR2BX4M U9 ( .AN(n10), .B(n33), .Y(n31) );
  NAND2BX2M U10 ( .AN(n2), .B(n54), .Y(n20) );
  INVX6M U11 ( .A(n6), .Y(n4) );
  INVX2M U12 ( .A(n6), .Y(n5) );
  NAND4X4M U13 ( .A(n7), .B(n54), .C(n9), .D(n38), .Y(n10) );
  AND2X2M U14 ( .A(n34), .B(n11), .Y(n38) );
  INVX2M U15 ( .A(n13), .Y(n7) );
  INVX6M U16 ( .A(n1), .Y(n54) );
  NAND4X4M U17 ( .A(n54), .B(n10), .C(n7), .D(n37), .Y(busy) );
  AND2X2M U18 ( .A(n9), .B(n34), .Y(n37) );
  NOR3X2M U19 ( .A(n59), .B(n57), .C(n58), .Y(n36) );
  OAI221X1M U20 ( .A0(n11), .A1(n33), .B0(n31), .B1(n8), .C0(n35), .Y(n53) );
  OAI211X2M U21 ( .A0(n31), .A1(n55), .B0(n34), .C0(n35), .Y(n52) );
  CLKBUFX6M U22 ( .A(n21), .Y(n2) );
  NOR2BX2M U23 ( .AN(data_valid), .B(busy), .Y(n21) );
  INVX2M U24 ( .A(rst), .Y(n6) );
  NOR3X6M U25 ( .A(n55), .B(current_state[2]), .C(n8), .Y(n13) );
  NAND4X4M U26 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(tx_out) );
  AOI22X1M U27 ( .A0(n13), .A1(n14), .B0(n1), .B1(shift_reg[0]), .Y(n12) );
  XOR3XLM U28 ( .A(n16), .B(n17), .C(par_type), .Y(n14) );
  XOR3XLM U29 ( .A(shift_reg[5]), .B(shift_reg[4]), .C(n19), .Y(n16) );
  XNOR2X2M U30 ( .A(n56), .B(shift_reg[6]), .Y(n19) );
  CLKBUFX6M U31 ( .A(n15), .Y(n1) );
  NOR3X2M U32 ( .A(current_state[0]), .B(current_state[2]), .C(n55), .Y(n15)
         );
  XOR3XLM U33 ( .A(shift_reg[1]), .B(shift_reg[0]), .C(n18), .Y(n17) );
  CLKXOR2X2M U34 ( .A(shift_reg[3]), .B(shift_reg[2]), .Y(n18) );
  INVX2M U35 ( .A(shift_reg[7]), .Y(n56) );
  NAND2X2M U36 ( .A(n39), .B(current_state[0]), .Y(n34) );
  OAI32X2M U37 ( .A0(n57), .A1(count[1]), .A2(n54), .B0(n29), .B1(n58), .Y(n49) );
  NAND3BX2M U39 ( .AN(n33), .B(n1), .C(par_enable), .Y(n35) );
  OAI22X1M U40 ( .A0(n29), .A1(n59), .B0(n30), .B1(n54), .Y(n48) );
  AOI32X1M U41 ( .A0(count[0]), .A1(n59), .A2(count[1]), .B0(count[2]), .B1(
        n58), .Y(n30) );
  OA21X2M U42 ( .A0(count[0]), .A1(n54), .B0(n3), .Y(n29) );
  OAI2B2X1M U43 ( .A1N(current_state[2]), .A0(n31), .B0(n32), .B1(n33), .Y(n51) );
  AOI2BB1X2M U44 ( .A0N(par_enable), .A1N(n54), .B0(n13), .Y(n32) );
  OAI22X1M U45 ( .A0(n20), .A1(n57), .B0(count[0]), .B1(n54), .Y(n50) );
  OAI2B1X2M U46 ( .A1N(shift_reg[2]), .A0(n20), .B0(n26), .Y(n45) );
  AOI22X1M U47 ( .A0(p_data[2]), .A1(n2), .B0(n1), .B1(shift_reg[3]), .Y(n26)
         );
  OAI2B1X2M U48 ( .A1N(shift_reg[6]), .A0(n3), .B0(n22), .Y(n41) );
  AOI22X1M U49 ( .A0(p_data[6]), .A1(n2), .B0(n1), .B1(shift_reg[7]), .Y(n22)
         );
  OAI2B1X2M U50 ( .A1N(shift_reg[0]), .A0(n3), .B0(n27), .Y(n46) );
  AOI22X1M U51 ( .A0(p_data[0]), .A1(n2), .B0(n1), .B1(shift_reg[1]), .Y(n27)
         );
  OAI2B1X2M U52 ( .A1N(shift_reg[1]), .A0(n3), .B0(n28), .Y(n47) );
  AOI22X1M U53 ( .A0(p_data[1]), .A1(n2), .B0(n1), .B1(shift_reg[2]), .Y(n28)
         );
  OAI2B1X2M U54 ( .A1N(shift_reg[3]), .A0(n3), .B0(n25), .Y(n44) );
  AOI22X1M U55 ( .A0(p_data[3]), .A1(n2), .B0(n1), .B1(shift_reg[4]), .Y(n25)
         );
  OAI2B1X2M U56 ( .A1N(shift_reg[4]), .A0(n3), .B0(n24), .Y(n43) );
  AOI22X1M U57 ( .A0(p_data[4]), .A1(n2), .B0(n1), .B1(shift_reg[5]), .Y(n24)
         );
  OAI2B1X2M U58 ( .A1N(shift_reg[5]), .A0(n3), .B0(n23), .Y(n42) );
  AOI22X1M U59 ( .A0(p_data[5]), .A1(n2), .B0(n1), .B1(shift_reg[6]), .Y(n23)
         );
  OAI2BB2X1M U60 ( .B0(n56), .B1(n20), .A0N(p_data[7]), .A1N(n2), .Y(n40) );
  INVX2M U61 ( .A(count[0]), .Y(n57) );
  INVX2M U62 ( .A(count[1]), .Y(n58) );
  INVX2M U63 ( .A(count[2]), .Y(n59) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   sig_delay;

  DFFRQX1M sig_delay_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(sig_delay) );
  NOR2BX4M U3 ( .AN(sig_delay), .B(LVL_SIG), .Y(PULSE_SIG) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERR, STP_ERR );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PAR_ERR, STP_ERR;
  wire   sync_rst_1, clk_en, alu_clk, rf_wr_en, rf_rd_en, rf_rd_valid, alu_en,
         alu_out_valid, sync_rx_d_vld, fifo_full, tx_d_vld_ctrl, rx_data_vld,
         sync_rst_2, fifo_rd_wait, tx_rx_clk, fifo_rd_inc, fifo_empty, rx_clk,
         _0_net_, tx_busy, n1, n2, n3, n4, n5, n6, n7;
  wire   [1:0] reg2_uart_cfg;
  wire   [5:0] uart_prescale;
  wire   [3:0] rf_addr;
  wire   [7:0] rf_wr_data;
  wire   [7:0] rf_rd_data;
  wire   [7:0] reg0_op_a;
  wire   [7:0] reg1_op_b;
  wire   [7:0] reg3_div_ratio;
  wire   [3:0] alu_fun;
  wire   [15:0] alu_out;
  wire   [7:0] sync_rx_p_data;
  wire   [7:0] tx_p_data_ctrl;
  wire   [7:0] rx_p_data;
  wire   [7:0] fifo_rd_data;
  wire   [2:0] rx_div_ratio;

  NOR3BX4M U7 ( .AN(uart_prescale[4]), .B(uart_prescale[3]), .C(
        uart_prescale[5]), .Y(n3) );
  NOR3BX4M U8 ( .AN(uart_prescale[3]), .B(uart_prescale[4]), .C(
        uart_prescale[5]), .Y(n1) );
  rst_synchronizer_0 u_rst_sync_1 ( .clk(REF_CLK), .rst(RST), .synch_rst(
        sync_rst_1) );
  clk_gating g_clk ( .clk(REF_CLK), .en(clk_en), .gclk(alu_clk) );
  Reg_file_ADDR_WIDTH4_DATA_WIDTH8 u_reg_file ( .CLK(REF_CLK), .RST(n6), 
        .Address(rf_addr), .WrEn(rf_wr_en), .RdEn(rf_rd_en), .WrData(
        rf_wr_data), .RdData(rf_rd_data), .RdData_Valid(rf_rd_valid), .REG0(
        reg0_op_a), .REG1(reg1_op_b), .REG2({uart_prescale, reg2_uart_cfg}), 
        .REG3(reg3_div_ratio) );
  ALU_WIDTH8 u_alu ( .CLK(alu_clk), .RST(n6), .A(reg0_op_a), .B(reg1_op_b), 
        .ALU_FUN(alu_fun), .Enable(alu_en), .ALU_OUT(alu_out), .OUT_VALID(
        alu_out_valid) );
  SYS_CTRL_ADDR_WIDTH4_DATA_WIDTH8 u_sys_ctrl ( .CLK(REF_CLK), .RST(n6), 
        .ALU_OUT(alu_out), .OUT_VALID(alu_out_valid), .ALU_FUN(alu_fun), 
        .ALU_EN(alu_en), .CLK_EN(clk_en), .Address(rf_addr), .WrEn(rf_wr_en), 
        .RdEn(rf_rd_en), .WrData(rf_wr_data), .RdData(rf_rd_data), 
        .RdData_Valid(rf_rd_valid), .RX_P_DATA(sync_rx_p_data), .RX_P_VALID(
        sync_rx_d_vld), .FIFO_FULL(fifo_full), .TX_P_DATA(tx_p_data_ctrl), 
        .TX_P_VALID(tx_d_vld_ctrl) );
  data_synch_BUS_WIDTH8_NUM_STAGES2 u_data_sync ( .bus_enable(rx_data_vld), 
        .dest_clk(REF_CLK), .dest_rst(n6), .unsync_bus(rx_p_data), 
        .enable_pulse_d(sync_rx_d_vld), .sync_bus(sync_rx_p_data) );
  fifo_DATA_WIDTH8_NUM_ADDR_BITS4 u_async_fifo ( .W_CLK(REF_CLK), .W_RST(n6), 
        .W_INC(tx_d_vld_ctrl), .R_CLK(tx_rx_clk), .R_RST(n4), .R_INC(
        fifo_rd_inc), .WR_DATA(tx_p_data_ctrl), .RD_DATA(fifo_rd_data), .FULL(
        fifo_full), .EMPTY(fifo_empty) );
  rst_synchronizer_1 u_rst_sync_2 ( .clk(UART_CLK), .rst(RST), .synch_rst(
        sync_rst_2) );
  clk_div_0 u_clk_div ( .I_ref_clk(UART_CLK), .I_rst_n(n4), .I_clk_en(1'b1), 
        .I_div_ratio(reg3_div_ratio), .o_div_clk(tx_rx_clk) );
  clk_div_1 u_clk_div_rx ( .I_ref_clk(UART_CLK), .I_rst_n(n4), .I_clk_en(1'b1), 
        .I_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, rx_div_ratio}), 
        .o_div_clk(rx_clk) );
  rx_DATA_WIDTH8 u_uart_rx ( .clk(rx_clk), .rst(n4), .par_type(
        reg2_uart_cfg[1]), .par_en(reg2_uart_cfg[0]), .rx_in(RX_IN), 
        .Prescale(uart_prescale), .parity_err(PAR_ERR), .stop_err(STP_ERR), 
        .data_valid(rx_data_vld), .p_data(rx_p_data) );
  Tx_DATA_WIDTH8 u_uart_tx ( .clk(tx_rx_clk), .rst(n4), .par_type(
        reg2_uart_cfg[1]), .par_enable(reg2_uart_cfg[0]), .data_valid(_0_net_), 
        .p_data(fifo_rd_data), .tx_out(TX_OUT), .busy(tx_busy) );
  PULSE_GEN u_pulse_gen ( .CLK(tx_rx_clk), .RST(n4), .LVL_SIG(tx_busy), 
        .PULSE_SIG(fifo_rd_inc) );
  DFFRQX1M fifo_rd_wait_reg ( .D(fifo_rd_inc), .CK(tx_rx_clk), .RN(n4), .Q(
        fifo_rd_wait) );
  OAI21X2M U10 ( .A0(n1), .A1(n3), .B0(n2), .Y(rx_div_ratio[0]) );
  INVX4M U11 ( .A(n5), .Y(n4) );
  INVX4M U12 ( .A(n7), .Y(n6) );
  CLKAND2X4M U13 ( .A(n2), .B(n3), .Y(rx_div_ratio[1]) );
  CLKAND2X4M U14 ( .A(n1), .B(n2), .Y(rx_div_ratio[2]) );
  NOR3X4M U15 ( .A(fifo_empty), .B(fifo_rd_wait), .C(fifo_rd_inc), .Y(_0_net_)
         );
  NOR3X6M U16 ( .A(uart_prescale[2]), .B(uart_prescale[1]), .C(
        uart_prescale[0]), .Y(n2) );
  INVX2M U17 ( .A(sync_rst_2), .Y(n5) );
  INVX2M U18 ( .A(sync_rst_1), .Y(n7) );
endmodule

