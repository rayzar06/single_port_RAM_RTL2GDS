module ram_mod # (  
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
        output reg [DATAWIDTH-1:0] dataOut
    );



reg [DATAWIDTH-1:0] mem [0:SIZE-1];
reg [DATAWIDTH-1:0] tempMem ; 

always @(posedge clk) begin
    if (cs) begin
    	if (we) 
    		mem[addr] <= data ;
	else
		dataOut = mem[addr];
    end
end

endmodule
