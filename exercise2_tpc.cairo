func main() {
    [ap] = 10, ap++;
    my_loop:
    [ap] = [ap - 1] - 1, ap++; 
    jmp my_loop if [ap - 1] != 0; 
    ret;
}


//cairo-run --program=exercise2_tpc.json --print_info --print_memory