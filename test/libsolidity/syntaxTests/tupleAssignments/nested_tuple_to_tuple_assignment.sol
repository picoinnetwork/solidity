contract C {
    bool x;

    function foo() external {
        (((),x)&x) = ((), true);
        (((),x)+x) = ((), true);
    }
}
//----
// ----
// TypeError 6473: (66-68): Tuple component cannot be empty.
// TypeError 2271: (65-73): Built-in binary operator & cannot be applied to types tuple(tuple(),bool) and bool.
// TypeError 4247: (65-73): Expression has to be an lvalue.
// TypeError 6473: (78-80): Tuple component cannot be empty.
// TypeError 6473: (99-101): Tuple component cannot be empty.
// TypeError 2271: (98-106): Built-in binary operator + cannot be applied to types tuple(tuple(),bool) and bool.
// TypeError 4247: (98-106): Expression has to be an lvalue.
// TypeError 6473: (111-113): Tuple component cannot be empty.
