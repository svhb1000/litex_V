module sdrio(
    input clk,
	output reg pad2in,
	input oe,
	inout pad,
	input out2pad
);

reg _oe, _out2pad;
wire _pad2in;

assign pad = _oe ? _out2pad : 1'bz;
assign _pad2in = pad;

always @(posedge clk)
    begin
        _oe      <= oe;
        _out2pad <= out2pad;
        pad2in   <= _pad2in;
    end

endmodule
