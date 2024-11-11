// Only for numbers and letters which can be
// displayed well on a seven-segment nixie tube
`define DISP_OFF 8'b11111111
`define DISP_ON 8'b11111110
`define DISP_0 8'b00000011
`define DISP_1 8'b10011111
`define DISP_2 8'b00100101
`define DISP_3 8'b00001101
`define DISP_4 8'b10011001
`define DISP_5 8'b01001001
`define DISP_6 8'b01000001
`define DISP_7 8'b00011111
`define DISP_8 8'b00000001
`define DISP_9 8'b00001001
`define DISP_A 8'b00010001
`define DISP_B 8'b11000001
`define DISP_C 8'b01100011
`define DISP_D 8'b10000101
`define DISP_E 8'b01100001
`define DISP_F 8'b01110001
`define DISP_G 8'b01000011
`define DISP_H 8'b10010001
`define DISP_L 8'b11100001
`define DISP_O 8'b00000011
`define DISP_P 8'b00110001
`define DISP_U 8'b10000011
// for select the nixie tube
`define SEL_0 8'b01111111
`define SEL_1 8'b10111111
`define SEL_2 8'b11011111
`define SEL_3 8'b11101111
`define SEL_4 8'b11110111
`define SEL_5 8'b11111011
`define SEL_6 8'b11111101
`define SEL_7 8'b11111110