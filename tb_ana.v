`timescale 1ns / 1ps



module tb_ana(

    );
    
    reg clk=0;
    reg rst;
    reg [127:0] anahtar;
    reg [127:0] blok;
    reg g_gecerli;
    wire hazir;
    wire [127:0] sifre;
    wire c_gecerli;
    
    
    ana_modul  uut (clk,rst,anahtar,blok,g_gecerli,hazir,sifre,c_gecerli);
    
    initial begin
        #100;g_gecerli = 1;
        anahtar   = 128'h2b7e1516_28aed2a6_abf71588_09cf4f3c;
        blok      = 128'h3243f6a8_885a308d_313198a2_e0370734;
        rst      = 0;#100;
        g_gecerli = 1;
        anahtar   = 128'h5468617473206D79204B756E67204675;
        blok      = 128'h54776F204F6E65204E696E652054776F;
        rst      = 0;#150;
        g_gecerli = 0;
        $stop;
       
    end
    
   always begin
     clk = ~clk; #5;
    end
    
endmodule
