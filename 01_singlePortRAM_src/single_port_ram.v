module single_port_ram # (  
        parameter ADDRWIDTH = 4,
        parameter DATAWIDTH = 8 ,
        parameter SIZE = 16 
    )
    (      
        input clk_pad ,
        input [ADDRWIDTH-1:0] addr_pad ,
        inout [DATAWIDTH-1:0] data_pad ,
        input cs_pad ,
        input we_pad ,
        input oe_pad 
    );

wire clk ;
wire [ADDRWIDTH-1:0] addr ;
wire [DATAWIDTH-1:0] data ;
wire cs ;
wire we ;
wire oe ;
wire clock ;
wire notoe ;
//PAD Instantiation

	pc3c01 pc3c01_1(.CCLK (clock), .CP (clk));

	pc3d01 pc3d01_1(.PAD (clk_pad), .CIN (clock));

	pc3d01 pc3d01_2(.PAD (cs_pad), .CIN (cs));
	pc3d01 pc3d01_3(.PAD (we_pad), .CIN (we));
	pc3d01 pc3d01_4(.PAD (oe_pad), .CIN (oe));

	pc3d01 pc3d01_5(.PAD (addr_pad[3]), .CIN (addr[3]));
	pc3d01 pc3d01_6(.PAD (addr_pad[2]), .CIN (addr[2]));
	pc3d01 pc3d01_7(.PAD (addr_pad[1]), .CIN (addr[1]));
	pc3d01 pc3d01_8(.PAD (addr_pad[0]), .CIN (addr[0]));

	pc3b01d pc3b01_1(.I(data[7]),.CIN(data[7]),.OEN(notoe),.PAD(data_pad[7]));
	pc3b01d pc3b01_2(.I(data[6]),.CIN(data[6]),.OEN(notoe),.PAD(data_pad[6]));
	pc3b01d pc3b01_3(.I(data[5]),.CIN(data[5]),.OEN(notoe),.PAD(data_pad[5]));
	pc3b01d pc3b01_4(.I(data[4]),.CIN(data[4]),.OEN(notoe),.PAD(data_pad[4]));
	pc3b01d pc3b01_5(.I(data[3]),.CIN(data[3]),.OEN(notoe),.PAD(data_pad[3]));
	pc3b01d pc3b01_6(.I(data[2]),.CIN(data[2]),.OEN(notoe),.PAD(data_pad[2]));
	pc3b01d pc3b01_7(.I(data[1]),.CIN(data[1]),.OEN(notoe),.PAD(data_pad[1]));
	pc3b01d pc3b01_8(.I(data[0]),.CIN(data[0]),.OEN(notoe),.PAD(data_pad[0]));
	
not(notoe,oe);
	
ram_mod # (ADDRWIDTH,DATAWIDTH,SIZE) ram_1 (
    .clk(clk) ,
    .addr(addr) ,
    .data(data) ,
    .cs(cs) ,
    .we(we) ,
    .oe(oe)
    
);

endmodule
