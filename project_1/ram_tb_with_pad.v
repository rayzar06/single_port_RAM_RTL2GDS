module ram_tb_with_pad;

parameter ADDRWIDTH = 4 ;
parameter DATAWIDTH = 8 ;
parameter SIZE = 16 ;


reg                 clk;
reg [ADDRWIDTH-1:0] addr;
wire[DATAWIDTH-1:0] data ;
reg [DATAWIDTH-1:0] tb_data ;
reg                 cs ;
reg                 we ;
reg                 oe;
integer		    i ;

single_port_ram # (ADDRWIDTH,DATAWIDTH,SIZE) dut (
    .clk_pad(clk) ,
    .addr_pad(addr) ,
    .data_pad(data) ,
    .cs_pad(cs) ,
    .we_pad(we) ,
    .oe_pad(oe)
);

initial begin
    clk <= 0 ;
    cs <= 1 ;
    oe <= 0 ;
    we <= 0 ;
    addr <= 0 ; 
    tb_data <= 0 ;
    i <= 0 ;
end


always @(*) begin
forever 
    #10 clk = ~ clk ;
end

assign data = !oe ? tb_data : 'hz ;

always @(negedge clk) begin
        if(oe == 0) #2 begin
            cs <= 1 ;
            we <= 1 ;
            addr <= i[ADDRWIDTH-1:0] ;
            oe <= 0 ;
            tb_data <= $random ;
   	        i = i + 1 ;
            if(i == (2**ADDRWIDTH)+1) begin
                oe <= 1 ;
                i <= 0 ;
                we <= 0 ;
                addr <= 'hz ;
            end
        end

        else #2 begin
            cs <= 1 ;
            we <= 0 ;
            addr <= i ;
            i = i + 1 ;
            if(i == (2**ADDRWIDTH)+1) begin
                oe <= 0 ;
                cs <= 0 ;
                $finish ;
            end

        end

end

endmodule



