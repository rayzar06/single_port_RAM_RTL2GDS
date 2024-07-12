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
integer		    i ;

single_port_ram # (ADDRWIDTH,DATAWIDTH,SIZE) dut (
    .clk_pad(clk) ,
    .addr_pad(addr) ,
    .data_pad(data) ,
    .cs_pad(cs) ,
    .we_pad(we) 
);

initial begin
    clk <= 0 ;
    cs <= 1 ;
    we <= 1 ;
    addr <= 0 ; 
    tb_data <= 0 ;
    i <= 0 ;
end


always @(*) begin
forever 
    #10 clk = ~ clk ;
end

assign data = we ? tb_data : 'hz ;

always @(negedge clk) begin
        if(we == 1) #2 begin
            cs <= 1 ;
            we <= 1 ;
            addr <= i[ADDRWIDTH-1:0] ;
            tb_data <= $random ;
   	        i = i + 1 ;
            if(i == (2**ADDRWIDTH)+1) begin
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
                we <= 1 ;
                cs <= 0 ;
                $finish ;
            end

        end
end

endmodule



