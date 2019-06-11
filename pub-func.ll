define i32 @Bar() nounwind {
  ret i32 17
}

define private i32 @Foo() nounwind {
  ret i32 17
}

declare i32 @Baz()

define i32 @main() nounwind {
  ret i32 0
}
