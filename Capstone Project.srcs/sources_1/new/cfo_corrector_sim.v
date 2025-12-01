// simple cfo_corrector (simulation friendly, uses real math via $cos/$sin in behavioural sim)
module cfo_corrector_sim (
    input  wire clk, rstn,
    input  wire valid_in,
    input  wire signed [15:0] in_i, in_q,
    input  real cfo_hz, // pass from testbench for simulation
    input  real fs,
    output reg  valid_out,
    output reg signed [15:0] out_i, out_q
);
    real phase;
    initial phase = 0.0;
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            phase <= 0.0;
            valid_out <= 0;
        end else begin
            if (valid_in) begin
                real c = $cos(-2.0*3.141592653589793*cfo_hz/$itor(fs) + phase);
                real s = $sin(-2.0*3.141592653589793*cfo_hz/$itor(fs) + phase);
                real r = $itor(in_i) * c - $itor(in_q) * s;
                real im = $itor(in_i) * s + $itor(in_q) * c;
                out_i <= $rtoi(r);
                out_q <= $rtoi(im);
                valid_out <= 1;
                phase <= phase + 0.0; // if using dynamic phase update, update here
            end else begin
                valid_out <= 0;
            end
        end
    end
endmodule
