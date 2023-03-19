`timescale 1ns / 1ps
// BASYS3 FPGA icin ayri bir SIN modulu olusturuldu.
// Bu modulde FPGA kabul etmedigi real gibi degiskenler kaldirildi.
// UART-FPGA arasi iletisimde bir sorun olmadan modul kullanilarak gerekli islemler hesaplanabiliyor.
module sin(
        input[8:0] number,
        output reg[3:0] first, second, third, fourth,
        output reg sign // 0: Pozitif, 1: Negatif
    );
    
    initial begin
        first = 0;
        second  = 0;
        third = 0;
        fourth = 0;
    end
    
    always @* begin
        if(number == 9'd0 || number == 9'd180) begin
            second = 0;
            third = 0;
            fourth = 0;
            sign = 0;
        end 
        else if(number == 9'd1 || number == 9'd179) begin
            second = 0;
            third = 0;
            fourth = 1;
            sign = 0;
        end 
        else if(number == 9'd2 || number == 9'd178) begin
            second = 0;
            third = 0;
            fourth = 3;
            sign = 0;
        end 
        else if(number == 9'd3 || number == 9'd177) begin
            second = 0;
            third = 0;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd4 || number == 9'd176) begin
            second = 0;
            third = 0;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd5 || number == 9'd175) begin
            second = 0;
            third = 0;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd6 || number == 9'd174) begin
            second = 0;
            third = 1;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd7 || number == 9'd173) begin
            second = 0;
            third = 1;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd8 || number == 9'd172) begin
            second = 0;
            third = 1;
            fourth = 3;
            sign = 0;
        end else if(number == 9'd9 || number == 9'd171) begin
            second = 0;
            third = 1;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd10 || number == 9'd170) begin
            second = 0;
            third = 1;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd11 || number == 9'd169) begin
            second = 0;
            third = 1;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd12 || number == 9'd168) begin
            second = 0;
            third = 2;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd13 || number == 9'd167) begin
            second = 0;
            third = 2;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd14 || number == 9'd166) begin
            second = 0;
            third = 2;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd15 || number == 9'd165) begin
            second = 0;
            third = 2;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd16 || number == 9'd164) begin
            second = 0;
            third = 2;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd17 || number == 9'd163) begin
            second = 0;
            third = 2;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd18 || number == 9'd162) begin
            second = 0;
            third = 3;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd19 || number == 9'd161) begin
            second = 0;
            third = 3;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd20 || number == 9'd160) begin
            second = 0;
            third = 3;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd21 || number == 9'd159) begin
            second = 0;
            third = 3;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd22 || number == 9'd158) begin
            second = 0;
            third = 3;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd23 || number == 9'd157) begin
            second = 0;
            third = 3;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd24 || number == 9'd156) begin
            second = 0;
            third = 4;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd25 || number == 9'd155) begin
            second = 0;
            third = 4;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd26 || number == 9'd154) begin
            second = 0;
            third = 4;
            fourth = 3;
            sign = 0;
        end else if(number == 9'd27 || number == 9'd153) begin
            second = 0;
            third = 4;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd28 || number == 9'd152) begin
            second = 0;
            third = 4;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd29 || number == 9'd151) begin
            second = 0;
            third = 4;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd30 || number == 9'd150) begin
            second = 0;
            third = 5;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd31 || number == 9'd149) begin
            second = 0;
            third = 5;
            fourth = 1;
            sign = 0;
        end else if(number == 9'd32 || number == 9'd148) begin
            second = 0;
            third = 5;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd33 || number == 9'd147) begin
            second = 0;
            third = 5;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd34 || number == 9'd146) begin
            second = 0;
            third = 5;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd35 || number == 9'd145) begin
            second = 0;
            third = 5;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd36 || number == 9'd144) begin
            second = 0;
            third = 5;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd37 || number == 9'd143) begin
            second = 0;
            third = 6;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd38 || number == 9'd142) begin
            second = 0;
            third = 6;
            fourth = 1;
            sign = 0;
        end else if(number == 9'd39 || number == 9'd141) begin
            second = 0;
            third = 6;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd40 || number == 9'd140) begin
            second = 0;
            third = 6;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd41 || number == 9'd139) begin
            second = 0;
            third = 6;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd42 || number == 9'd138) begin
            second = 0;
            third = 6;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd43 || number == 9'd137) begin
            second = 0;
            third = 6;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd44 || number == 9'd136) begin
            second = 0;
            third = 6;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd45 || number == 9'd135) begin
            second = 0;
            third = 7;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd46 || number == 9'd134) begin
            second = 0;
            third = 7;
            fourth = 1;
            sign = 0;
        end else if(number == 9'd47 || number == 9'd133) begin
            second = 0;
            third = 7;
            fourth = 3;
            sign = 0;
        end else if(number == 9'd48 || number == 9'd132) begin
            second = 0;
            third = 7;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd49 || number == 9'd131) begin
            second = 0;
            third = 7;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd50 || number == 9'd130) begin
            second = 0;
            third = 7;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd51 || number == 9'd129) begin
            second = 0;
            third = 7;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd52 || number == 9'd128) begin
            second = 0;
            third = 7;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd53 || number == 9'd127) begin
            second = 0;
            third = 8;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd54 || number == 9'd126) begin
            second = 0;
            third = 8;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd55 || number == 9'd125) begin
            second = 0;
            third = 8;
            fourth = 1;
            sign = 0;
        end else if(number == 9'd56 || number == 9'd124) begin
            second = 0;
            third = 8;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd57 || number == 9'd123) begin
            second = 0;
            third = 8;
            fourth = 3;
            sign = 0;
        end else if(number == 9'd58 || number == 9'd122) begin
            second = 0;
            third = 8;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd59 || number == 9'd121) begin
            second = 0;
            third = 8;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd60 || number == 9'd120) begin
            second = 0;
            third = 8;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd61 || number == 9'd119) begin
            second = 0;
            third = 8;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd62 || number == 9'd118) begin
            second = 0;
            third = 8;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd63 || number == 9'd117) begin
            second = 0;
            third = 8;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd64 || number == 9'd116) begin
            second = 0;
            third = 8;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd65 || number == 9'd115) begin
            second = 0;
            third = 9;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd66 || number == 9'd114) begin
            second = 0;
            third = 9;
            fourth = 1;
            sign = 0;
        end else if(number == 9'd67 || number == 9'd113) begin
            second = 0;
            third = 9;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd68 || number == 9'd112) begin
            second = 0;
            third = 9;
            fourth = 2;
            sign = 0;
        end else if(number == 9'd69 || number == 9'd111) begin
            second = 0;
            third = 9;
            fourth = 3;
            sign = 0;
        end else if(number == 9'd70 || number == 9'd110) begin
            second = 0;
            third = 9;
            fourth = 3;
            sign = 0;
        end else if(number == 9'd71 || number == 9'd109) begin
            second = 0;
            third = 9;
            fourth = 4;
            sign = 0;
        end else if(number == 9'd72 || number == 9'd108) begin
            second = 0;
            third = 9;
            fourth = 5;
            sign = 0;
        end else if(number == 9'd73 || number == 9'd107) begin
            second = 0;
            third = 9;
            fourth = 5;
        end else if(number == 9'd74 || number == 9'd106) begin
            second = 0;
            third = 9;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd75 || number == 9'd105) begin
            second = 0;
            third = 9;
            fourth = 6;
            sign = 0;
        end else if(number == 9'd76 || number == 9'd104) begin
            second = 0;
            third = 9;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd77 || number == 9'd103) begin
            second = 0;
            third = 9;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd78 || number == 9'd102) begin
            second = 0;
            third = 9;
            fourth = 7;
            sign = 0;
        end else if(number == 9'd79 || number == 9'd101) begin
            second = 0;
            third = 9;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd80 || number == 9'd100) begin
            second = 0;
            third = 9;
            fourth = 8;
            sign = 0;
        end else if(number == 9'd81 || number == 9'd99) begin
            second = 0;
            third = 9;
            fourth = 8;
        end else if(number == 9'd82 || number == 9'd98) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd83 || number == 9'd97) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd84 || number == 9'd96) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd85 || number == 9'd95) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd86 || number == 9'd94) begin
            second = 0;
            third = 9;
            fourth = 9;
        end else if(number == 9'd87 || number == 9'd93) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd88 || number == 9'd92) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd89 || number == 9'd91) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 0;
        end else if(number == 9'd90) begin
            second = 1;
            third = 0;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd180 || number == 9'd360) begin
            second = 0;
            third = 0;
            fourth = 0;
            sign = 0;
        end else if(number == 9'd181 || number == 9'd359) begin
            second = 0;
            third = 0;
            fourth = 1;
            sign = 1;
        end else if(number == 9'd182 || number == 9'd358) begin
            second = 0;
            third = 0;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd183 || number == 9'd357) begin
            second = 0;
            third = 0;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd184 || number == 9'd356) begin
            second = 0;
            third = 0;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd185 || number == 9'd355) begin
            second = 0;
            third = 0;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd186 || number == 9'd354) begin
            second = 0;
            third = 1;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd187 || number == 9'd353) begin
            second = 0;
            third = 1;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd188 || number == 9'd352) begin
            second = 0;
            third = 1;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd189 || number == 9'd351) begin
            second = 0;
            third = 1;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd190 || number == 9'd350) begin
            second = 0;
            third = 1;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd191 || number == 9'd349) begin
            second = 0;
            third = 1;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd192 || number == 9'd348) begin
            second = 0;
            third = 2;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd193 || number == 9'd347) begin
            second = 0;
            third = 2;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd194 || number == 9'd346) begin
            second = 0;
            third = 2;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd195 || number == 9'd345) begin
            second = 0;
            third = 2;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd196 || number == 9'd344) begin
            second = 0;
            third = 2;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd197 || number == 9'd343) begin
            second = 0;
            third = 2;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd198 || number == 9'd342) begin
            second = 0;
            third = 3;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd199 || number == 9'd341) begin
            second = 0;
            third = 3;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd200 || number == 9'd340) begin
            second = 0;
            third = 3;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd201 || number == 9'd339) begin
            second = 0;
            third = 3;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd202 || number == 9'd338) begin
            second = 0;
            third = 3;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd203 || number == 9'd337) begin
            second = 0;
            third = 3;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd204 || number == 9'd336) begin
            second = 0;
            third = 4;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd205 || number == 9'd335) begin
            second = 0;
            third = 4;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd206 || number == 9'd334) begin
            second = 0;
            third = 4;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd207 || number == 9'd333) begin
            second = 0;
            third = 4;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd208 || number == 9'd332) begin
            second = 0;
            third = 4;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd209 || number == 9'd331) begin
            second = 0;
            third = 4;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd210 || number == 9'd330) begin
            second = 0;
            third = 5;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd211 || number == 9'd329) begin
            second = 0;
            third = 5;
            fourth = 1;
            sign = 1;
        end else if(number == 9'd212 || number == 9'd328) begin
            second = 0;
            third = 5;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd213 || number == 9'd327) begin
            second = 0;
            third = 5;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd214 || number == 9'd326) begin
            second = 0;
            third = 5;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd215 || number == 9'd325) begin
            second = 0;
            third = 5;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd216 || number == 9'd324) begin
            second = 0;
            third = 5;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd217 || number == 9'd323) begin
            second = 0;
            third = 6;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd218 || number == 9'd322) begin
            second = 0;
            third = 6;
            fourth = 1;
            sign = 1;
        end else if(number == 9'd219 || number == 9'd321) begin
            second = 0;
            third = 6;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd220 || number == 9'd320) begin
            second = 0;
            third = 6;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd221 || number == 9'd319) begin
            second = 0;
            third = 6;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd222 || number == 9'd318) begin
            second = 0;
            third = 6;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd223 || number == 9'd317) begin
            second = 0;
            third = 6;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd224 || number == 9'd316) begin
            second = 0;
            third = 6;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd225 || number == 9'd315) begin
            second = 0;
            third = 7;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd226 || number == 9'd314) begin
            second = 0;
            third = 7;
            fourth = 1;
            sign = 1;
        end else if(number == 9'd227 || number == 9'd313) begin
            second = 0;
            third = 7;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd228 || number == 9'd312) begin
            second = 0;
            third = 7;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd229 || number == 9'd311) begin
            second = 0;
            third = 7;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd230 || number == 9'd310) begin
            second = 0;
            third = 7;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd231 || number == 9'd309) begin
            second = 0;
            third = 7;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd232 || number == 9'd308) begin
            second = 0;
            third = 7;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd233 || number == 9'd307) begin
            second = 0;
            third = 7;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd234 || number == 9'd306) begin
            second = 0;
            third = 8;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd235 || number == 9'd305) begin
            second = 0;
            third = 8;
            fourth = 1;
            sign = 1;
        end else if(number == 9'd236 || number == 9'd304) begin
            second = 0;
            third = 8;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd237 || number == 9'd303) begin
            second = 0;
            third = 8;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd238 || number == 9'd302) begin
            second = 0;
            third = 8;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd239 || number == 9'd301) begin
            second = 0;
            third = 8;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd240 || number == 9'd300) begin
            second = 0;
            third = 8;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd241 || number == 9'd299) begin
            second = 0;
            third = 8;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd242 || number == 9'd298) begin
            second = 0;
            third = 8;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd243 || number == 9'd297) begin
            second = 0;
            third = 8;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd244 || number == 9'd296) begin
            second = 0;
            third = 8;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd245 || number == 9'd295) begin
            second = 0;
            third = 9;
            fourth = 0;
            sign = 1;
        end else if(number == 9'd246 || number == 9'd294) begin
            second = 0;
            third = 9;
            fourth = 1;
            sign = 1;
        end else if(number == 9'd247 || number == 9'd293) begin
            second = 0;
            third = 9;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd248 || number == 9'd292) begin
            second = 0;
            third = 9;
            fourth = 2;
            sign = 1;
        end else if(number == 9'd249 || number == 9'd291) begin
            second = 0;
            third = 9;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd250 || number == 9'd290) begin
            second = 0;
            third =  9;
            fourth = 3;
            sign = 1;
        end else if(number == 9'd251 || number == 9'd289) begin
            second = 0;
            third = 9;
            fourth = 4;
            sign = 1;
        end else if(number == 9'd252 || number == 9'd288) begin
            second = 0;
            third = 9;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd253 || number == 9'd287) begin
            second = 0;
            third = 9;
            fourth = 5;
            sign = 1;
        end else if(number == 9'd254 || number == 9'd286) begin
            second = 0;
            third = 9;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd255 || number == 9'd285) begin
            second = 0;
            third = 9;
            fourth = 6;
            sign = 1;
        end else if(number == 9'd256 || number == 9'd284) begin
            second = 0;
            third = 9;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd257 || number == 9'd283) begin
            second = 0;
            third = 9;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd258 || number == 9'd282) begin
            second = 0;
            third = 9;
            fourth = 7;
            sign = 1;
        end else if(number == 9'd259 || number == 9'd281) begin
            second = 0;
            third = 9;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd260 || number == 9'd280) begin
            second = 0;
            third = 9;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd261 || number == 9'd279) begin
            second = 0;
            third = 9;
            fourth = 8;
            sign = 1;
        end else if(number == 9'd262 || number == 9'd278) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd263 || number == 9'd277) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd264 || number == 9'd276) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd265 || number == 9'd275) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd266 || number == 9'd274) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd267 || number == 9'd273) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd268 || number == 9'd272) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd269 || number == 9'd271) begin
            second = 0;
            third = 9;
            fourth = 9;
            sign = 1;
        end else if(number == 9'd270) begin
            second = 1;
            third = 0;
            fourth = 0;
            sign = 1;
        end
    end
endmodule