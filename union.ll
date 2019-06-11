%union.Foo = type { double }
@Union = global %union.Foo { double 0.0 }

define i32 @main() {
  %1 = bitcast %union.Foo* @Union to i32*
  store i32 1, i32* %1
  %2 = bitcast %union.Foo* @Union to i8**
  store i8* null, i8** %2
  ret i32 0
}
