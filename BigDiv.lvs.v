// IC Compiler II Version R-2020.09-SP6 Verilog Writer
// Generated on 11/21/2023 at 12:38:9
// Library Name: BigDiv_lib
// Block Name: BigDiv
// User Label: BigDiv
// Write Command: write_verilog -compress gzip -hierarchy all -exclude { scalar_wire_declarations leaf_module_declarations empty_modules } ./outputs_icc2/BigDiv.lvs.v
module CLKDivider_Div80alt_1 ( reset , clk , div80 , div4 , div8 , VDD , VSS ) ;
input  reset ;
input  clk ;
output div80 ;
output div4 ;
output div8 ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;
wire [2:0] count5 ;

SC8T_DFFQX0P5_CSC28L div80_reg ( .D ( n9 ) , .CLK ( clk ) , .Q ( div80 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L div8_reg ( .D ( N21 ) , .CLK ( clk ) , .Q ( div8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count5_reg_0_ ( .D ( N16 ) , .CLK ( clk ) , 
    .Q ( count5[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count5_reg_2_ ( .D ( N18 ) , .CLK ( clk ) , 
    .Q ( count5[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count5_reg_1_ ( .D ( N17 ) , .CLK ( clk ) , 
    .Q ( count5[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count8_reg_2_ ( .D ( n11 ) , .CLK ( clk ) , 
    .Q ( count8_2_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count8_reg_1_ ( .D ( n13 ) , .CLK ( clk ) , 
    .Q ( count8_1_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count8_reg_0_ ( .D ( N13 ) , .CLK ( clk ) , .Q ( div4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U3 ( .A ( reset ) , .Z ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_NR3IBX0P5_CSC28L U4 ( .B ( count5[2] ) , .A ( count5[1] ) , .C ( n32 ) , 
    .Z ( N16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ND2X0P5_CSC28L U5 ( .A ( reset ) , .B ( count5[0] ) , .Z ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OAI21X0P5_CSC28L U6 ( .B1 ( count5[1] ) , .B2 ( n32 ) , .A ( n27 ) , 
    .Z ( N18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_NR2X0P5_CSC28L U7 ( .A ( count8_2_ ) , .B ( n32 ) , .Z ( N21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U8 ( .A ( n27 ) , .Z ( N17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_NR4X1_CSC28L U9 ( .A ( count8_2_ ) , .B ( count8_1_ ) , 
    .C ( count5[2] ) , .D ( div4 ) , .Z ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_OAI21X0P5_CSC28L U10 ( .B1 ( div80 ) , .B2 ( n29 ) , .A ( reset ) , 
    .Z ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_AOI21X0P5_CSC28L U11 ( .B1 ( div80 ) , .B2 ( n29 ) , .A ( n28 ) , 
    .Z ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U12 ( .A ( N21 ) , .Z ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_INVX1P5_CSC28L U13 ( .A ( count8_2_ ) , .Z ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_ND2X0P5_CSC28L U14 ( .A ( reset ) , .B ( count8_1_ ) , .Z ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OAI22X1_CSC28L U15 ( .A1 ( count8_1_ ) , .A2 ( n30 ) , .B1 ( n33 ) , 
    .B2 ( n31 ) , .Z ( N13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U16 ( .A ( div4 ) , .Z ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_AOI22X1_CSC28L U17 ( .A1 ( div4 ) , .A2 ( n30 ) , .B1 ( n31 ) , 
    .B2 ( n34 ) , .Z ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OAI32X0P5_CSC28L U18 ( .B1 ( n34 ) , .B2 ( n33 ) , .B3 ( n32 ) , 
    .A1 ( div4 ) , .A2 ( n31 ) , .Z ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module CLKDivider_Div12_1 ( reset , clk , div12 , VDD , VSS ) ;
input  reset ;
input  clk ;
output div12 ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;
wire [2:0] count ;

SC8T_DFFQX0P5_CSC28L count_reg_0_ ( .D ( N6 ) , .CLK ( clk ) , 
    .Q ( count[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count_reg_2_ ( .D ( N8 ) , .CLK ( clk ) , 
    .Q ( count[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L count_reg_1_ ( .D ( N7 ) , .CLK ( clk ) , 
    .Q ( count[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L div12_reg ( .D ( n4 ) , .CLK ( clk ) , .Q ( div12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U3 ( .A ( reset ) , .Z ( n10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_NR2IAX0P5_CSC28L U4 ( .A ( count[1] ) , .B ( n10 ) , .Z ( N6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_NR2IAX0P5_CSC28L U5 ( .A ( count[0] ) , .B ( n10 ) , .Z ( N8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_NR2X0P5_CSC28L U6 ( .A ( count[2] ) , .B ( n10 ) , .Z ( N7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_NR2X0P5_CSC28L U7 ( .A ( count[2] ) , .B ( count[1] ) , .Z ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OAI21X0P5_CSC28L U8 ( .B1 ( div12 ) , .B2 ( n12 ) , .A ( reset ) , 
    .Z ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_AOI21X0P5_CSC28L U9 ( .B1 ( div12 ) , .B2 ( n12 ) , .A ( n11 ) , 
    .Z ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module CLKDivider_Div9alt_1 ( reset , clk , div9 , VDD , VSS ) ;
input  reset ;
input  clk ;
output div9 ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

SC8T_DFFNQX1_CSC28L t2_reg ( .D ( n10 ) , .CLK ( clk ) , .Q ( t2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L midA_reg ( .D ( n16 ) , .CLK ( clk ) , .Q ( midA ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L midC_reg ( .D ( n14 ) , .CLK ( clk ) , .Q ( midC ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L midD_reg ( .D ( N13 ) , .CLK ( clk ) , .Q ( midD ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L midB_reg ( .D ( N11 ) , .CLK ( clk ) , .Q ( midB ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DFFQX0P5_CSC28L t1_reg ( .D ( n12 ) , .CLK ( clk ) , .Q ( t1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U3 ( .A ( midD ) , .Z ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_INVX1P5_CSC28L U4 ( .A ( midC ) , .Z ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_NR2X1P5_CSC28L U5 ( .A ( n42 ) , .B ( n36 ) , .Z ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_OAI21X0P5_CSC28L U6 ( .B1 ( t2 ) , .B2 ( n35 ) , .A ( reset ) , 
    .Z ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_AOI21X0P5_CSC28L U7 ( .B1 ( t2 ) , .B2 ( n35 ) , .A ( n34 ) , 
    .Z ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ND2X0P5_CSC28L U8 ( .A ( reset ) , .B ( midA ) , .Z ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_AOI21X0P5_CSC28L U9 ( .B1 ( midB ) , .B2 ( n36 ) , .A ( n40 ) , 
    .Z ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_NR2X0P5_CSC28L U10 ( .A ( midD ) , .B ( midC ) , .Z ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OAI21X0P5_CSC28L U11 ( .B1 ( t1 ) , .B2 ( n38 ) , .A ( reset ) , 
    .Z ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_AOI21X0P5_CSC28L U12 ( .B1 ( t1 ) , .B2 ( n38 ) , .A ( n37 ) , 
    .Z ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U13 ( .A ( reset ) , .Z ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_NR2X0P5_CSC28L U14 ( .A ( midC ) , .B ( n41 ) , .Z ( N13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OA22IA1A2X1_MR_CSC28L U15 ( .A1 ( t1 ) , .A2 ( t2 ) , .B1 ( t2 ) , 
    .B2 ( t1 ) , .Z ( div9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_INVX0P5_CSC28L U16 ( .A ( midB ) , .Z ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_OAI32X0P5_CSC28L U17 ( .B1 ( n39 ) , .B2 ( n42 ) , .B3 ( n41 ) , 
    .A1 ( midB ) , .A2 ( n40 ) , .Z ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_OAI32X0P5_CSC28L U18 ( .B1 ( n42 ) , .B2 ( midA ) , .B3 ( n41 ) , 
    .A1 ( midD ) , .A2 ( n40 ) , .Z ( N11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dividerblock ( reset , clk , VDD , VSS , div4 , div8 , div9 , div12 , 
    div80 , VDD_ARR ) ;
input  reset ;
input  clk ;
input  VDD ;
input  VSS ;
output div4 ;
output div8 ;
output div9 ;
output div12 ;
output div80 ;
input  VDD_ARR ;

supply1 VDD ;
supply0 VSS ;
supply1 VDD_ARR ;

CLKDivider_Div9alt_1 d9 ( .reset ( reset ) , .clk ( clk ) , .div9 ( div9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
CLKDivider_Div12_1 d12 ( .reset ( reset ) , .clk ( clk ) , .div12 ( div12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
CLKDivider_Div80alt_1 d80 ( .reset ( reset ) , .clk ( clk ) , 
    .div80 ( div80 ) , .div4 ( div4 ) , .div8 ( div8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_0 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_1 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_2 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_3 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_4 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_5 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_6 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_7 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_8 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_9 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_10 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_CNREXTANTENNANLX9_CSC20L boundarycell_ENDCAP_SC8T_CNREXTANTENNANLX9_CSC20L_0 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_CNREXTANTENNANRX9_CSC20L boundarycell_ENDCAP_SC8T_CNREXTANTENNANRX9_CSC20L_1 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_2 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_3 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_4 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_5 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_6 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_7 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_8 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_9 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_10 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_11 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_12 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_13 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_14 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_15 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_16 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_17 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_18 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_19 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_20 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_21 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_22 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_23 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_24 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_25 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_26 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_27 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_28 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_29 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_30 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_31 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_32 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_33 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_34 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_35 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_36 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_37 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_38 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_39 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_40 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_41 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_42 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_43 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_44 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_45 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_46 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_47 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_48 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_49 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_50 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_51 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_52 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_53 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_54 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_55 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_56 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_57 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_58 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_59 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_60 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_61 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_62 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_63 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_64 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_65 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_66 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_67 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_68 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_69 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_70 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_71 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_72 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_73 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_74 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_75 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_76 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_77 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_78 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPNX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPNX1_CSC20L_79 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_80 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_81 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_82 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_83 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_84 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_85 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_86 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_87 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_88 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_89 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_90 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_91 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_92 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_93 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_94 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_95 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_96 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_97 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_98 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_99 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_100 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_101 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_102 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_103 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNALX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNALX9_CSC20L_104 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_ROWCAPANTENNARX9_CSC20L boundarycell_ENDCAP_SC8T_ROWCAPANTENNARX9_CSC20L_105 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_CNREXTANTENNAPLX9_CSC20L boundarycell_ENDCAP_SC8T_CNREXTANTENNAPLX9_CSC20L_106 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_CNREXTANTENNAPRX9_CSC20L boundarycell_ENDCAP_SC8T_CNREXTANTENNAPRX9_CSC20L_107 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_108 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_109 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_110 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_111 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_112 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_113 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_114 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_115 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_116 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_117 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_118 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_119 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_120 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_121 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_122 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_123 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_124 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_125 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_126 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_127 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_128 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_129 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_130 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_131 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_132 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_133 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_134 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_135 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_136 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_137 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_138 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_139 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_140 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_141 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_142 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_143 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_144 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_145 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_146 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_147 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_148 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_149 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_150 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_151 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_152 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_153 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_154 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_155 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_156 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_157 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_158 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_159 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_160 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_161 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_162 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_163 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_164 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_165 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_166 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_167 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_168 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_169 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_170 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_171 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_172 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_173 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_174 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_175 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_176 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_177 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_178 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_179 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_180 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_181 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_182 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_183 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_184 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_COLCAPPX1_CSC20L boundarycell_ENDCAP_SC8T_COLCAPPX1_CSC20L_185 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_11 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_TAPZBX8_CSC20L tapfiller_SC8T_TAPZBX8_CSC20L_12 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x22680y11400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x39320y11400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x69480y11400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x86120y11400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x91320y11400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX8_CSC20L xofiller_RM_filler_SC8T_DECAPX8_CSC20L_x48680y17800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x62200y17800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x91320y17800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x87160y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x22680y37000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x86120y37000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x91320y37000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x48680y43400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x65320y43400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX8_CSC20L xofiller_RM_filler_SC8T_DECAPX8_CSC20L_x22680y49800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x22680y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x69480y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x86120y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x91320y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x22680y62600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x35160y62600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x51800y62600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX8_CSC20L xofiller_RM_filler_SC8T_DECAPX8_CSC20L_x22680y69000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX5_CSC20L xofiller_RM_filler_SC8T_DECAPX5_CSC20L_x86120y69000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x91320y69000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x22680y75400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x22680y81800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x47640y81800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x91320y81800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX8_CSC20L xofiller_RM_filler_SC8T_DECAPX8_CSC20L_x22680y88200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX4_CSC20L xofiller_RM_filler_SC8T_DECAPX4_CSC20L_x31000y88200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX16_CSC20L xofiller_RM_filler_SC8T_DECAPX16_CSC20L_x70520y88200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_DECAPX8_CSC20L xofiller_RM_filler_SC8T_DECAPX8_CSC20L_x87160y88200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x43480y11400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x22680y17800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX1_CSC20L xofiller_RM_filler_SC8T_FILLX1_CSC20L_x51800y24200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x54920y24200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX1_CSC20L xofiller_RM_filler_SC8T_FILLX1_CSC20L_x64280y24200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x22680y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x53880y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x64280y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x69480y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x78840y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x91320y30600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x39320y37000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x73640y37000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x77800y37000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x22680y43400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x69480y43400 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX1_CSC20L xofiller_RM_filler_SC8T_FILLX1_CSC20L_x36200y49800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x42440y49800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX3_CSC20L xofiller_RM_filler_SC8T_FILLX3_CSC20L_x92360y49800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x27880y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x38280y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x64280y56200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x27880y62600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x55960y62600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX1_CSC20L xofiller_RM_filler_SC8T_FILLX1_CSC20L_x60120y62600 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x31000y69000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX3_CSC20L xofiller_RM_filler_SC8T_FILLX3_CSC20L_x57000y69000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x74680y69000 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX3_CSC20L xofiller_RM_filler_SC8T_FILLX3_CSC20L_x39320y81800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX3_CSC20L xofiller_RM_filler_SC8T_FILLX3_CSC20L_x64280y81800 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SC8T_FILLX2_CSC20L xofiller_RM_filler_SC8T_FILLX2_CSC20L_x44520y88200 ( 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


