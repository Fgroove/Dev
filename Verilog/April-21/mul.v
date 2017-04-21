module mul(A,B,O,ck,strat,fin);
input [7:0] A,B;
input ck,start;
output [16:0] O;
output fin;
reg [7:0] AIN,BIN;
reg [3:0] st;
reg ck,start,fin;
reg [16:0] O;

always @(posedge ck) begin
        if(start == 1) begin 
            st <= 0;
            O <= 0;
            AIN <= A;
            BIN <= B;
            fin <=0;
            if
            case(st)
                0:    begin
                       O <= (O << 1) + AIN & BIN[7];
                       st <= 1;
                      end
                1:    begin
                       O <= (O << 1) + AIN & BIN[6];
                       st <= 2;
                      end
                2:    begin
                       O <= (O << 1) + AIN & BIN[5];
                       st <= 3;
                      end
                3:    begin
                       O <= (O << 1) + AIN & BIN[4];
                       st <= 4;
                      end
                4:    begin
                       O <= (O << 1) + AIN & BIN[3];
                       st <= 5;
                      end
                5:    begin
                       O <= (O << 1) + AIN & BIN[2];
                       st <= 6;
                      end
                6:    begin
                       O <= (O << 1) + AIN & BIN[1];
                       st <= 7;
                      end
                7:    begin
                       O <= (O << 1) + AIN & BIN[0];
                       fin <= 1;
                       st <= 8;
                       break;
                      end
                8:    begin
                       fin <= 0;
                      end
        end
end
endmodule


