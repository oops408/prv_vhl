module divide_by_4_clock(input clk, output reg divided_clk);

reg [2:0] divide_by_4_counter = 0;

always @(posedge clk)
begin
    divide_by_4_counter <= divide_by_4_counter + 1;
    if(divide_by_4_counter == 4)
        begin
            divided_clk <= ~divided_clk;
            divide_by_4_counter <= 0;
        end
end

endmodule
