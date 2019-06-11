; %Foo = type {
    ;     i64,
    ;     double
    ; }
    ; 
; %FooBar = type {
    ;     %Foo,         ; index 0 = x
    ;     i8*,          ; index 1 = c
    ;     %Foo*         ; index 2 = y
    ; }

    ; %Foo = type opaque
    ; declare void @Bar(%Foo)
    ; 
    ; define i32 @main() {
        ;     ret i32 0
        ; }

        %Foo = type {
            i32,        ; 0: a
            i8*,        ; 1: b
            double      ; 2: c
        }

define i32 @main() {
    %bar = alloca [100 x %Foo]
    %p = getelementptr [100 x %Foo], [100 x %Foo]* %bar, i64 0, i64 17, i32 2
    store double 0.000000e+00, double* %p, align 8
    ret i32 0
}
