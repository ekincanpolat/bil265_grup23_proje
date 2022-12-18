


module tb_main(

    );
    reg clk; // clock
    reg rst_n; // active-low reset
    reg btnl_i; // Left button
    reg btnu_i; // Upper button
    reg btnr_i; // Right button
    reg btnd_i; // Down button
    reg rx_i; // UART receive
    wire tx_o; // UART transmit
    // wire [87:0]deneme;
    
    bil265_proje_top uut(clk,rst_n,btnl_i,btnu_i,btnr_i,btnd_i,rx_i,tx_o); //deneme istenirse eklenebilir,
    // ana modülde de yorumdan kaldýrýlmalýdýr.
    
    always begin
    #5;
    clk =~clk;
    end
    
    
    
    initial begin
    
    rst_n=1'b0;
    clk=1'b0;
    rx_i=1'd1;
    btnl_i=1'b1;
    btnu_i=1'b0;
    btnr_i=1'b1;
    btnd_i=1'b0;
    #10;
    rst_n=1'b1;
    btnl_i=1'b0;
    btnu_i=1'b0;
    btnr_i=1'b1;
    btnd_i=1'b0;

    end
endmodule
