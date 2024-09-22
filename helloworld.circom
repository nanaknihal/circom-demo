template ConstrainHelloWorld() {
    signal input should_be_hello_world[12];
    
    signal hello_world[12] <== [104, 101, 108, 108, 111, 44, 32, 119, 111, 114, 108, 100];

    for (var i = 0; i < 12; i++) {
        should_be_hello_world[i] === hello_world[i];
    }
}


template ConstrainHello5() {
    signal input should_be_hello_5[11];
    
    signal beginning[7] <== [104, 101, 108, 108, 111, 44, 32];

    for (var i = 0; i < 7; i++) {
        should_be_hello_5[i] === beginning[i];
    }
}

component main = ConstrainHello5();



