include "./node_modules/circomlib/circuits/poseidon.circom";

// A simple password checker that that requires no transmission of the actual password
template SimplePass() {
    signal input password;
    signal salt <== 0123456789876543210;

    signal output digest <== Poseidon(2)([password, salt]);
    
}

component main = SimplePass();


