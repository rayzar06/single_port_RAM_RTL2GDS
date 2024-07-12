module single_port_ram # (  
        parameter ADDRWIDTH = 4,
        parameter DATAWIDTH = 8 ,
        parameter SIZE = 16 
    )
    (      
        input clk ,
        input [ADDRWIDTH-1:0] addr ,
        input [DATAWIDTH-1:0] data ,
        input cs ,
        input we ,
        output [DATAWIDTH-1:0] dataOut
    );

	
ram_mod # (ADDRWIDTH,DATAWIDTH,SIZE) ram_1 (
    .clk(clk) ,
    .addr(addr) ,
    .data(data) ,
    .cs(cs) ,
    .we(we) ,
    .dataOut(dataOut)
    
);

endmodule
