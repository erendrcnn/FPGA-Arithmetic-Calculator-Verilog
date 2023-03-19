`timescale 1ns / 1ps
// BASYS3 FPGA icin ayri bir SQUARE modulu olusturuldu.
// Bu modulde FPGA kabul etmedigi real gibi degiskenler kaldirildi.
// UART-FPGA arasi iletisimde bir sorun olmadan modul kullanilarak gerekli islemler hesaplanabiliyor.
module square(
        input[8:0] number,
        output reg[3:0] first,second,third,fourth
    );
    
    always@*begin
            if(number == 9'd0) begin
                first = 0;
                second = 0;
                third = 0;
                fourth = 0;
            end else if(number == 9'd1) begin
                first = 0;
                second = 1;
                third = 0;
                fourth = 0;
            end else if(number == 9'd2) begin
                first = 0;
                second = 1;
                third = 4;
                fourth = 1;
            end else if(number == 9'd3) begin
                first = 0;
                second = 1;
                third = 7;
                fourth = 3;
            end else if(number == 9'd4) begin
                first = 0;
                second = 2;
                third = 0;
                fourth = 0;
            end else if(number == 9'd5) begin
                first = 0;
                second = 2;
                third = 2;
                fourth = 3;
            end else if(number == 9'd6) begin
                first = 0;
                second = 2;
                third = 4;
                fourth = 4;
            end else if(number == 9'd7) begin
                first = 0;
                second = 2;
                third = 6;
                fourth = 4;
            end else if(number == 9'd8) begin
                first = 0;
                second = 2;
                third = 8;
                fourth = 2;
            end else if(number == 9'd9) begin
                first = 0;
                second = 3;
                third = 0;
                fourth = 0;
            end else if(number == 9'd10) begin
                first = 0;
                second = 3;
                third = 1;
                fourth = 6;
            end else if(number == 9'd11) begin
                first = 0;
                second = 3;
                third = 3;
                fourth = 1;
            end else if(number == 9'd12) begin
                first = 0;
                second = 3;
                third = 4;
                fourth = 6;
            end else if(number == 9'd13) begin
                first = 0;
                second = 3;
                third = 6;
                fourth = 0;
            end else if(number == 9'd14) begin
                first = 0;
                second = 3;
                third = 7;
                fourth = 4;
            end else if(number == 9'd15) begin
                first = 0;
                second = 3;
                third = 8;
                fourth = 7;
            end else if(number == 9'd16) begin
                first = 0;
                second = 4;
                third = 0;
                fourth = 0;
            end else if(number == 9'd17) begin
                first = 0;
                second = 4;
                third = 1;
                fourth = 2;
            end else if(number == 9'd18) begin
                first = 0;
                second = 4;
                third = 2;
                fourth = 4;
            end else if(number == 9'd19) begin
                first = 0;
                second = 4;
                third = 3;
                fourth = 5;
            end else if(number == 9'd20) begin
                first = 0;
                second = 4;
                third = 4;
                fourth = 7;
            end else if(number == 9'd21) begin
                first = 0;
                second = 4;
                third = 5;
                fourth = 8;
            end else if(number == 9'd22) begin
                first = 0;
                second = 4;
                third = 6;
                fourth = 9;
            end else if(number == 9'd23) begin
                first = 0;
                second = 4;
                third = 7;
                fourth = 9;
            end else if(number == 9'd24) begin
                first = 0;
                second = 4;
                third = 8;
                fourth = 9;
            end else if(number == 9'd25) begin
                first = 0;
                second = 5;
                third = 0;
                fourth = 0;
            end else if(number == 9'd26) begin
                first = 0;
                second = 5;
                third = 0;
                fourth = 9;
            end else if(number == 9'd27) begin
                first = 0;
                second = 5;
                third = 1;
                fourth = 9;
            end else if(number == 9'd28) begin
                first = 0;
                second = 5;
                third = 2;
                fourth = 9;
            end else if(number == 9'd29) begin
                first = 0;
                second = 5;
                third = 3;
                fourth = 8;
            end else if(number == 9'd30) begin
                first = 0;
                second = 5;
                third = 4;
                fourth = 7;
            end else if(number == 9'd31) begin
                first = 0;
                second = 5;
                third = 5;
                fourth = 6;
            end else if(number == 9'd32) begin
                first = 0;
                second = 5;
                third = 6;
                fourth = 5;
            end else if(number == 9'd33) begin
                first = 0;
                second = 5;
                third = 7;
                fourth = 4;
            end else if(number == 9'd34) begin
                first = 0;
                second = 5;
                third = 8;
                fourth = 3;
            end else if(number == 9'd35) begin
                first = 0;
                second = 5;
                third = 9;
                fourth = 1;
            end else if(number == 9'd36) begin
                first = 0;
                second = 6;
                third = 0;
                fourth = 0;
            end else if(number == 9'd37) begin
                first = 0;
                second = 6;
                third = 8;
                fourth = 0;
            end else if(number == 9'd38) begin
                first = 0;
                second = 6;
                third = 1;
                fourth = 6;
            end else if(number == 9'd39) begin
                first = 0;
                second = 6;
                third = 2;
                fourth = 4;
            end else if(number == 9'd40) begin
                first = 0;
                second = 6;
                third = 3;
                fourth = 2;
            end else if(number == 9'd41) begin
                first = 0;
                second = 6;
                third = 4;
                fourth = 0;
            end else if(number == 9'd42) begin
                first = 0;
                second = 6;
                third = 4;
                fourth = 8;
            end else if(number == 9'd43) begin
                first = 0;
                second = 6;
                third = 5;
                fourth = 5;
            end else if(number == 9'd44) begin
                first = 0;
                second = 6;
                third = 6;
                fourth = 3;
            end else if(number == 9'd45) begin
                first = 0;
                second = 6;
                third = 7;
                fourth = 0;
            end else if(number == 9'd46) begin
                first = 0;
                second = 6;
                third = 7;
                fourth = 8;
            end else if(number == 9'd47) begin
                first = 0;
                second = 6;
                third = 8;
                fourth = 5;
            end else if(number == 9'd48) begin
                first = 0;
                second = 6;
                third = 9;
                fourth = 2;
            end else if(number == 9'd49) begin
                first = 0;
                second = 7;
                third = 0;
                fourth = 0;
            end else if(number == 9'd50) begin
                first = 0;
                second = 7;
                third = 0;
                fourth = 7;
            end else if(number == 9'd51) begin
                first = 0;
                second = 7;
                third = 1;
                fourth = 4;
            end else if(number == 9'd52) begin
                first = 0;
                second = 7;
                third = 2;
                fourth = 1;
            end else if(number == 9'd53) begin
                first = 0;
                second = 7;
                third = 2;
                fourth = 8;
            end else if(number == 9'd54) begin
                first = 0;
                second = 7;
                third = 3;
                fourth = 4;
            end else if(number == 9'd55) begin
                first = 0;
                second = 7;
                third = 4;
                fourth = 1;
            end else if(number == 9'd56) begin
                first = 0;
                second = 7;
                third = 4;
                fourth = 8;
            end else if(number == 9'd57) begin
                first = 0;
                second = 7;
                third = 5;
                fourth = 4;
            end else if(number == 9'd58) begin
                first = 0;
                second = 7;
                third = 6;
                fourth = 1;
            end else if(number == 9'd59) begin
                first = 0;
                second = 7;
                third = 6;
                fourth = 8;
            end else if(number == 9'd60) begin
                first = 0;
                second = 7;
                third = 7;
                fourth = 4;
            end else if(number == 9'd61) begin
                first = 0;
                second = 7;
                third = 8;
                fourth = 1;
            end else if(number == 9'd62) begin
                first = 0;
                second = 7;
                third = 8;
                fourth = 7;
            end else if(number == 9'd63) begin
                first = 0;
                second = 7;
                third = 9;
                fourth = 3;
            end else if(number == 9'd64) begin
                first = 0;
                second = 8;
                third = 0;
                fourth = 0;
            end else if(number == 9'd65) begin
                first = 0;
                second = 8;
                third = 0;
                fourth = 6;
            end else if(number == 9'd66) begin
                first = 0;
                second = 8;
                third = 1;
                fourth = 2;
            end else if(number == 9'd67) begin
                first = 0;
                second = 8;
                third = 1;
                fourth = 8;
            end else if(number == 9'd68) begin
                first = 0;
                second = 8;
                third = 2;
                fourth = 4;
            end else if(number == 9'd69) begin
                first = 0;
                second = 8;
                third = 3;
                fourth = 0;
            end else if(number == 9'd70) begin
                first = 0;
                second = 8;
                third = 3;
                fourth = 6;
            end else if(number == 9'd71) begin
                first = 0;
                second = 8;
                third = 4;
                fourth = 2;
            end else if(number == 9'd72) begin
                first = 0;
                second = 8;
                third = 4;
                fourth = 8;
            end else if(number == 9'd73) begin
                first = 0;
                second = 8;
                third = 5;
                fourth = 4;
            end else if(number == 9'd74) begin
                first = 0;
                second = 8;
                third = 6;
                fourth = 0;
            end else if(number == 9'd75) begin
                first = 0;
                second = 8;
                third = 6;
                fourth = 6;
            end else if(number == 9'd76) begin
                first = 0;
                second = 8;
                third = 7;
                fourth = 1;
            end else if(number == 9'd77) begin
                first = 0;
                second = 8;
                third = 7;
                fourth = 7;
            end else if(number == 9'd78) begin
                first = 0;
                second = 8;
                third = 8;
                fourth = 3;
            end else if(number == 9'd79) begin
                first = 0;
                second = 8;
                third = 8;
                fourth = 8;
            end else if(number == 9'd80) begin
                first = 0;
                second = 8;
                third = 9;
                fourth = 4;
            end else if(number == 9'd81) begin
                first = 0;
                second = 9;
                third = 0;
                fourth = 0;
            end else if(number == 9'd82) begin
                first = 0;
                second = 9;
                third = 0;
                fourth = 5;
            end else if(number == 9'd83) begin
                first = 0;
                second = 9;
                third = 1;
                fourth = 1;
            end else if(number == 9'd84) begin
                first = 0;
                second = 9;
                third = 1;
                fourth = 6;
            end else if(number == 9'd85) begin
                first = 0;
                second = 9;
                third = 2;
                fourth = 1;
            end else if(number == 9'd86) begin
                first = 0;
                second = 9;
                third = 2;
                fourth = 7;
            end else if(number == 9'd87) begin
                first = 0;
                second = 9;
                third = 3;
                fourth = 2;
            end else if(number == 9'd88) begin
                first = 0;
                second = 9;
                third = 3;
                fourth = 8;
            end else if(number == 9'd89) begin
                first = 0;
                second = 9;
                third = 4;
                fourth = 3;
            end else if(number == 9'd90) begin
                first = 0;
                second = 9;
                third = 4;
                fourth = 8;
            end else if(number == 9'd91) begin
                first = 0;
                second = 9;
                third = 5;
                fourth = 3;
            end else if(number == 9'd92) begin
                first = 0;
                second = 9;
                third = 5;
                fourth = 9;
            end else if(number == 9'd93) begin
                first = 0;
                second = 9;
                third = 6;
                fourth = 4;
            end else if(number == 9'd94) begin
                first = 0;
                second = 9;
                third = 6;
                fourth = 9;
            end else if(number == 9'd95) begin
                first = 0;
                second = 9;
                third = 7;
                fourth = 4;
            end else if(number == 9'd96) begin
                first = 0;
                second = 9;
                third = 7;
                fourth = 9;
            end else if(number == 9'd97) begin
                first = 0;
                second = 9;
                third = 8;
                fourth = 4;
            end else if(number == 9'd98) begin
                first = 0;
                second = 9;
                third = 8;
                fourth = 9;
            end else if(number == 9'd99) begin
                first = 0;
                second = 9;
                third = 9;
                fourth = 4;
            end else if(number == 9'd100) begin
                first = 1;
                second = 0;
                third = 0;
                fourth = 0;
            end else if(number == 9'd101) begin
                first = 1;
                second = 0;
                third = 0;
                fourth = 4;
            end else if(number == 9'd102) begin
                first = 1;
                second = 0;
                third = 0;
                fourth = 9;
            end else if(number == 9'd103) begin
                first = 1;
                second = 0;
                third = 1;
                fourth = 4;
            end else if(number == 9'd104) begin
                first = 1;
                second = 0;
                third = 1;
                fourth = 9;
            end else if(number == 9'd105) begin
                first = 1;
                second = 0;
                third = 2;
                fourth = 4;
            end else if(number == 9'd106) begin
                first = 1;
                second = 0;
                third = 2;
                fourth = 9;
            end else if(number == 9'd107) begin
                first = 1;
                second = 0;
                third = 3;
                fourth = 4;
            end else if(number == 9'd108) begin
                first = 1;
                second = 0;
                third = 3;
                fourth = 9;
            end else if(number == 9'd109) begin
                first = 1;
                second = 0;
                third = 4;
                fourth = 4;
            end else if(number == 9'd110) begin
                first = 1;
                second = 0;
                third = 4;
                fourth = 8;
            end else if(number == 9'd111) begin
                first = 1;
                second = 0;
                third = 5;
                fourth = 3;
            end else if(number == 9'd112) begin
                first = 1;
                second = 0;
                third = 5;
                fourth = 8;
            end else if(number == 9'd113) begin
                first = 1;
                second = 0;
                third = 6;
                fourth = 3;
            end else if(number == 9'd114) begin
                first = 1;
                second = 0;
                third = 6;
                fourth = 7;
            end else if(number == 9'd115) begin
                first = 1;
                second = 0;
                third = 7;
                fourth = 2;
            end else if(number == 9'd116) begin
                first = 1;
                second = 0;
                third = 7;
                fourth = 7;
            end else if(number == 9'd117) begin
                first = 1;
                second = 0;
                third = 8;
                fourth = 1;
            end else if(number == 9'd118) begin
                first = 1;
                second = 0;
                third = 8;
                fourth = 6;
            end else if(number == 9'd119) begin
                first = 1;
                second = 0;
                third = 9;
                fourth = 0;
            end else if(number == 9'd120) begin
                first = 1;
                second = 0;
                third = 9;
                fourth = 5;
            end else if(number == 9'd121) begin
                first = 1;
                second = 1;
                third = 0;
                fourth = 0;
            end else if(number == 9'd122) begin
                first = 1;
                second = 1;
                third = 0;
                fourth = 4;
            end else if(number == 9'd123) begin
                first = 1;
                second = 1;
                third = 0;
                fourth = 9;
            end else if(number == 9'd124) begin
                first = 1;
                second = 1;
                third = 1;
                fourth = 3;
            end else if(number == 9'd125) begin
                first = 1;
                second = 1;
                third = 1;
                fourth = 8;
            end else if(number == 9'd126) begin
                first = 1;
                second = 1;
                third = 2;
                fourth = 2;
            end else if(number == 9'd127) begin
                first = 1;
                second = 1;
                third = 2;
                fourth = 6;
            end else if(number == 9'd128) begin
                first = 1;
                second = 1;
                third = 3;
                fourth = 1;
            end else if(number == 9'd129) begin
                first = 1;
                second = 1;
                third = 3;
                fourth = 5;
            end else if(number == 9'd130) begin
                first = 1;
                second = 1;
                third = 4;
                fourth = 0;
            end else if(number == 9'd131) begin
                first = 1;
                second = 1;
                third = 4;
                fourth = 4;
            end else if(number == 9'd132) begin
                first = 1;
                second = 1;
                third = 4;
                fourth = 8;
            end else if(number == 9'd133) begin
                first = 1;
                second = 1;
                third = 5;
                fourth = 3;
            end else if(number == 9'd134) begin
                first = 1;
                second = 1;
                third = 5;
                fourth = 7;
            end else if(number == 9'd135) begin
                first = 1;
                second = 1;
                third = 6;
                fourth = 1;
            end else if(number == 9'd136) begin
                first = 1;
                second = 1;
                third = 6;
                fourth = 6;
            end else if(number == 9'd137) begin
                first = 1;
                second = 1;
                third = 7;
                fourth = 0;
            end else if(number == 9'd138) begin
                first = 1;
                second = 1;
                third = 7;
                fourth = 4;
            end else if(number == 9'd139) begin
                first = 1;
                second = 1;
                third = 7;
                fourth = 8;
            end else if(number == 9'd140) begin
                first = 1;
                second = 1;
                third = 8;
                fourth = 3;
            end else if(number == 9'd141) begin
                first = 1;
                second = 1;
                third = 8;
                fourth = 7;
            end else if(number == 9'd142) begin
                first = 1;
                second = 1;
                third = 9;
                fourth = 1;
            end else if(number == 9'd143) begin
                first = 1;
                second = 1;
                third = 9;
                fourth = 5;
            end else if(number == 9'd144) begin
                first = 1;
                second = 2;
                third = 0;
                fourth = 0;
            end else if(number == 9'd145) begin
                first = 1;
                second = 2;
                third = 0;
                fourth = 4;
            end else if(number == 9'd146) begin
                first = 1;
                second = 2;
                third = 0;
                fourth = 8;
            end else if(number == 9'd147) begin
                first = 1;
                second = 2;
                third = 1;
                fourth = 2;
            end else if(number == 9'd148) begin
                first = 1;
                second = 2;
                third = 1;
                fourth = 6;
            end else if(number == 9'd149) begin
                first = 1;
                second = 2;
                third = 2;
                fourth = 0;
            end else if(number == 9'd150) begin
                first = 1;
                second = 2;
                third = 2;
                fourth = 4;
            end else if(number == 9'd151) begin
                first = 1;
                second = 2;
                third = 2;
                fourth = 8;
            end else if(number == 9'd152) begin
                first = 1;
                second = 2;
                third = 3;
                fourth = 2;
            end else if(number == 9'd153) begin
                first = 1;
                second = 2;
                third = 3;
                fourth = 6;
            end else if(number == 9'd154) begin
                first = 1;
                second = 2;
                third = 4;
                fourth = 0;
            end else if(number == 9'd155) begin
                first = 1;
                second = 2;
                third = 4;
                fourth = 4;
            end else if(number == 9'd156) begin
                first = 1;
                second = 2;
                third = 4;
                fourth = 8;
            end else if(number == 9'd157) begin
                first = 1;
                second = 2;
                third = 5;
                fourth = 2;
            end else if(number == 9'd158) begin
                first = 1;
                second = 2;
                third = 5;
                fourth = 6;
            end else if(number == 9'd159) begin
                first = 1;
                second = 2;
                third = 6;
                fourth = 0;
            end else if(number == 9'd160) begin
                first = 1;
                second = 2;
                third = 6;
                fourth = 4;
            end else if(number == 9'd161) begin
                first = 1;
                second = 2;
                third = 6;
                fourth = 8;
            end else if(number == 9'd162) begin
                first = 1;
                second = 2;
                third = 7;
                fourth = 2;
            end else if(number == 9'd163) begin
                first = 1;
                second = 2;
                third = 7;
                fourth = 6;
            end else if(number == 9'd164) begin
                first = 1;
                second = 2;
                third = 8;
                fourth = 0;
            end else if(number == 9'd165) begin
                first = 1;
                second = 2;
                third = 8;
                fourth = 4;
            end else if(number == 9'd166) begin
                first = 1;
                second = 2;
                third = 8;
                fourth = 8;
            end else if(number == 9'd167) begin
                first = 1;
                second = 2;
                third = 9;
                fourth = 2;
            end else if(number == 9'd168) begin
                first = 1;
                second = 2;
                third = 9;
                fourth = 6;
            end else if(number == 9'd169) begin
                first = 1;
                second = 3;
                third = 0;
                fourth = 0;
            end else if(number == 9'd170) begin
                first = 1;
                second = 3;
                third = 0;
                fourth = 3;
            end else if(number == 9'd171) begin
                first = 1;
                second = 3;
                third = 0;
                fourth = 7;
            end else if(number == 9'd172) begin
                first = 1;
                second = 3;
                third = 1;
                fourth = 1;
            end else if(number == 9'd173) begin
                first = 1;
                second = 3;
                third = 1;
                fourth = 5;
            end else if(number == 9'd174) begin
                first = 1;
                second = 3;
                third = 1;
                fourth = 9;
            end else if(number == 9'd175) begin
                first = 1;
                second = 3;
                third = 2;
                fourth = 2;
            end else if(number == 9'd176) begin
                first = 1;
                second = 3;
                third = 2;
                fourth = 6;
            end else if(number == 9'd177) begin
                first = 1;
                second = 3;
                third = 3;
                fourth = 0;
            end else if(number == 9'd178) begin
                first = 1;
                second = 3;
                third = 3;
                fourth = 4;
            end else if(number == 9'd179) begin
                first = 1;
                second = 3;
                third = 3;
                fourth = 7;
            end else if(number == 9'd180) begin
                first = 1;
                second = 3;
                third = 4;
                fourth = 1;
            end else if(number == 9'd181) begin
                first = 1;
                second = 3;
                third = 4;
                fourth = 5;
            end else if(number == 9'd182) begin
                first = 1;
                second = 3;
                third = 4;
                fourth = 9;
            end else if(number == 9'd183) begin
                first = 1;
                second = 3;
                third = 5;
                fourth = 2;
            end else if(number == 9'd184) begin
                first = 1;
                second = 3;
                third = 5;
                fourth = 6;
            end else if(number == 9'd185) begin
                first = 1;
                second = 3;
                third = 6;
                fourth = 0;
            end else if(number == 9'd186) begin
                first = 1;
                second = 3;
                third = 6;
                fourth = 3;
            end else if(number == 9'd187) begin
                first = 1;
                second = 3;
                third = 6;
                fourth = 7;
            end else if(number == 9'd188) begin
                first = 1;
                second = 3;
                third = 7;
                fourth = 1;
            end else if(number == 9'd189) begin
                first = 1;
                second = 3;
                third = 7;
                fourth = 4;
            end else if(number == 9'd190) begin
                first = 1;
                second = 3;
                third = 7;
                fourth = 8;
            end else if(number == 9'd191) begin
                first = 1;
                second = 3;
                third = 8;
                fourth = 2;
            end else if(number == 9'd192) begin
                first = 1;
                second = 3;
                third = 8;
                fourth = 5;
            end else if(number == 9'd193) begin
                first = 1;
                second = 3;
                third = 8;
                fourth = 9;
            end else if(number == 9'd194) begin
                first = 1;
                second = 3;
                third = 9;
                fourth = 2;
            end else if(number == 9'd195) begin
                first = 1;
                second = 3;
                third = 9;
                fourth = 6;
            end else if(number == 9'd196) begin
                first = 1;
                second = 4;
                third = 0;
                fourth = 0;
            end else if(number == 9'd197) begin
                first = 1;
                second = 4;
                third = 0;
                fourth = 3;
            end else if(number == 9'd198) begin
                first = 1;
                second = 4;
                third = 0;
                fourth = 7;
            end else if(number == 9'd199) begin
                first = 1;
                second = 4;
                third = 1;
                fourth = 0;
            end else if(number == 9'd200) begin
                first = 1;
                second = 4;
                third = 1;
                fourth = 4;
            end else if(number == 9'd201) begin
                first = 1;
                second = 4;
                third = 1;
                fourth = 7;
            end else if(number == 9'd202) begin
                first = 1;
                second = 4;
                third = 2;
                fourth = 1;
            end else if(number == 9'd203) begin
                first = 1;
                second = 4;
                third = 2;
                fourth = 4;
            end else if(number == 9'd204) begin
                first = 1;
                second = 4;
                third = 2;
                fourth = 8;
            end else if(number == 9'd205) begin
                first = 1;
                second = 4;
                third = 3;
                fourth = 1;
            end else if(number == 9'd206) begin
                first = 1;
                second = 4;
                third = 3;
                fourth = 5;
            end else if(number == 9'd207) begin
                first = 1;
                second = 4;
                third = 3;
                fourth = 8;
            end else if(number == 9'd208) begin
                first = 1;
                second = 4;
                third = 4;
                fourth = 2;
            end else if(number == 9'd209) begin
                first = 1;
                second = 4;
                third = 4;
                fourth = 5;
            end else if(number == 9'd210) begin
                first = 1;
                second = 4;
                third = 4;
                fourth = 9;
            end else if(number == 9'd211) begin
                first = 1;
                second = 4;
                third = 5;
                fourth = 2;
            end else if(number == 9'd212) begin
                first = 1;
                second = 4;
                third = 5;
                fourth = 6;
            end else if(number == 9'd213) begin
                first = 1;
                second = 4;
                third = 5;
                fourth = 9;
            end else if(number == 9'd214) begin
                first = 1;
                second = 4;
                third = 6;
                fourth = 2;
            end else if(number == 9'd215) begin
                first = 1;
                second = 4;
                third = 6;
                fourth = 6;
            end else if(number == 9'd216) begin
                first = 1;
                second = 4;
                third = 6;
                fourth = 9;
            end else if(number == 9'd217) begin
                first = 1;
                second = 4;
                third = 7;
                fourth = 3;
            end else if(number == 9'd218) begin
                first = 1;
                second = 4;
                third = 7;
                fourth = 6;
            end else if(number == 9'd219) begin
                first = 1;
                second = 4;
                third = 7;
                fourth = 9;
            end else if(number == 9'd220) begin
                first = 1;
                second = 4;
                third = 8;
                fourth = 3;
            end else if(number == 9'd221) begin
                first = 1;
                second = 4;
                third = 8;
                fourth = 6;
            end else if(number == 9'd222) begin
                first = 1;
                second = 4;
                third = 8;
                fourth = 9;
            end else if(number == 9'd223) begin
                first = 1;
                second = 4;
                third = 9;
                fourth = 3;
            end else if(number == 9'd224) begin
                first = 1;
                second = 4;
                third = 9;
                fourth = 6;
            end else if(number == 9'd225) begin
                first = 1;
                second = 5;
                third = 0;
                fourth = 0;
            end else if(number == 9'd226) begin
                first = 1;
                second = 5;
                third = 0;
                fourth = 3;
            end else if(number == 9'd227) begin
                first = 1;
                second = 5;
                third = 0;
                fourth = 6;
            end else if(number == 9'd228) begin
                first = 1;
                second = 5;
                third = 0;
                fourth = 9;
            end else if(number == 9'd229) begin
                first = 1;
                second = 5;
                third = 1;
                fourth = 3;
            end else if(number == 9'd230) begin
                first = 1;
                second = 5;
                third = 1;
                fourth = 6;
            end else if(number == 9'd231) begin
                first = 1;
                second = 5;
                third = 1;
                fourth = 9;
            end else if(number == 9'd232) begin
                first = 1;
                second = 5;
                third = 2;
                fourth = 3;
            end else if(number == 9'd233) begin
                first = 1;
                second = 5;
                third = 2;
                fourth = 6;
            end else if(number == 9'd234) begin
                first = 1;
                second = 5;
                third = 2;
                fourth = 9;
            end else if(number == 9'd235) begin
                first = 1;
                second = 5;
                third = 3;
                fourth = 2;
            end else if(number == 9'd236) begin
                first = 1;
                second = 5;
                third = 3;
                fourth = 6;
            end else if(number == 9'd237) begin
                first = 1;
                second = 5;
                third = 3;
                fourth = 9;
            end else if(number == 9'd238) begin
                first = 1;
                    second = 5;
                    third = 4;
                    fourth = 2;
                end else if(number == 9'd239) begin
                    first = 1;
                    second = 5;
                    third = 4;
                    fourth = 5;
                end else if(number == 9'd240) begin
                    first = 1;
                    second = 5;
                    third = 4;
                    fourth = 9;
                end else if(number == 9'd241) begin
                    first = 1;
                    second = 5;
                    third = 5;
                    fourth = 2;
                end else if(number == 9'd242) begin
                    first = 1;
                    second = 5;
                    third = 5;
                    fourth = 5;
                end else if(number == 9'd243) begin
                    first = 1;
                    second = 5;
                    third = 5;
                    fourth = 8;
                end else if(number == 9'd244) begin
                    first = 1;
                    second = 5;
                    third = 6;
                    fourth = 2;
                end else if(number == 9'd245) begin
                    first = 1;
                    second = 5;
                    third = 6;
                    fourth = 5;
                end else if(number == 9'd246) begin
                    first = 1;
                    second = 5;
                    third = 6;
                    fourth = 8;
                end else if(number == 9'd247) begin
                    first = 1;
                    second = 5;
                    third = 7;
                    fourth = 1;
                end else if(number == 9'd248) begin
                    first = 1;
                    second = 5;
                    third = 7;
                    fourth = 4;
                end else if(number == 9'd249) begin
                    first = 1;
                    second = 5;
                    third = 7;
                    fourth = 7;
                end else if(number == 9'd250) begin
                    first = 1;
                    second = 5;
                    third = 8;
                    fourth = 1;
                end else if(number == 9'd251) begin
                    first = 1;
                    second = 5;
                    third = 8;
                    fourth = 4;
                end else if(number == 9'd252) begin
                    first = 1;
                    second = 5;
                    third = 8;
                    fourth = 7;
                end else if(number == 9'd253) begin
                    first = 1;
                    second = 5;
                    third = 9;
                    fourth = 0;
                end else if(number == 9'd254) begin
                    first = 1;
                    second = 5;
                    third = 9;
                    fourth = 3;
                end else if(number == 9'd255) begin
                    first = 1;
                    second = 5;
                    third = 9;
                    fourth = 6;
                end else if(number == 9'd256) begin
                    first = 1;
                    second = 6;
                    third = 0;
                    fourth = 0;
                end else if(number == 9'd257) begin
                    first = 1;
                    second = 6;
                    third = 0;
                    fourth = 3;
                end else if(number == 9'd258) begin
                    first = 1;
                    second = 6;
                    third = 0;
                    fourth = 6;
                end else if(number == 9'd259) begin
                    first = 1;
                    second = 6;
                    third = 0;
                    fourth = 9;
                end else if(number == 9'd260) begin
                    first = 1;
                    second = 6;
                    third = 1;
                    fourth = 2;
                end else if(number == 9'd261) begin
                    first = 1;
                    second = 6;
                    third = 1;
                    fourth = 5;
                end else if(number == 9'd262) begin
                    first = 1;
                    second = 6;
                    third = 1;
                    fourth = 8;
                end else if(number == 9'd263) begin
                    first = 1;
                    second = 6;
                    third = 2;
                    fourth = 1;
                end else if(number == 9'd264) begin
                    first = 1;
                    second = 6;
                    third = 2;
                    fourth = 4;
                end else if(number == 9'd265) begin
                    first = 1;
                    second = 6;
                    third = 2;
                    fourth = 7;
                end else if(number == 9'd266) begin
                    first = 1;
                    second = 6;
                    third = 3;
                    fourth = 0;
                end else if(number == 9'd267) begin
                    first = 1;
                    second = 6;
                    third = 3;
                    fourth = 4;
                end else if(number == 9'd268) begin
                    first = 1;
                    second = 6;
                    third = 3;
                    fourth = 7;
                end else if(number == 9'd269) begin
                    first = 1;
                    second = 6;
                    third = 4;
                    fourth = 0;
                end else if(number == 9'd270) begin
                    first = 1;
                    second = 6;
                    third = 4;
                    fourth = 3;
                end else if(number == 9'd271) begin
                    first = 1;
                    second = 6;
                    third = 4;
                    fourth = 6;
                end else if(number == 9'd272) begin
                    first = 1;
                    second = 6;
                    third = 4;
                    fourth = 9;
                end else if(number == 9'd273) begin
                    first = 1;
                    second = 6;
                    third = 5;
                    fourth = 2;
                end else if(number == 9'd274) begin
                    first = 1;
                    second = 6;
                    third = 5;
                    fourth = 5;
                end else if(number == 9'd275) begin
                    first = 1;
                    second = 6;
                    third = 5;
                    fourth = 8;
                end else if(number == 9'd276) begin
                    first = 1;
                    second = 6;
                    third = 6;
                    fourth = 1;
                end else if(number == 9'd277) begin
                    first = 1;
                    second = 6;
                    third = 6;
                    fourth = 4;
                end else if(number == 9'd278) begin
                    first = 1;
                    second = 6;
                    third = 6;
                    fourth = 7;
                end else if(number == 9'd279) begin
                    first = 1;
                    second = 6;
                    third = 7;
                    fourth = 0;
                end else if(number == 9'd280) begin
                    first = 1;
                    second = 6;
                    third = 7;
                    fourth = 3;
                end else if(number == 9'd281) begin
                    first = 1;
                    second = 6;
                    third = 7;
                    fourth = 6;
                end else if(number == 9'd282) begin
                    first = 1;
                    second = 6;
                    third = 7;
                    fourth = 9;
                end else if(number == 9'd283) begin
                    first = 1;
                    second = 6;
                    third = 8;
                    fourth = 2;
                end else if(number == 9'd284) begin
                    first = 1;
                    second = 6;
                    third = 8;
                    fourth = 5;
                end else if(number == 9'd285) begin
                    first = 1;
                    second = 6;
                    third = 8;
                    fourth = 8;
                end else if(number == 9'd286) begin
                    first = 1;
                    second = 6;
                    third = 9;
                    fourth = 1;
                end else if(number == 9'd287) begin
                    first = 1;
                    second = 6;
                    third = 9;
                    fourth = 4;
                end else if(number == 9'd288) begin
                    first = 1;
                    second = 6;
                    third = 9;
                    fourth = 7;
                end else if(number == 9'd289) begin
                    first = 1;
                    second = 7;
                    third = 0;
                    fourth = 0;
                end else if(number == 9'd290) begin
                    first = 1;
                    second = 7;
                    third = 0;
                    fourth = 2;
                end else if(number == 9'd291) begin
                    first = 1;
                    second = 7;
                    third = 0;
                    fourth = 5;
                end else if(number == 9'd292) begin
                    first = 1;
                    second = 7;
                    third = 0;
                    fourth = 8;
                end else if(number == 9'd293) begin
                    first = 1;
                    second = 7;
                    third = 1;
                    fourth = 1;
                end else if(number == 9'd294) begin
                    first = 1;
                    second = 7;
                    third = 1;
                    fourth = 4;
                end else if(number == 9'd295) begin
                    first = 1;
                    second = 7;
                    third = 1;
                    fourth = 7;
                end else if(number == 9'd296) begin
                    first = 1;
                    second = 7;
                    third = 2;
                    fourth = 0;
                end else if(number == 9'd297) begin
                    first = 1;
                    second = 7;
                    third = 2;
                    fourth = 3;
                end else if(number == 9'd298) begin
                    first = 1;
                    second = 7;
                    third = 2;
                    fourth = 6;
                end else if(number == 9'd299) begin
                    first = 1;
                    second = 7;
                    third = 2;
                    fourth = 9;
                end else if(number == 9'd300) begin
                    first = 1;
                    second = 7;
                    third = 3;
                    fourth = 2;
                end else if(number == 9'd301) begin
                    first = 1;
                    second = 7;
                    third = 3;
                    fourth = 4;
                end else if(number == 9'd302) begin
                    first = 1;
                    second = 7;
                    third = 3;
                    fourth = 7;
                end else if(number == 9'd303) begin
                    first = 1;
                    second = 7;
                    third = 4;
                    fourth = 0;
                end else if(number == 9'd304) begin
                    first = 1;
                    second = 7;
                    third = 4;
                    fourth = 3;
                end else if(number == 9'd305) begin
                    first = 1;
                    second = 7;
                    third = 4;
                    fourth = 6;
                end else if(number == 9'd306) begin
                    first = 1;
                    second = 7;
                    third = 4;
                    fourth = 9;
                end else if(number == 9'd307) begin
                    first = 1;
                    second = 7;
                    third = 5;
                    fourth = 2;
                end else if(number == 9'd308) begin
                    first = 1;
                    second = 7;
                    third = 5;
                    fourth = 4;
                end else if(number == 9'd309) begin
                    first = 1;
                    second = 7;
                    third = 5;
                    fourth = 7;
                end else if(number == 9'd310) begin
                    first = 1;
                    second = 7;
                    third = 6;
                    fourth = 0;
                end else if(number == 9'd311) begin
                    first = 1;
                    second = 7;
                    third = 6;
                    fourth = 3;
                end else if(number == 9'd312) begin
                    first = 1;
                    second = 7;
                    third = 6;
                    fourth = 6;
                end else if(number == 9'd313) begin
                    first = 1;
                    second = 7;
                    third = 6;
                    fourth = 9;
                end else if(number == 9'd314) begin
                    first = 1;
                    second = 7;
                    third = 7;
                    fourth = 2;
                end else if(number == 9'd315) begin
                    first = 1;
                    second = 7;
                    third = 7;
                    fourth = 4;
                end else if(number == 9'd316) begin
                    first = 1;
                    second = 7;
                    third = 7;
                    fourth = 7;
                end else if(number == 9'd317) begin
                    first = 1;
                    second = 7;
                    third = 8;
                    fourth = 0;
                end else if(number == 9'd318) begin
                    first = 1;
                    second = 7;
                    third = 8;
                    fourth = 3;
                end else if(number == 9'd319) begin
                    first = 1;
                    second = 7;
                    third = 8;
                    fourth = 6;
                end else if(number == 9'd320) begin
                    first = 1;
                    second = 7;
                    third = 8;
                    fourth = 8;
                end else if(number == 9'd321) begin
                    first = 1;
                    second = 7;
                    third = 9;
                    fourth = 1;
                end else if(number == 9'd322) begin
                    first = 1;
                    second = 7;
                    third = 9;
                    fourth = 4;
                end else if(number == 9'd323) begin
                    first = 1;
                    second = 7;
                    third = 9;
                    fourth = 7;
                end else if(number == 9'd324) begin
                    first = 1;
                    second = 8;
                    third = 0;
                    fourth = 0;
                end else if(number == 9'd325) begin
                    first = 1;
                    second = 8;
                    third = 0;
                    fourth = 2;
                end else if(number == 9'd326) begin
                    first = 1;
                    second = 8;
                    third = 0;
                    fourth = 5;
                end else if(number == 9'd327) begin
                    first = 1;
                    second = 8;
                    third = 0;
                    fourth = 8;
                end else if(number == 9'd328) begin
                    first = 1;
                    second = 8;
                    third = 1;
                    fourth = 1;
                end else if(number == 9'd329) begin
                    first = 1;
                    second = 8;
                    third = 1;
                    fourth = 3;
                end else if(number == 9'd330) begin
                    first = 1;
                    second = 8;
                    third = 1;
                    fourth = 6;
                end else if(number == 9'd331) begin
                    first = 1;
                    second = 8;
                    third = 1;
                    fourth = 9;
                end else if(number == 9'd332) begin
                    first = 1;
                    second = 8;
                    third = 2;
                    fourth = 2;
                end else if(number == 9'd333) begin
                    first = 1;
                    second = 8;
                    third = 2;
                    fourth = 4;
                end else if(number == 9'd334) begin
                    first = 1;
                    second = 8;
                    third = 2;
                    fourth = 7;
                end else if(number == 9'd335) begin
                    first = 1;
                    second = 8;
                    third = 3;
                    fourth = 0;
                end else if(number == 9'd336) begin
                    first = 1;
                    second = 8;
                    third = 3;
                    fourth = 3;
                end else if(number == 9'd337) begin
                    first = 1;
                    second = 8;
                    third = 3;
                    fourth = 5;
                end else if(number == 9'd338) begin
                    first = 1;
                    second = 8;
                    third = 3;
                    fourth = 8;
                end else if(number == 9'd339) begin
                    first = 1;
                    second = 8;
                    third = 4;
                    fourth = 1;
                end else if(number == 9'd340) begin
                    first = 1;
                    second = 8;
                    third = 4;
                    fourth = 3;
                end else if(number == 9'd341) begin
                    first = 1;
                    second = 8;
                    third = 4;
                    fourth = 6;
                end else if(number == 9'd342) begin
                    first = 1;
                    second = 8;
                    third = 4;
                    fourth = 9;
                end else if(number == 9'd343) begin
                    first = 1;
                    second = 8;
                    third = 5;
                    fourth = 2;
                end else if(number == 9'd344) begin
                    first = 1;
                    second = 8;
                    third = 5;
                    fourth = 4;
                end else if(number == 9'd345) begin
                    first = 1;
                    second = 8;
                    third = 5;
                    fourth = 7;
                end else if(number == 9'd346) begin
                    first = 1;
                    second = 8;
                    third = 6;
                    fourth = 0;
                end else if(number == 9'd347) begin
                    first = 1;
                    second = 8;
                    third = 6;
                    fourth = 2;
                end else if(number == 9'd348) begin
                    first = 1;
                    second = 8;
                    third = 6;
                    fourth = 5;
                end else if(number == 9'd349) begin
                    first = 1;
                    second = 8;
                    third = 6;
                    fourth = 8;
                end else if(number == 9'd350) begin
                    first = 1;
                    second = 8;
                    third = 7;
                    fourth = 0;
                end else if(number == 9'd351) begin
                    first = 1;
                    second = 8;
                    third = 7;
                    fourth = 3;
                end else if(number == 9'd352) begin
                    first = 1;
                    second = 8;
                    third = 7;
                    fourth = 6;
                end else if(number == 9'd353) begin
                    first = 1;
                    second = 8;
                    third = 7;
                    fourth = 8;
                end else if(number == 9'd354) begin
                    first = 1;
                    second = 8;
                    third = 8;
                    fourth = 1;
                end else if(number == 9'd355) begin
                    first = 1;
                    second = 8;
                    third = 8;
                    fourth = 4;
                end else if(number == 9'd356) begin
                    first = 1;
                    second = 8;
                    third = 8;
                    fourth = 6;
                end else if(number == 9'd357) begin
                    first = 1;
                    second = 8;
                    third = 8;
                    fourth = 9;
                end else if(number == 9'd358) begin
                    first = 1;
                    second = 8;
                    third = 9;
                    fourth = 2;
                end else if(number == 9'd359) begin
                    first = 1;
                    second = 8;
                    third = 9;
                    fourth = 4;
                end else if(number == 9'd360) begin
                    first = 1;
                    second = 8;
                    third = 9;
                    fourth = 7;
                end
    end
endmodule