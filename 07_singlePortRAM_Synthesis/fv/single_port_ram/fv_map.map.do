
//input ports
add mapped point clk_pad clk_pad -type PI PI
add mapped point addr_pad[3] addr_pad[3] -type PI PI
add mapped point addr_pad[2] addr_pad[2] -type PI PI
add mapped point addr_pad[1] addr_pad[1] -type PI PI
add mapped point addr_pad[0] addr_pad[0] -type PI PI
add mapped point cs_pad cs_pad -type PI PI
add mapped point we_pad we_pad -type PI PI
add mapped point oe_pad oe_pad -type PI PI

//output ports

//inout ports
add mapped point data_pad[7] data_pad[7]
add mapped point data_pad[6] data_pad[6]
add mapped point data_pad[5] data_pad[5]
add mapped point data_pad[4] data_pad[4]
add mapped point data_pad[3] data_pad[3]
add mapped point data_pad[2] data_pad[2]
add mapped point data_pad[1] data_pad[1]
add mapped point data_pad[0] data_pad[0]




//Sequential Pins
add mapped point ram_1/tempMem[6]/q ram_1/tempMem_reg[6]/Q -type DFF DFF
add mapped point ram_1/tempMem[5]/q ram_1/tempMem_reg[5]/Q -type DFF DFF
add mapped point ram_1/tempMem[4]/q ram_1/tempMem_reg[4]/Q -type DFF DFF
add mapped point ram_1/tempMem[7]/q ram_1/tempMem_reg[7]/Q -type DFF DFF
add mapped point ram_1/tempMem[3]/q ram_1/tempMem_reg[3]/Q -type DFF DFF
add mapped point ram_1/tempMem[2]/q ram_1/tempMem_reg[2]/Q -type DFF DFF
add mapped point ram_1/tempMem[1]/q ram_1/tempMem_reg[1]/Q -type DFF DFF
add mapped point ram_1/tempMem[0]/q ram_1/tempMem_reg[0]/Q -type DFF DFF
add mapped point ram_1/mem[10][4]/q ram_1/mem_reg[10][4]/Q -type DFF DFF
add mapped point ram_1/mem[15][1]/q ram_1/mem_reg[15][1]/Q -type DFF DFF
add mapped point ram_1/mem[8][4]/q ram_1/mem_reg[8][4]/Q -type DFF DFF
add mapped point ram_1/mem[10][5]/q ram_1/mem_reg[10][5]/Q -type DFF DFF
add mapped point ram_1/mem[0][3]/q ram_1/mem_reg[0][3]/Q -type DFF DFF
add mapped point ram_1/mem[3][0]/q ram_1/mem_reg[3][0]/Q -type DFF DFF
add mapped point ram_1/mem[14][5]/q ram_1/mem_reg[14][5]/Q -type DFF DFF
add mapped point ram_1/mem[3][1]/q ram_1/mem_reg[3][1]/Q -type DFF DFF
add mapped point ram_1/mem[8][7]/q ram_1/mem_reg[8][7]/Q -type DFF DFF
add mapped point ram_1/mem[9][0]/q ram_1/mem_reg[9][0]/Q -type DFF DFF
add mapped point ram_1/mem[14][2]/q ram_1/mem_reg[14][2]/Q -type DFF DFF
add mapped point ram_1/mem[9][1]/q ram_1/mem_reg[9][1]/Q -type DFF DFF
add mapped point ram_1/mem[0][4]/q ram_1/mem_reg[0][4]/Q -type DFF DFF
add mapped point ram_1/mem[3][2]/q ram_1/mem_reg[3][2]/Q -type DFF DFF
add mapped point ram_1/mem[14][0]/q ram_1/mem_reg[14][0]/Q -type DFF DFF
add mapped point ram_1/mem[9][2]/q ram_1/mem_reg[9][2]/Q -type DFF DFF
add mapped point ram_1/mem[9][3]/q ram_1/mem_reg[9][3]/Q -type DFF DFF
add mapped point ram_1/mem[9][4]/q ram_1/mem_reg[9][4]/Q -type DFF DFF
add mapped point ram_1/mem[3][3]/q ram_1/mem_reg[3][3]/Q -type DFF DFF
add mapped point ram_1/mem[3][4]/q ram_1/mem_reg[3][4]/Q -type DFF DFF
add mapped point ram_1/mem[9][5]/q ram_1/mem_reg[9][5]/Q -type DFF DFF
add mapped point ram_1/mem[9][6]/q ram_1/mem_reg[9][6]/Q -type DFF DFF
add mapped point ram_1/mem[13][4]/q ram_1/mem_reg[13][4]/Q -type DFF DFF
add mapped point ram_1/mem[9][7]/q ram_1/mem_reg[9][7]/Q -type DFF DFF
add mapped point ram_1/mem[0][2]/q ram_1/mem_reg[0][2]/Q -type DFF DFF
add mapped point ram_1/mem[3][5]/q ram_1/mem_reg[3][5]/Q -type DFF DFF
add mapped point ram_1/mem[1][2]/q ram_1/mem_reg[1][2]/Q -type DFF DFF
add mapped point ram_1/mem[10][0]/q ram_1/mem_reg[10][0]/Q -type DFF DFF
add mapped point ram_1/mem[0][5]/q ram_1/mem_reg[0][5]/Q -type DFF DFF
add mapped point ram_1/mem[3][6]/q ram_1/mem_reg[3][6]/Q -type DFF DFF
add mapped point ram_1/mem[12][7]/q ram_1/mem_reg[12][7]/Q -type DFF DFF
add mapped point ram_1/mem[3][7]/q ram_1/mem_reg[3][7]/Q -type DFF DFF
add mapped point ram_1/mem[10][2]/q ram_1/mem_reg[10][2]/Q -type DFF DFF
add mapped point ram_1/mem[10][3]/q ram_1/mem_reg[10][3]/Q -type DFF DFF
add mapped point ram_1/mem[6][4]/q ram_1/mem_reg[6][4]/Q -type DFF DFF
add mapped point ram_1/mem[10][1]/q ram_1/mem_reg[10][1]/Q -type DFF DFF
add mapped point ram_1/mem[4][0]/q ram_1/mem_reg[4][0]/Q -type DFF DFF
add mapped point ram_1/mem[10][6]/q ram_1/mem_reg[10][6]/Q -type DFF DFF
add mapped point ram_1/mem[12][2]/q ram_1/mem_reg[12][2]/Q -type DFF DFF
add mapped point ram_1/mem[10][7]/q ram_1/mem_reg[10][7]/Q -type DFF DFF
add mapped point ram_1/mem[0][6]/q ram_1/mem_reg[0][6]/Q -type DFF DFF
add mapped point ram_1/mem[4][1]/q ram_1/mem_reg[4][1]/Q -type DFF DFF
add mapped point ram_1/mem[11][7]/q ram_1/mem_reg[11][7]/Q -type DFF DFF
add mapped point ram_1/mem[11][0]/q ram_1/mem_reg[11][0]/Q -type DFF DFF
add mapped point ram_1/mem[11][1]/q ram_1/mem_reg[11][1]/Q -type DFF DFF
add mapped point ram_1/mem[11][2]/q ram_1/mem_reg[11][2]/Q -type DFF DFF
add mapped point ram_1/mem[4][2]/q ram_1/mem_reg[4][2]/Q -type DFF DFF
add mapped point ram_1/mem[11][3]/q ram_1/mem_reg[11][3]/Q -type DFF DFF
add mapped point ram_1/mem[11][4]/q ram_1/mem_reg[11][4]/Q -type DFF DFF
add mapped point ram_1/mem[4][3]/q ram_1/mem_reg[4][3]/Q -type DFF DFF
add mapped point ram_1/mem[11][5]/q ram_1/mem_reg[11][5]/Q -type DFF DFF
add mapped point ram_1/mem[0][7]/q ram_1/mem_reg[0][7]/Q -type DFF DFF
add mapped point ram_1/mem[1][0]/q ram_1/mem_reg[1][0]/Q -type DFF DFF
add mapped point ram_1/mem[4][4]/q ram_1/mem_reg[4][4]/Q -type DFF DFF
add mapped point ram_1/mem[4][5]/q ram_1/mem_reg[4][5]/Q -type DFF DFF
add mapped point ram_1/mem[11][6]/q ram_1/mem_reg[11][6]/Q -type DFF DFF
add mapped point ram_1/mem[12][0]/q ram_1/mem_reg[12][0]/Q -type DFF DFF
add mapped point ram_1/mem[4][6]/q ram_1/mem_reg[4][6]/Q -type DFF DFF
add mapped point ram_1/mem[12][1]/q ram_1/mem_reg[12][1]/Q -type DFF DFF
add mapped point ram_1/mem[12][3]/q ram_1/mem_reg[12][3]/Q -type DFF DFF
add mapped point ram_1/mem[1][1]/q ram_1/mem_reg[1][1]/Q -type DFF DFF
add mapped point ram_1/mem[4][7]/q ram_1/mem_reg[4][7]/Q -type DFF DFF
add mapped point ram_1/mem[12][4]/q ram_1/mem_reg[12][4]/Q -type DFF DFF
add mapped point ram_1/mem[12][5]/q ram_1/mem_reg[12][5]/Q -type DFF DFF
add mapped point ram_1/mem[12][6]/q ram_1/mem_reg[12][6]/Q -type DFF DFF
add mapped point ram_1/mem[5][0]/q ram_1/mem_reg[5][0]/Q -type DFF DFF
add mapped point ram_1/mem[5][1]/q ram_1/mem_reg[5][1]/Q -type DFF DFF
add mapped point ram_1/mem[13][0]/q ram_1/mem_reg[13][0]/Q -type DFF DFF
add mapped point ram_1/mem[13][7]/q ram_1/mem_reg[13][7]/Q -type DFF DFF
add mapped point ram_1/mem[1][3]/q ram_1/mem_reg[1][3]/Q -type DFF DFF
add mapped point ram_1/mem[5][5]/q ram_1/mem_reg[5][5]/Q -type DFF DFF
add mapped point ram_1/mem[14][1]/q ram_1/mem_reg[14][1]/Q -type DFF DFF
add mapped point ram_1/mem[1][4]/q ram_1/mem_reg[1][4]/Q -type DFF DFF
add mapped point ram_1/mem[5][6]/q ram_1/mem_reg[5][6]/Q -type DFF DFF
add mapped point ram_1/mem[14][3]/q ram_1/mem_reg[14][3]/Q -type DFF DFF
add mapped point ram_1/mem[5][7]/q ram_1/mem_reg[5][7]/Q -type DFF DFF
add mapped point ram_1/mem[14][4]/q ram_1/mem_reg[14][4]/Q -type DFF DFF
add mapped point ram_1/mem[0][1]/q ram_1/mem_reg[0][1]/Q -type DFF DFF
add mapped point ram_1/mem[1][6]/q ram_1/mem_reg[1][6]/Q -type DFF DFF
add mapped point ram_1/mem[6][0]/q ram_1/mem_reg[6][0]/Q -type DFF DFF
add mapped point ram_1/mem[14][6]/q ram_1/mem_reg[14][6]/Q -type DFF DFF
add mapped point ram_1/mem[14][7]/q ram_1/mem_reg[14][7]/Q -type DFF DFF
add mapped point ram_1/mem[6][1]/q ram_1/mem_reg[6][1]/Q -type DFF DFF
add mapped point ram_1/mem[15][0]/q ram_1/mem_reg[15][0]/Q -type DFF DFF
add mapped point ram_1/mem[15][2]/q ram_1/mem_reg[15][2]/Q -type DFF DFF
add mapped point ram_1/mem[1][7]/q ram_1/mem_reg[1][7]/Q -type DFF DFF
add mapped point ram_1/mem[6][2]/q ram_1/mem_reg[6][2]/Q -type DFF DFF
add mapped point ram_1/mem[13][1]/q ram_1/mem_reg[13][1]/Q -type DFF DFF
add mapped point ram_1/mem[6][3]/q ram_1/mem_reg[6][3]/Q -type DFF DFF
add mapped point ram_1/mem[15][5]/q ram_1/mem_reg[15][5]/Q -type DFF DFF
add mapped point ram_1/mem[15][6]/q ram_1/mem_reg[15][6]/Q -type DFF DFF
add mapped point ram_1/mem[15][7]/q ram_1/mem_reg[15][7]/Q -type DFF DFF
add mapped point ram_1/mem[6][5]/q ram_1/mem_reg[6][5]/Q -type DFF DFF
add mapped point ram_1/mem[1][5]/q ram_1/mem_reg[1][5]/Q -type DFF DFF
add mapped point ram_1/mem[15][4]/q ram_1/mem_reg[15][4]/Q -type DFF DFF
add mapped point ram_1/mem[6][7]/q ram_1/mem_reg[6][7]/Q -type DFF DFF
add mapped point ram_1/mem[2][0]/q ram_1/mem_reg[2][0]/Q -type DFF DFF
add mapped point ram_1/mem[7][1]/q ram_1/mem_reg[7][1]/Q -type DFF DFF
add mapped point ram_1/mem[2][1]/q ram_1/mem_reg[2][1]/Q -type DFF DFF
add mapped point ram_1/mem[7][2]/q ram_1/mem_reg[7][2]/Q -type DFF DFF
add mapped point ram_1/mem[2][3]/q ram_1/mem_reg[2][3]/Q -type DFF DFF
add mapped point ram_1/mem[7][4]/q ram_1/mem_reg[7][4]/Q -type DFF DFF
add mapped point ram_1/mem[7][3]/q ram_1/mem_reg[7][3]/Q -type DFF DFF
add mapped point ram_1/mem[2][2]/q ram_1/mem_reg[2][2]/Q -type DFF DFF
add mapped point ram_1/mem[7][6]/q ram_1/mem_reg[7][6]/Q -type DFF DFF
add mapped point ram_1/mem[7][7]/q ram_1/mem_reg[7][7]/Q -type DFF DFF
add mapped point ram_1/mem[2][4]/q ram_1/mem_reg[2][4]/Q -type DFF DFF
add mapped point ram_1/mem[2][5]/q ram_1/mem_reg[2][5]/Q -type DFF DFF
add mapped point ram_1/mem[8][0]/q ram_1/mem_reg[8][0]/Q -type DFF DFF
add mapped point ram_1/mem[2][6]/q ram_1/mem_reg[2][6]/Q -type DFF DFF
add mapped point ram_1/mem[8][1]/q ram_1/mem_reg[8][1]/Q -type DFF DFF
add mapped point ram_1/mem[8][2]/q ram_1/mem_reg[8][2]/Q -type DFF DFF
add mapped point ram_1/mem[8][3]/q ram_1/mem_reg[8][3]/Q -type DFF DFF
add mapped point ram_1/mem[2][7]/q ram_1/mem_reg[2][7]/Q -type DFF DFF
add mapped point ram_1/mem[8][5]/q ram_1/mem_reg[8][5]/Q -type DFF DFF
add mapped point ram_1/mem[8][6]/q ram_1/mem_reg[8][6]/Q -type DFF DFF
add mapped point ram_1/mem[7][0]/q ram_1/mem_reg[7][0]/Q -type DFF DFF
add mapped point ram_1/mem[6][6]/q ram_1/mem_reg[6][6]/Q -type DFF DFF
add mapped point ram_1/mem[5][2]/q ram_1/mem_reg[5][2]/Q -type DFF DFF
add mapped point ram_1/mem[7][5]/q ram_1/mem_reg[7][5]/Q -type DFF DFF
add mapped point ram_1/mem[13][2]/q ram_1/mem_reg[13][2]/Q -type DFF DFF
add mapped point ram_1/mem[13][3]/q ram_1/mem_reg[13][3]/Q -type DFF DFF
add mapped point ram_1/mem[5][3]/q ram_1/mem_reg[5][3]/Q -type DFF DFF
add mapped point ram_1/mem[13][5]/q ram_1/mem_reg[13][5]/Q -type DFF DFF
add mapped point ram_1/mem[5][4]/q ram_1/mem_reg[5][4]/Q -type DFF DFF
add mapped point ram_1/mem[13][6]/q ram_1/mem_reg[13][6]/Q -type DFF DFF
add mapped point ram_1/mem[15][3]/q ram_1/mem_reg[15][3]/Q -type DFF DFF
add mapped point ram_1/mem[0][0]/q ram_1/mem_reg[0][0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
