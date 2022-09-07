
func main(){
    [ap] = 100, ap++;
    [ap] = [ap - 1] * [ap - 1], ap++; // x^2
    [ap] = [ap - 1] * [ap - 2], ap++; //x^3
    [ap] = [ap - 2] * 23, ap++; // x^2 * 23
    [ap] = [ap - 4] * 45, ap++; // x * 45
    [ap] = [ap - 3] + [ap - 2], ap++; // x^3 + 23*x^2
    [ap] = [ap - 1] + [ap - 2], ap++; // x^3 + 23*x^2 + 45*x
    [ap] = [ap - 1] + 67, ap++; // x^3 + 23*x^2 + 45*x + 67

    
    return();
}


