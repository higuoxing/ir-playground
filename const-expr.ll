%Struct = type { i8, i32, i8* }
@Struct_size = constant i32 ptrtoint (%Struct* getelementptr (%Struct, %Struct* null, i32 1) to i32)

define i32 @main() {
    %1 = load i32, i32* @Struct_size
    ret i32 %1
}
