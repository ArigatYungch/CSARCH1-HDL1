// Yung Cheng, Adrian U. (S14)
/*
    Boolean Function Assigned
    F = (AB' + A'B)(C + D')
*/

module YungCheng(A, B, C, D, F);
    input A, B, C, D;
    output F;

    assign F = (A & ~B | ~A & B) & (C | ~D);
endmodule