include "./field-demo.circom";
include "./outputs.circom";

template DoSomething() {
    signal input field_demo_in;
    signal input outputs_demo_in_a;
    signal input outputs_demo_in_b;
    signal output outputs_demo_out;

    component field_demo = Fields();
    component outputs_demo = Outputs();

    field_demo.x <== field_demo_in;
    outputs_demo.a <== outputs_demo_in_a;
    outputs_demo.b <== outputs_demo_in_b;
    outputs_demo_out <== outputs_demo.c;
}

// // Only shows outputs_demo_out
// component main = DoSomething();
// // Shows field_demo_in, outputs_demo_in_a, and outputs_demo_out
component main {public [field_demo_in, outputs_demo_in_a]} = DoSomething();

