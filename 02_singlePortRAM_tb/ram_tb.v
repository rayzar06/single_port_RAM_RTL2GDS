module ram_tb;

parameter ADDRWIDTH = 4 ;
parameter DATAWIDTH = 8 ;
parameter SIZE = 16 ;


reg                 clk ;
reg [ADDRWIDTH-1:0] addr ;
wire[DATAWIDTH-1:0] data ;
reg [DATAWIDTH-1:0] tb_data ;
reg                 cs ;
reg                 we ;
reg                 oe ;

single_port_ram # (ADDRWIDTH,DATAWIDTH,SIZE) dut (
    .clk(clk) ,
    .addr(addr) ,
    .data(data) ,
    .cs(cs) ,
    .we(we) ,
    .oe(oe)
);

initial begin
    clk <= 0 ;
    cs <= 0 ;
    oe <= 0 ;
    we <= 0 ;
    addr <= 0 ; 
    tb_data <= 0 ;

end

always @(*) begin
    #10 clk = ~ clk ;
end

assign data = !oe ? tb_data : 'hz ;

initial begin
    #20 
    for (integer i = 0 ; i < 2**ADDRWIDTH ; i = i+1) begin
        repeat (1) @ (posedge clk) begin
            cs <= 1 ;
            we <= 1 ;
            addr <= i ;
            oe <= 0 ;
            tb_data <= $random ;
        end
    end

    for (integer i = 0 ; i < 2**ADDRWIDTH ; i = i+1) begin
        repeat (1) @ (posedge clk) begin
            cs <= 1 ;
            we <= 0 ;
            addr <= i ;
            oe <= 1 ;
        end
    end
#20 $finish ;

end

endmodule



