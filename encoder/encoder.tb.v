`timescale 1ns/1ps

module encoder_2to1_tb;

    reg I0;
    reg I1;
    wire Y;

    // Instantiate the encoder
    encoder_2to1 uut (
        .I0(I0),
        .I1(I1),
        .Y(Y)
    );

    initial begin

        $display("2-to-1 Encoder Simulation");
        $display("-------------------------");
        $monitor("Time=%0t | I0=%b I1=%b | Y=%b",
                 $time, I0, I1, Y);

        // Test 1: No input
        I0 = 0;
        I1 = 0;
        #10;

        // Test 2: I0 active
        I0 = 1;
        I1 = 0;
        #10;

        // Test 3: I1 active
        I0 = 0;
        I1 = 1;
        #10;

        // Test 4: Both inputs active
        I0 = 1;
        I1 = 1;
        #10;

        $finish;
    end

endmodule