module testbench;
    reg a;
    wire b;
    notgate uut(
        .a(a),
        .b(b)
    );
    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0,testbench);

        a=0;
        #100
        a=1;
        #100
        $finish;
    end   
endmodule