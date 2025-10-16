// 4-bit SISO Shift Register
module SISO (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [3:0] q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 4'b0000;
    else
        q <= {q[2:0], serial_in}; // Shift right and insert serial_in
end

endmodule