// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Jul 10 14:18:40 2024
// Host        : c2s running 64-bit Red Hat Enterprise Linux release 8.9 (Ootpa)
// Command     : write_verilog /run/media/user1/c2s/sriram/singlePortRAM/project_1/project_1.v
// Design      : single_port_ram
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xck24-ubva530-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ram_mod
   (data_pad_OBUF,
    cs_pad_IBUF,
    we_pad_IBUF,
    oe_pad_IBUF,
    data_pad,
    clk_pad,
    addr_pad);
  output [7:0]data_pad_OBUF;
  input cs_pad_IBUF;
  input we_pad_IBUF;
  input oe_pad_IBUF;
  input [7:0]data_pad;
  input clk_pad;
  input [3:0]addr_pad;

  wire \<const0> ;
  wire GND_2;
  wire [3:0]addr_pad;
  wire clk_pad;
  wire cs_pad_IBUF;
  wire [7:0]data_pad;
  wire [7:0]data_pad_OBUF;
  wire oe_pad_IBUF;
  wire p_0_in;
  wire [7:0]tempMem;
  wire [7:0]tempMem0;
  wire \tempMem[7]_i_1_n_0 ;
  wire we_pad_IBUF;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[0]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[0]),
        .I4(data_pad[0]),
        .O(data_pad_OBUF[0]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[1]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[1]),
        .I4(data_pad[1]),
        .O(data_pad_OBUF[1]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[2]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[2]),
        .I4(data_pad[2]),
        .O(data_pad_OBUF[2]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[3]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[3]),
        .I4(data_pad[3]),
        .O(data_pad_OBUF[3]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[4]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[4]),
        .I4(data_pad[4]),
        .O(data_pad_OBUF[4]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[5]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[5]),
        .I4(data_pad[5]),
        .O(data_pad_OBUF[5]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[6]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[6]),
        .I4(data_pad[6]),
        .O(data_pad_OBUF[6]));
  LUT5 #(
    .INIT(32'h75552000)) 
    \data_pad_IOBUF[7]_inst_i_1 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .I3(tempMem[7]),
        .I4(data_pad[7]),
        .O(data_pad_OBUF[7]));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[0]),
        .O(tempMem0[0]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_15_0_0_i_1
       (.I0(cs_pad_IBUF),
        .I1(we_pad_IBUF),
        .O(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[1]),
        .O(tempMem0[1]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[2]),
        .O(tempMem0[2]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[3]),
        .O(tempMem0[3]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[4]),
        .O(tempMem0[4]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[5]),
        .O(tempMem0[5]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[6]),
        .O(tempMem0[6]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "ram_1/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(addr_pad[0]),
        .A1(addr_pad[1]),
        .A2(addr_pad[2]),
        .A3(addr_pad[3]),
        .A4(GND_2),
        .D(data_pad[7]),
        .O(tempMem0[7]),
        .WCLK(clk_pad),
        .WE(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \tempMem[7]_i_1 
       (.I0(cs_pad_IBUF),
        .I1(we_pad_IBUF),
        .O(\tempMem[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[0] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[0]),
        .Q(tempMem[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[1] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[1]),
        .Q(tempMem[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[2] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[2]),
        .Q(tempMem[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[3] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[3]),
        .Q(tempMem[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[4] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[4]),
        .Q(tempMem[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[5] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[5]),
        .Q(tempMem[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[6] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[6]),
        .Q(tempMem[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tempMem_reg[7] 
       (.C(clk_pad),
        .CE(\tempMem[7]_i_1_n_0 ),
        .D(tempMem0[7]),
        .Q(tempMem[7]),
        .R(\<const0> ));
endmodule

(* ADDRWIDTH = "4" *) (* DATAWIDTH = "8" *) (* SIZE = "16" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module single_port_ram
   (clk_pad,
    addr_pad,
    data_pad,
    cs_pad,
    we_pad,
    oe_pad);
  input clk_pad;
  input [3:0]addr_pad;
  inout [7:0]data_pad;
  input cs_pad;
  input we_pad;
  input oe_pad;

  wire VCC_1;
  wire [3:0]addr_pad;
  wire [3:0]addr_pad_IBUF;
  wire clk_pad;
  wire clk_pad_IBUF;
  wire clk_pad_IBUF_BUFG;
  wire cs_pad;
  wire cs_pad_IBUF;
  wire [7:0]data_pad;
  wire [7:0]data_pad_IBUF;
  wire [7:0]data_pad_OBUF;
  wire \data_pad_TRI[0] ;
  wire \data_pad_TRI[1] ;
  wire \data_pad_TRI[2] ;
  wire \data_pad_TRI[3] ;
  wire \data_pad_TRI[4] ;
  wire \data_pad_TRI[5] ;
  wire \data_pad_TRI[6] ;
  wire \data_pad_TRI[7] ;
  wire oe_pad;
  wire oe_pad_IBUF;
  wire we_pad;
  wire we_pad_IBUF;

  VCC VCC
       (.P(VCC_1));
  IBUF \addr_pad_IBUF[0]_inst 
       (.I(addr_pad[0]),
        .O(addr_pad_IBUF[0]));
  IBUF \addr_pad_IBUF[1]_inst 
       (.I(addr_pad[1]),
        .O(addr_pad_IBUF[1]));
  IBUF \addr_pad_IBUF[2]_inst 
       (.I(addr_pad[2]),
        .O(addr_pad_IBUF[2]));
  IBUF \addr_pad_IBUF[3]_inst 
       (.I(addr_pad[3]),
        .O(addr_pad_IBUF[3]));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_pad_IBUF_BUFG_inst
       (.CE(VCC_1),
        .I(clk_pad_IBUF),
        .O(clk_pad_IBUF_BUFG));
  IBUF clk_pad_IBUF_inst
       (.I(clk_pad),
        .O(clk_pad_IBUF));
  IBUF cs_pad_IBUF_inst
       (.I(cs_pad),
        .O(cs_pad_IBUF));
  IOBUF \data_pad_IOBUF[0]_inst 
       (.I(data_pad_OBUF[0]),
        .IO(data_pad[0]),
        .O(data_pad_IBUF[0]),
        .T(\data_pad_TRI[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[0]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[0] ));
  IOBUF \data_pad_IOBUF[1]_inst 
       (.I(data_pad_OBUF[1]),
        .IO(data_pad[1]),
        .O(data_pad_IBUF[1]),
        .T(\data_pad_TRI[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[1]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[1] ));
  IOBUF \data_pad_IOBUF[2]_inst 
       (.I(data_pad_OBUF[2]),
        .IO(data_pad[2]),
        .O(data_pad_IBUF[2]),
        .T(\data_pad_TRI[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[2]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[2] ));
  IOBUF \data_pad_IOBUF[3]_inst 
       (.I(data_pad_OBUF[3]),
        .IO(data_pad[3]),
        .O(data_pad_IBUF[3]),
        .T(\data_pad_TRI[3] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[3]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[3] ));
  IOBUF \data_pad_IOBUF[4]_inst 
       (.I(data_pad_OBUF[4]),
        .IO(data_pad[4]),
        .O(data_pad_IBUF[4]),
        .T(\data_pad_TRI[4] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[4]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[4] ));
  IOBUF \data_pad_IOBUF[5]_inst 
       (.I(data_pad_OBUF[5]),
        .IO(data_pad[5]),
        .O(data_pad_IBUF[5]),
        .T(\data_pad_TRI[5] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[5]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[5] ));
  IOBUF \data_pad_IOBUF[6]_inst 
       (.I(data_pad_OBUF[6]),
        .IO(data_pad[6]),
        .O(data_pad_IBUF[6]),
        .T(\data_pad_TRI[6] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[6]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[6] ));
  IOBUF \data_pad_IOBUF[7]_inst 
       (.I(data_pad_OBUF[7]),
        .IO(data_pad[7]),
        .O(data_pad_IBUF[7]),
        .T(\data_pad_TRI[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \data_pad_IOBUF[7]_inst_i_2 
       (.I0(oe_pad_IBUF),
        .I1(we_pad_IBUF),
        .I2(cs_pad_IBUF),
        .O(\data_pad_TRI[7] ));
  IBUF oe_pad_IBUF_inst
       (.I(oe_pad),
        .O(oe_pad_IBUF));
  ram_mod ram_1
       (.addr_pad(addr_pad_IBUF),
        .clk_pad(clk_pad_IBUF_BUFG),
        .cs_pad_IBUF(cs_pad_IBUF),
        .data_pad(data_pad_IBUF),
        .data_pad_OBUF(data_pad_OBUF),
        .oe_pad_IBUF(oe_pad_IBUF),
        .we_pad_IBUF(we_pad_IBUF));
  IBUF we_pad_IBUF_inst
       (.I(we_pad),
        .O(we_pad_IBUF));
endmodule
