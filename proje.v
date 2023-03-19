`timescale 1ns / 1ps
// PROJE ANA MODULU:
//
// Bu modul icerisinde 4 adet hesaplama ve 1 adet alici modulu bulunur:
//    - sinus degeri
//    - cosinus degeri
//    - kok alma degeri
//    - asal sayi kontrolu
//    * UART klavyeden girdi alici
// 
// Ana modulde klavyeden gelen veri degerlendirilir ve 7 segmentli ekrana LED olarak yansitilir.
module proje(
        input clk, // BASYS 3 FPGA'da 100 Mhz saat kaynagi
        input reset, RxD, // reset ve RxD sinyali
        output reg [3:0] Anode_Activate, // 7 segmentli LED ekranin anot sinyalleri
        output reg [6:0] LED_out,
        output reg dp // katot desenleri
    );
    
    reg [26:0] one_second_counter; // 1 saniyelik saat etkinlestirme sayaci
    wire one_second_enable; // sayilari saymak icin bir saniye etkinlestirme
    reg [15:0] displayed_number; // goruntulenecek sayi
    reg [15:0] islem_cikti = 16'd0; // goruntulenecek sayi icin islem secilmesi
    reg [3:0] LED_BCD;
    reg [19:0] refresh_counter; // 10,5 ms yenileme suresi veya 380 Hz yenileme hizi olusturmak icin 20 bit
                                // 2,6 ms basamakli 4 LED etkinlestirme sinyali olusturmak icin ilk 2 MSB biti
    wire [1:0] LED_activating_counter; 
    //       count:    0   ->  1  ->  2  ->  3
    // etkinlestir:    LED1    LED2   LED3   LED4
    // tekrar et ve devam et.
    wire [7:0] keyboard;        
    reg[8:0] bellek;
 
    reciever inp(
        .clk(clk), 
        .reset(reset),  
        .RxD(RxD),            
        .RxData(keyboard)
    );
    
    wire sin_sign, cos_sign; // 0: Pozitif, 1: Negatif
    wire [3:0] sqrt_s1, sqrt_s2, sqrt_s3, sqrt_s4;
    wire [3:0] sin_s1, sin_s2, sin_s3, sin_s4;
    wire [3:0] cos_s1, cos_s2, cos_s3, cos_s4;
    wire prime_s1,prime_s2,prime_s3,prime_s4;

    sin sin1(
        .number(bellek),
        .first(sin_s1),
        .second(sin_s2),
        .third(sin_s3),
        .fourth(sin_s4),
        .sign(sin_sign)
    );

    cos cos1(
        .number(bellek),
        .first(cos_s1),
        .second(cos_s2),
        .third(cos_s3),
        .fourth(cos_s4),
        .sign(cos_sign)
    );

    square square1(
        .number(bellek),
        .first(sqrt_s1),
        .second(sqrt_s2),
        .third(sqrt_s3),
        .fourth(sqrt_s4)
    );

    prime prime1(
        .number(bellek),
        .first(prime_s1),
        .second(prime_s2),
        .third(prime_s3),
        .fourth(prime_s4)
    );
    
    reg flag = 1'b0;
    always@(posedge clk) begin
        if(RxD == 0)
            flag = 1'b1;
        else
            flag = 1'b0;    
    end
    
    reg [8:0] temp = 15'd0;
    reg [15:0] sonuc = 15'd0;
    
    always@(posedge flag) begin          
        if(48 <= keyboard && keyboard <= 57)begin
            temp = temp*10 + (keyboard - 48);
            bellek = 9'd0;
        end else if(keyboard == 32) begin  
            bellek <= temp;
            temp = 15'd0;              
        end else if(keyboard == 81) begin // KEY: "Q" (Square Modulu)
            islem_cikti = sqrt_s1*1000 + sqrt_s2*100 + sqrt_s3*10 + sqrt_s4;
        end else if(keyboard == 66) begin // KEY: "B" (Sin Modulu)
            if (sin_sign == 1'b1) begin // NEGATIF
                islem_cikti = (4'b1010)*1000 + sin_s2*100 + sin_s3*10 + sin_s4;
            end else if (sin_sign == 1'b0) begin // POZITIF
                islem_cikti = sin_s1*1000 + sin_s2*100 + sin_s3*10 + sin_s4;
            end
        end else if(keyboard == 67) begin // KEY: "C" (Cos Modulu)
            if (cos_sign == 1'b1) begin // NEGATIF
                islem_cikti = (4'b1010)*1000 + cos_s2*100 + cos_s3*10 + cos_s4;
            end else if (cos_sign == 1'b0) begin // POZITIF
                islem_cikti = cos_s1*1000 + cos_s2*100 + cos_s3*10 + cos_s4;
            end
        end else if(keyboard == 80) begin // KEY: "P" (Prime Modulu)
            islem_cikti = prime_s1*1000 + prime_s2*100 + prime_s3*10 + prime_s4;
        end
    end    
                         
    always @(posedge clk or posedge reset) begin
        if(reset == 1)
            one_second_counter <= 0;
        else begin
            if(one_second_counter >= 99999999) 
                one_second_counter <= 0;
            else
                one_second_counter <= one_second_counter + 1;
        end
    end 
    
    assign one_second_enable = (one_second_counter == 99999999) ? 1 : 0; // 1 saniye oldugunda enable durumuna getir.
    always @(posedge clk or posedge reset) begin
        if(reset == 1)
            displayed_number <= 0;
        else if(one_second_enable == 1)
            displayed_number <= islem_cikti;
    end
    
    always @(posedge clk or posedge reset) begin 
        if(reset == 1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[19:18];
    // 4 LED icin anot etkinlestirme sinyalleri, 2,6 ms'lik basamak periyodu
    // anot sinyalleri uretmek icin kod cozucu
    always @(*)
    begin
        case(LED_activating_counter)
        2'b00: begin
            Anode_Activate = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            dp = 1;
            LED_BCD = displayed_number / 1000;
            // 16 bitlik sayinin birinci basamagi
              end
        2'b01: begin
            Anode_Activate = 4'b1011;
            dp = 0; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_BCD = (displayed_number % 1000) / 100;
            // 16 bitlik sayinin ikinci basamagi
              end
        2'b10: begin
            Anode_Activate = 4'b1101; 
            dp = 1;
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_BCD = ((displayed_number % 1000) % 100) / 10;
            // 16 bitlik sayinin ucuncu basamagi
                end
        2'b11: begin
            Anode_Activate = 4'b1110;
            dp = 1; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            LED_BCD = ((displayed_number % 1000) % 100) % 10;
            // 16 bitlik sayinin dorduncu basamagi
               end
        endcase
    end
    // 7 segmentli LED ekranin katot desenleri
    always @(*) begin
        case(LED_BCD)
            4'b0000: LED_out = 7'b0000001; // "0"     
            4'b0001: LED_out = 7'b1001111; // "1" 
            4'b0010: LED_out = 7'b0010010; // "2" 
            4'b0011: LED_out = 7'b0000110; // "3" 
            4'b0100: LED_out = 7'b1001100; // "4" 
            4'b0101: LED_out = 7'b0100100; // "5" 
            4'b0110: LED_out = 7'b0100000; // "6" 
            4'b0111: LED_out = 7'b0001111; // "7" 
            4'b1000: LED_out = 7'b0000000; // "8"     
            4'b1001: LED_out = 7'b0000100; // "9"
            4'b1010: LED_out = 7'b1111110; // (-) isaret
            default: LED_out = 7'b0000001; // "0"
        endcase
    end
 endmodule
