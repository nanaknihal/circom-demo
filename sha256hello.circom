include "./node_modules/circomlib/circuits/sha256/sha256.circom";
include "./node_modules/circomlib/circuits/bitify.circom";

template ConstrainHelloSHA256() {
    signal input should_be_hello_5[11];
    
    signal beginning[7] <== [104, 101, 108, 108, 111, 44, 32];

    for (var i = 0; i < 7; i++) {
        should_be_hello_5[i] === beginning[i];
    }

    component sha256 = Sha256(8 * 11);
    component n2b[11];

    for (var i = 0; i < 11; i++) {
        n2b[i] = Num2Bits(8);
        n2b[i].in <== should_be_hello_5[i];
        for (var j = 0; j < 8; j++) {
            sha256.in[i * 8 + j] <== n2b[i].out[j];
        }
    }

    signal output digest[256] <== sha256.out;
}

component main = ConstrainHelloSHA256();

