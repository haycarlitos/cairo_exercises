//What’s wrong with the following code? 
//(Hint: try to replace ap += SIZEOF_LOCALS; with alloc_locals; and see what happens) 
//Can you fix it without changing the order of the variable definitions in the code?


func main() {
    alloc_locals;
    tempvar x = 0;

    local y;
    //ap += SIZEOF_LOCALS; 
    y = 6;
    ret;
}

//1. replace ap+=SIZEOF_LOCALS with allow_locals throws the error:
//     alloc_locals must be used before any instruction that changes the ap register. 
//Which help us debug our program.

//2. (I guess) 'x' is asigned to fp=ap with 0. After declare local y, 
//   y is asigned to [fp+0]=[fp] and x to [fp + 1] = [ap + 1] because is tempvar.
// If we want the same output as the variables order,
// we can replace tempvar for local so 'x -> [fp + 0]' and 'y -> [fp +1]'.