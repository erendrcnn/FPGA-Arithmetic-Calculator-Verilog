`timescale 1ns / 1ps
// Tum hesaplama modulleri icin testbench modulu
// Her girilen input icin 4 fonksiyon da calisir.
// Her input icin ayri ayri 4 sayisal karakter ekrana basilir.
// (first second , third fourth) XY,ZT seklindedir.
module test_bench();
    
    reg[8:0]sayi;
    wire sin_sign, cos_sign;
    wire[3:0] sin_1,sin_2,sin_3,sin_4;
    wire[3:0] cos_1,cos_2,cos_3;
    wire[3:0] sqrt_1,sqrt_2,sqrt_3,sqrt_4,sqrt_5;
    wire prime;
    
    sinus_value sin_function(      
        .number(sayi),
        .first(sin_1),
        .second(sin_2),
        .third(sin_3),
        .fourth(sin_4),
        .sign(sin_sign)    
    );
	
	cosinus_value cos_function(
        .sayi(sayi),
        .tam(cos_1),
        .virgul1(cos_2),
        .virgul2(cos_3),
        .sign(cos_sign)
    );
    
    square_root square_fuction
	(
        .num_in(sayi),
        .first(sqrt_1),
        .second(sqrt_2),
        .third(sqrt_3),
        .fourth(sqrt_4),
        .fifth(sqrt_5)
    );        
	
    prime_check prime_function
	(
        .number(sayi),
        .isPrime(prime)        
    );
    
    
    initial begin
        sayi = 9'd64;  #100;
        sayi = 9'd180; #100;
        sayi = 9'd17;  #100;
        sayi = 9'd90;  #100;
        sayi = 9'd30;  #100;
        sayi = 9'd256; #100;
        sayi = 9'd91;  #100;
        sayi = 9'd137; #100;
        sayi = 9'd40;  #100;
        sayi = 9'd83;  #100;
    end
endmodule
