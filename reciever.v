`timescale 1ns / 1ps
// UART RECIEVER Modulu:
// Bu modulde klavyeden her gelen key sinyali durum makinelerinde belirli islemlerden gecirilir.
// Gelen keylerin ASCII degerleri RxData sinyali uzerinden disari cikti verilir.
// Terminalimizi COM portuna baglayarak FPGA-Klavye arasi iletisimi bu modul sayesinde saglariz.
module reciever(
        input clk, //input saati
        input reset, //input reset girisi
        input RxD, //input receving data sinyali        
        output [7:0]RxData
    );
    
    //internal variables
    reg shift; // kaydirma verilerini tetiklemek icin sinyali kaydir
    reg state, nextstate; // ilk durum ve sonraki durum degiskeni
    reg [3:0] bitcounter; // UART alimi icin 9'a kadar sayilacak 4 bitlik sayac
    reg [1:0] samplecounter; // Asiri ornekleme icin 4'e kadar saymak icin 2 bitlik ornek sayaci
    reg [13:0] counter; // baud hizini saymak icin 14 bit sayac
    reg [9:0] rxshiftreg; //bit kaydirma kaydi
    reg clear_bitcounter, inc_bitcounter, inc_samplecounter, clear_samplecounter; // sayaci temizle veya arttir
    
    // constants
    parameter clk_freq = 100_000_000;  // sistem saat frekansi
    parameter baud_rate = 9_600; // baud hizi
    parameter div_sample = 4; // asiri ornekleme
    parameter div_counter = clk_freq/(baud_rate*div_sample);  // (baud_rate) degerinden daha yuksek bir frekans (div_sample) zamani elde etmek icin sistem saat frekansini bolmemiz gereken sayi
    parameter mid_sample = (div_sample/2);  // orneklemek istediginiz yerin orta noktasidir
    parameter div_bit = 10; // 1 baslangic, 8 veri, 1 durak

    assign RxData = rxshiftreg [8:1]; // shiftregister'dan RxData'yi ata
    // UART alici algoritmasi
    always @ (posedge clk)
        begin 
            if (reset)begin // eger sifirlama gecerliyse
                state <=0; // durumu bosta olarak ayarla
                bitcounter <=0; // bit sayacini sifirla
                counter <=0; // sayaci sifirla
                samplecounter <=0; // ornek sayaci sifirla
            end else begin // eger resetleme yapilmamissa
                //ready <= 1'b0;
                counter <= counter +1; // sayacta sayimi baslat
                if (counter >= div_counter-1) begin // eger sayici ornekleme ile baud hizina ulasirsa
                    counter <=0; // sayaci sifirla
                    state <= nextstate; // durumu nextstate'e ata
                    if (shift)rxshiftreg <= {RxD,rxshiftreg[9:1]}; // vardiya belirtilmisse, alici verileri yukleyin
                    if (clear_samplecounter) samplecounter <=0; // sample sayacini temizle belirtilmisse, sample sayacini sifirla
                    if (inc_samplecounter) samplecounter <= samplecounter +1; // eger artis sayaci belirtilmisse, sample sayimini baslat
                    if (clear_bitcounter) bitcounter <=0; // bit sayacini temizle belirtilmisse, bit sayacini sifirla
                    if (inc_bitcounter)bitcounter <= bitcounter +1; // bit sayacini artirma islemi uygulanmissa, sayim bit sayacini baslat
                end
            end
        end
       
    //state machine
    
    always @ (posedge clk) // saate gore tetiklenir
    begin 
        shift <= 0; // herhangi bir kaymayi onlemek icin shift degerini 0 olarak ayarlayin
        clear_samplecounter <=0; // sifirlamayi onlemek icin sample sayacini temizlemeyi 0'a ayarlayin
        inc_samplecounter <=0; // herhangi bir artisi onlemek icin artis ornek sayacini 0'a ayarlayin
        clear_bitcounter <=0; // acik bit sayacini netlestirmeyi onlemek icin 0'a ayarlayin
        inc_bitcounter <=0; // herhangi bir sayimi onlemek icin artis bit sayacini ayarla
        nextstate <=0; // sonraki durumu bos durum olarak ayarla
        case (state)
            0: begin // BOS DURUM
                if (RxD) begin// giris RxD veri satiri belirtilmisse
                    nextstate <=0; // iletimi baslatmak icin RxD'nin dusuk olmasi gerektiginden bos duruma geri donun
                end
                else begin // eger giris RxD veri satiri belirtilmemisse
                    nextstate <=1; // alma durumuna gec
                    clear_bitcounter <=1; // bit sayacini temizlemek icin tetik
                    clear_samplecounter <=1; // sample sayacini temizlemek icin tetik
                end
            end
            1: begin // VERI ALMA DURUMU
                nextstate <= 1; // VARSAYILAN
                if (samplecounter == mid_sample - 1) shift <= 1; // sample sayaci 1 ise tetik kaydirma
                    if (samplecounter== div_sample - 1) begin // kullanilan ornekleme hizi 3 oldugundan ornek sayaci 3 ise
                        if (bitcounter == div_bit - 1) begin // bit sayacinin 9 olup olmadigini kontrol edin
                            nextstate <= 0; // alma tamamlandiginda bit sayaci 9 ise bos duruma geri don
                            //ready <= 1'b1;
                        end 
                    inc_bitcounter <=1; // bit sayaci 9 degilse artis bit sayacini tetikle
                    clear_samplecounter <=1; // sample sayacini sifirlamak icin sample sayacini tetikle
                end else inc_samplecounter <=1; // ornek 3'e esit degilse saymaya devam et
            end
           default: nextstate <=0; // Varsayilan : BOS DURUM
         endcase
    end         
endmodule

