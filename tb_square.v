`timescale 1ns / 1ps

module tb_square();

	reg [8:0] num_in;
	wire [3:0] first,second,third,fourth,fifth;

	square_root uut(
        .num_in(num_in),
        .first(first),
        .second(second),
        .third(third),
        .fourth(fourth),
        .fifth(fifth)
    );
		
	initial begin    
		num_in = 180;  #100;
		num_in = 4;    #100;
		num_in = 64;   #100;
		num_in = 289;  #100;
	end
endmodule