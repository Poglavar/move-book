// Copyright (c) Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

#[allow(unused_variable)]
module book::expression {

#[test]
fun expression_examples() {

// ANCHOR: empty
// variable `a` has no value;
let a;
// ANCHOR_END: empty

// ANCHOR: literals
let b = true;     // true is a literal
let n = 1000;     // 1000 is a literal
let h = 0x0A;     // 0x0A is a literal
let v = b"hello"; // b'hello' is a byte vector literal
let x = x"0A";    // x'0A' is a byte vector literal
let c = vector[1, 2, 3]; // vector[] is a vector literal
// ANCHOR_END: literals

// ANCHOR: operators
let sum = 1 + 2;   // 1 + 2 is an expression
let sum = (1 + 2); // the same expression with parentheses
let is_true = true && false; // true && false is an expression
let is_true = (true && false); // the same expression with parentheses
// ANCHOR_END: operators

// ANCHOR: block
// block with an empty expression, however, the compiler will
// insert an empty expression automatically: `let none = { () }`
// let none = {};

// block with let statements and an expression.
let sum = {
    let a = 1;
    let b = 2;
    a + b // last expression is the value of the block
};

let none = {
    let a = 1;
    let b = 2;
    a + b // not returned - semicolon.
    // compiler automatically inserts an empty expression `()`
};
// ANCHOR_END: block
}

// ANCHOR: fun_call
fun add(a: u8, b: u8): u8 {
    a + b
}

#[test]
fun some_other() {
    let sum = add(1, 2); // add(1, 2) is an expression with type u8
}
// ANCHOR_END: fun_call



}
