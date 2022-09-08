//Can you spot an inefficiency in the following code? 
//Hint: take a look here. Fix the inefficiency in two ways (implement each of the following fixes separately):
//1. Move the instruction alloc_locals;.
//2. Use tempvar instead of local.


func pow4(n) -> (m: felt) {


    jmp body if n != 0;
    [ap] = 0, ap++;
    ret;

    body:
//    alloc_locals; # 1
//    local x;
    tempvar x = n * n; //# 2
    [ap] = x * x, ap++;
    ret;
}

func main() {
    pow4(n=5);
    ret;
}

// #1. Move alloc_locas inside the body's scope reduce the number of steps in case n = 0.
//#2 It is more memory efficient use tempvar and also reduce the number of steps.