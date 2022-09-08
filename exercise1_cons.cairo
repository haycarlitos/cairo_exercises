func main() {
    let x = [ap];
    [ap] = 1, ap++;
    [ap] = 2, ap++;

    [ap] = x, ap++;
    jmp rel -1;  // Jump to the previous instruction.
}

//jump to line 6 which has relative reference to 'x' that is stored on [ap - 2]
//Followed by the next instruction with value 2
//Notice that 32 is the number of the steps, which does not mean
//will be the same as the length of the output "1,2,1,2,..." as explained in the docs:
//..."In some cases, the compiler will not automatically detect that a jump may occur (
//    for example, in an explicit relative jump) and the reference will not be revoked.". 