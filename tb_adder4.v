
module tb_adder4(
);
    reg [63:0]a;
	reg [63:0]b;
	wire [64:0]sout;
    adder4 uut(a,b,sout);
    initial begin
    a=64'd18446744073709551614;
    b=64'd1;
  
    #2
    a=64'd08446744073709551614;
    b=64'd10000000000000000000;

    #2
    a=64'd184;
    b=64'd1256; //beklenen toplam 1440
       
    #2
    a=64'd14;
    b=64'd7;
    
    #2
    a=64'd156596564;
    b=64'd125556; //beklenen toplam 156722120

    end
endmodule
