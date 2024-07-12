module ram_tb;

parameter ADDRWIDTH = 4 ;
parameter DATAWIDTH = 8 ;
parameter SIZE = 16 ;


reg                 clk ;
reg [ADDRWIDTH-1:0] addr ;
reg [DATAWIDTH-1:0] data ;
reg [DATAWIDTH-1:0] tb_data ;
reg                 cs ;
reg                 we ;
wire [DATAWIDTH-1:0] dataOut ;
reg [ADDRWIDTH:0] i ;
// reg [DATAWIDTH-1:0] testMem [0:SIZE-1];

single_port_ram # (ADDRWIDTH,DATAWIDTH,SIZE) dut (
    .clk(clk) ,
    .addr(addr) ,
    .data(data) ,
    .cs(cs) ,
    .we(we) ,
    .dataOut(dataOut)
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

always @(negedge clk) begin
        if(we == 1) #2 begin
            cs <= 1 ;
            we <= 1 ;
            addr <= i[ADDRWIDTH-1:0] ;
            data <= $random ;
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






