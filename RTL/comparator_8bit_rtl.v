// File: comparator_8bit.v (no reset)
module comparator_8bit (
    input clk,
    input [7:0] a,
    input [7:0] b,
    output reg a_gt_b,
    output reg a_lt_b,
    output reg a_eq_b
);

    reg [7:0] a_reg, b_reg;

    always @(posedge clk) begin
        a_reg <= a;
        b_reg <= b;

        if (a > b) begin
            a_gt_b <= 1;
            a_lt_b <= 0;
            a_eq_b <= 0;
        end else if (a < b) begin
            a_gt_b <= 0;
            a_lt_b <= 1;
            a_eq_b <= 0;
        end else begin
            a_gt_b <= 0;
            a_lt_b <= 0;
            a_eq_b <= 1;
        end
    end

endmodule

