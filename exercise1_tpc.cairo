func main() {
    [ap] = 2, ap++;
    //this loops never ends, user must use --steps and --no_end to avoid errors
    my_loop:
    [ap] = [ap - 1] * [ap - 1], ap++; // 2 * 2 = 4 (first iteration), 5 * 5 = 25 (second iteration), ...
    [ap] = [ap - 1] + 1, ap++; // 4 + 1 = 5 (first iteration), 25 + 1 = 26 (second iteration), ...
    jmp my_loop; // jump to the begining of the loop with the current value.
}

//This is a foor loop (with no end) in Cairo. Each iteration returns ([ap-1] ^ 2) + 1 
//