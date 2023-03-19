`timescale 1ns / 1ps

module tb_sin();
    
    reg[8:0] sayi;
    wire[3:0] first, second, third, fourth;
    wire sign;
    
    sinus_value uut(   
        .number(sayi),
        .first(first),
        .second(second),
        .third(third),
        .fourth(fourth),
        .sign(sign)
    );
    
    initial begin
        sayi = 9'd0;   #100;
        sayi = 9'd45;  #100;
        sayi = 9'd100; #100;
        sayi = 9'd260; #100;
        sayi = 9'd360; #100;
    end
endmodule
