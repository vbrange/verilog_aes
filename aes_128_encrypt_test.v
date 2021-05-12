module TestBench_Aes128Encrypt;
  reg clk = 1;
  reg reset_n = 0;
  reg [127:0] in;
  reg [127:0] key;
  wire [127:0] out;
  wire ready;

  always #1 clk = ~clk;

  initial begin
    key = 0;
    in = 0;

    reset_n = 0;
    @(posedge clk);

    reset_n = 1;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);

    $finish;
  end

  always @(posedge clk) begin
    $display("ready %b %x", ready, out);
  end

  Aes128Encrypt a (
    .clk(clk),
    .reset_n(reset_n),
    .in(in),
    .key(key),
    .out(out),
    .ready(ready)
  );
endmodule