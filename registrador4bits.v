module registrador8bits(
    input clock, 
    input reset, 
    input [3:0] entrada;
    output reg [15:0] saida_reg8b
);

    begin
        saida_reg8b <= 0;
    end

    always @(posedge clk)
       begin if(rst == 1'b1) saida_reg8b <= 0;
        else 
          begin if(enable == 1'b1) saida_reg8b <= entrada; 
          end
       end
endmodule
