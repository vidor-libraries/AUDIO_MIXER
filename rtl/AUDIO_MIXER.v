module AUDIO_MIXER (
  input           d_clock,
  input           d_data_valid,
  output          d_ready,
  input           d_start_packet,
  input           d_end_packet,
  input           d_data,

  output          s_clock,
  output          s_data_valid,
  input           s_ready,
  output          s_start_packet,
  output          s_end_packet,
  output          s_data,

  input       [2:0]          iCSR_ADDRESS,
  input                      iCSR_READ,
  output reg [31:0]          oCSR_READ_DATA,
  input                      iCSR_WRITE,
  input      [31:0]          iCSR_WRITE_DATA
);


endmodule
