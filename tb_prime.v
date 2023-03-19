`timescale 1ns / 1ps

module tb_prime();
    
    reg[8:0] number;
    wire isPrime;
    
    prime_check uut(
        .number(number),
        .isPrime(isPrime)
        
    );
    
    initial begin   
        number = 9'd10;  #100;
        number = 9'd0;   #100;
        number = 9'd7;   #100;
        number = 9'd18;  #100;
        number = 9'd97;  #100;
        number = 9'd31;  #100;
        number = 9'd360; #100;
        number = 9'd1;   #100;
        number = 9'd2;   #100;
        number = 9'd47;  #100;
    end
endmodule
