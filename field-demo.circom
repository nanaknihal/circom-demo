pragma circom 2.0.0;

template Fields() {
    signal modulus <== 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    signal input x;
    signal output y <== x + modulus;
    x === y;
}

