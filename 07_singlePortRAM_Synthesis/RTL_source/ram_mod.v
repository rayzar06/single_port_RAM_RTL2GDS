module ram_mod # (  
        parameter ADDRWIDTH = 4,
        parameter DATAWIDTH = 8 ,
        parameter SIZE = 16 
    )
    (      
        input clk ,
        input [ADDRWIDTH-1:0] addr ,
        inout [DATAWIDTH-1:0] data ,
        input cs ,
        input we ,
        input oe 
    );



reg [DATAWIDTH-1:0] mem [0:SIZE-1];
reg [DATAWIDTH-1:0] tempMem ; 

always @(posedge clk) begin
    if (cs & we)
        mem[addr] <= data ;
    
end

always @(posedge clk) begin
    if (cs & !we)
        tempMem <= mem[addr] ;

end

assign data = cs & oe & !we ? tempMem : 'hz ;

endmodule
