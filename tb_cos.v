`timescale 1ns / 1ps

module tb_cos();

    reg[8:0] Sayi;
    wire[3:0] tam, virgul1, virgul2;
    wire sign;
    
    cosinus_value uut(
        .sayi(Sayi),
        .tam(tam),
        .virgul1(virgul1),
        .virgul2(virgul2),
        .sign(sign)
    );
    
    initial begin
        Sayi = 9'd0;   #10;
        Sayi = 9'd15;  #10;
        Sayi = 9'd30;  #10;
        Sayi = 9'd45;  #10;
        Sayi = 9'd60;  #10;
        Sayi = 9'd75;  #10;
        Sayi = 9'd90;  #10;
    
        Sayi = 9'd235; #10;
        Sayi = 9'd125; #10;   
    
        Sayi = 9'd0;   #10;
        Sayi = 9'd90;  #10;
        Sayi = 9'd180; #10;
        Sayi = 9'd270; #10;
        Sayi = 9'd360; #10;
    end
endmodule
