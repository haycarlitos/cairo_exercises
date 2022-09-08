func main(){
    let x = [fp]; //instead of ap in order to avoid reference been revoked.
    x = 100, ap++;
    tempvar step1 = x + 23; // 1. x + 23 
    // tempvar instead of:
    //  [ap] = x + 23, ap++; 
    [ap] = x * step1, ap++; // 2. x*(x + 23) //we can't use 'step1' in the next 
    //instruction because the compiley may not be able to compute the change of ap 
    //aka. the reference may be revoked.
    [ap] = [ap - 1] + 45, ap++; // 3. x*(x + 23) + 45
    [ap] = x * [ap-1], ap++; // 4. x*(x*(x + 23) + 45)
    [ap] = [ap - 1] + 67, ap++; // 5. x*(x*(x + 23) + 45) + 67 == x^3 + 23*x^2 + 45*x + 67
    return();
}