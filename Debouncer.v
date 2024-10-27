`timescale 1ns / 1ps

/*
Debouncer for iButtons
*/
module Debouncer #(
    parameter MAX_COUNT = 20'd1000000,
    parameter WIDTH = 20
)(
    input wire iClk,
    input wire iRst,
    input wire iButton,
    output reg iButton_db
);
    reg [WIDTH-1:0] cnt;
    reg iButton_r;

    reg cs; // current state, 0: negedge, 1: posedge
    reg counting; // 0: not counting, 1: counting
    
    always @(posedge iClk, posedge iRst) begin
        if (iRst) begin
            iButton_r <= 1'b0;
        end
        else begin
            iButton_r <= iButton;
        end
    end

    always @(posedge iClk, posedge iRst) begin
        if (iRst) begin
            counting <= 1'b0;
            cnt <= 0;
            cs <= 1'b0;
            iButton_db <= 1'b0;
        end else
        if (iButton != iButton_r) begin
                counting <= 1'b1;
                cnt <= 0;
                cs <= ~iButton_r & iButton;
        end else 
        if (counting) begin
            if (cnt == MAX_COUNT) begin
                counting <= 1'b0;
                iButton_db <= cs;
            end else 
                cnt <= cnt + 1;
        end
    end
endmodule