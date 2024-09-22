pragma circom 2.0.0;

template Outputs() {
    signal input a; // private by default
    signal input b; // private by default
    signal output c <== a * b; // private by default unless it's in the main component
}   

