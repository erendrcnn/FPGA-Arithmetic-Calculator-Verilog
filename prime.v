`timescale 1ns / 1ps
// BASYS3 FPGA icin ayri bir PRIME modulu olusturuldu.
// Bu modulde FPGA kabul etmedigi real gibi degiskenler kaldirildi.
// UART-FPGA arasi iletisimde bir sorun olmadan modul kullanilarak gerekli islemler hesaplanabiliyor.
module prime(
        input[8:0] number,
        output reg first,second,third,fourth
    );  
    
    initial begin 
        first = 0;
        second = 0;
        third = 0;
        fourth = 0;
    end
    
    always@*begin
        if(number == 9'd2) begin
            second = 1;
        end	else if(number == 9'd3) begin
            second = 1;
        end	else if(number == 9'd5) begin
            second = 1;
        end	else if(number == 9'd7) begin
            second = 1;
        end	else if(number == 9'd11) begin
            second = 1;
        end	else if(number == 9'd13) begin
            second = 1;
        end	else if(number == 9'd17) begin
            second = 1;
        end	else if(number == 9'd19) begin
            second = 1;
        end	else if(number == 9'd23) begin
            second = 1;
        end	else if(number == 9'd29) begin
            second = 1;
        end	else if(number == 9'd31) begin
            second = 1;
        end	else if(number == 9'd37) begin
            second = 1;
        end	else if(number == 9'd41) begin
            second = 1;
        end	else if(number == 9'd43) begin
            second = 1;
        end	else if(number == 9'd47) begin
            second = 1;
        end	else if(number == 9'd53) begin
            second = 1;
        end	else if(number == 9'd59) begin
            second = 1;
        end	else if(number == 9'd61) begin
            second = 1;
        end	else if(number == 9'd67) begin
            second = 1;
        end	else if(number == 9'd71) begin
            second = 1;
        end	else if(number == 9'd73) begin
            second = 1;
        end	else if(number == 9'd79) begin
            second = 1;
        end	else if(number == 9'd83) begin
            second = 1;
        end	else if(number == 9'd89) begin
            second = 1;
        end	else if(number == 9'd97) begin
            second = 1;
        end	else if(number == 9'd101) begin
            second = 1;
        end	else if(number == 9'd103) begin
            second = 1;
        end	else if(number == 9'd107) begin
            second = 1;
        end	else if(number == 9'd109) begin
            second = 1;
        end	else if(number == 9'd113) begin
            second = 1;
        end	else if(number == 9'd127) begin
            second = 1;
        end	else if(number == 9'd131) begin
            second = 1;
        end	else if(number == 9'd137) begin
            second = 1;
        end	else if(number == 9'd139) begin
            second = 1;
        end	else if(number == 9'd149) begin
            second = 1;
        end	else if(number == 9'd151) begin
            second = 1;
        end	else if(number == 9'd157) begin
            second = 1;
        end	else if(number == 9'd163) begin
            second = 1;
        end	else if(number == 9'd167) begin
            second = 1;
        end	else if(number == 9'd173) begin
            second = 1;
        end	else if(number == 9'd179) begin
            second = 1;
        end	else if(number == 9'd181) begin
            second = 1;
        end	else if(number == 9'd191) begin
            second = 1;
        end	else if(number == 9'd193) begin
            second = 1;
        end	else if(number == 9'd197) begin
            second = 1;
        end	else if(number == 9'd199) begin
            second = 1;
        end	else if(number == 9'd211) begin
            second = 1;
        end	else if(number == 9'd223) begin
            second = 1;
        end	else if(number == 9'd227) begin
            second = 1;
        end	else if(number == 9'd229) begin
            second = 1;
        end	else if(number == 9'd233) begin
            second = 1;
        end	else if(number == 9'd239) begin
            second = 1;
        end	else if(number == 9'd241) begin
            second = 1;
        end	else if(number == 9'd251) begin
            second = 1;
        end	else if(number == 9'd257) begin
            second = 1;
        end	else if(number == 9'd263) begin
            second = 1;
        end	else if(number == 9'd269) begin
            second = 1;
        end	else if(number == 9'd271) begin
            second = 1;
        end	else if(number == 9'd277) begin
            second = 1;
        end	else if(number == 9'd281) begin
            second = 1;
        end	else if(number == 9'd283) begin
            second = 1;
        end	else if(number == 9'd293) begin
            second = 1;
        end	else if(number == 9'd307) begin
            second = 1;
        end	else if(number == 9'd311) begin
            second = 1;
        end	else if(number == 9'd313) begin
            second = 1;
        end	else if(number == 9'd317) begin
            second = 1;
        end	else if(number == 9'd331) begin
            second = 1;
        end	else if(number == 9'd337) begin
            second = 1;
        end	else if(number == 9'd347) begin
            second = 1;
        end	else if(number == 9'd349) begin
            second = 1;
        end	else if(number == 9'd353) begin
            second = 1;
        end	else if(number == 9'd359) begin
            second = 1;
        end else begin
            second = 0;
        end
    end
endmodule