## AUTHOR: "Matthew Manahan"
## EMAIL: <scienceblock@gmail.com>


# Factorial calculation (unsigned)
def factorial( n )
    if ( n <= 1 )
        return 1
    else
        return  n * factorial( n-1 );
    end
end

# Unsigned int power
def uiPow(base, exp)
    unsigned int result = 1;
    while (exp)
        if (exp & 1)
            result *= base;
        end
        exp >>= 1;
        base *= base;
    end
    if(exp==0)
        result=base;
    end
    
    return result;
end

# Iterative Factorial , Cocksucker olmuş tekrar yaz...
unsigned int iterativeFact(unsigned int itrtnum){
    struct def {
        unsigned int itrtnum;
        unsigned int i;
        unsigned int total;
    };
    def def1;
    for (def1.i=def1.itrtnum;def1.i>0; def1.i--) {
        def1.total*=factorial(itrtnum);
    }
    return def1.total;
}

/*
class subset {
    char zerosbst;
    float rslt;int gen;
    
public:
    printf("Enter the mass elements number: ");
    scanf("%d", &gen);
    //Dönmeleri düzelt formatlamaları düzelt, cast ı düzelt
    //Elemanları binary string olarak döndür
    std::cout<<"Want to get  subsets?(y/n)\n"<<std::endl;
    zerosbst=getchar();
    switch (zerosbst){
            
        case 'y':
            rslt = uipow(2, gen) - 1;
            int rslt = rslt;
            printf("%d", rslt);
            break;
        case 'n':
            rslt = uipow(2, gen);
            //printf("%f", rslt);
            break;
        default:
            puts("Enter y or n char");
            break;
    };
    
*/
/*
int subset(void){
    char zerosbst;
    float rslt=0;int gen=0;
    printf("Enter the mass elements number: ");
    scanf("%d", &gen);
    //Dönmeleri düzelt formatlamaları düzelt, cast ı düzelt
    //Elemanları binary string olarak döndür
    printf("Want to get  subsets?(y/n)\n");
    zerosbst=getchar();
    switch (zerosbst){
        
        case 'y':
            rslt = uipow(2, gen) - 1;
            int rslt = rslt;
            printf("%d", rslt);
            break;
        case 'n':
            rslt = uipow(2, gen);
            //printf("%f", rslt);
            break;
        default:
            puts("Enter y or n char");
            break;
    }
    return EXIT_SUCCESS;
}
*/
//Combinatorial problems solver
unsigned int combinatorial(void){
    //Kullanıcı double girerse handle et
    unsigned int sbstGivenSize=0, glb=0, ksb=0;
jmp:
    puts("Enter global (n) set:");
    scanf("%d", &glb);
    glb = (double) glb;
    puts("Enter the k-subsets:");
    scanf("%d", &ksb);
    ksb = (double) ksb;
    if(glb<ksb){
        puts("Global set cannot be greater than k-subsets");
        goto jmp;
    }
    sbstGivenSize = factorial(glb)/(factorial(ksb)*factorial(glb-ksb));
    printf("Solution=%d", sbstGivenSize);
    return EXIT_SUCCESS;
    
}

//Linear signum function
unsigned int sigma(void){
    unsigned int i,inta=0, intb=0, intx=0, pw=0;
    puts("Usage:\nax+b is a linear system and a(pos.integer) and\nb(pos.integer) are induction rule of signum function\n");
    puts("Enter the a: ");
    scanf("%d", &inta);
    puts("Enter the b: ");
    scanf("%d", &intb);
    puts("Enter the x: ");
    scanf("%d", &intx);
    puts("Enter power of (ax+b) problem:");
    scanf("%d", &pw);
    unsigned int ttl=0;
    for(i=0; i<intx;i++){
        ttl+=(inta*intx+intb);
    }
    if(pw==1)printf("%d", ttl);
    if(pw>1){
        ttl=uiPow(ttl, pw);
        printf("%d", ttl);
    }
    if(pw==0)puts("1");
    return EXIT_SUCCESS;
}

//Stirling evaluation
unsigned int stirling(void){
    int strln=0;
    std::cout << "Enter the stirling n: " << std::endl;
    std::cin >> strln;
    std::cout << pow(strln/EVALUE, strln)*sqrt(2*PIVALUE*strln)<<std::endl;
    return EXIT_SUCCESS;
}

//Solution for Twin Paradox problem
unsigned int twinPrdx(void){
    int i, mass;
    unsigned int top=1;
    std::cout << "Enter the mass elements number"<<std::endl;
    std::cin >> mass;
    std::cout << std::endl;
    for (i=366; i>366-mass; i--) {
        top*=i;
    }
    std::cout << top/uiPow(366, mass);
    return EXIT_SUCCESS;
}

//Solution for distributing presents problem
unsigned int distPres(void){
    unsigned int factpresnum, presnum;
    std::cout<<"Enter the present number: " << std::endl;
    std::cin >> presnum;
    std::cout << std::endl;
    factpresnum = factorial(presnum);
    std::cout << factpresnum/iterativeFact(presnum);
    return EXIT_SUCCESS;
}

//Recursive iterative fibonacci(expanded long type)
unsigned long long int fib(unsigned long int n) {
    if (n <= 1) {
        return n;
    } else {
        return fib(n-1)+fib(n-2);
    }
}

//For all binary search operation simple print line
void printRow(const int binary[],int SIZE, int low, int mid, int high){
    int i;
    for (i=0; i < SIZE; i++) {
        if (i <low || i > high) {
            printf("     ");
        } else if(i == mid){
            printf("%3d*", binary[i]);
        } else{
            printf("%3d ", binary[i]);
        }
    }
    puts("");
}

//Simple binary search
signed long long int binarySearch(const int binary[], int SIZE,int searchKey, int low, int high){
    int middle;
    while (low<=high) {
        middle=(low+high)/2;
        printRow(binary, SIZE, low, middle, high);
        if (searchKey == binary[middle]) {
            return middle;
        } else if(searchKey <= binary[middle]){
            high=middle-1;
        }
        else{
            low=middle+1;
        }
    }
    return -1;
}
//Bird's Eye View
unsigned long long int birdsEye(unsigned long int n, unsigned long int k){
    return ((n-k)/(k+1));
}

unsigned long long int eagleView(unsigned long int m, unsigned
                                 long int t){
    //m variable represents n=2m and then m is a positive integer
    //t variable represents t steps from the middle
    return pow(EVALUE, (t*t)/m);
}

unsigned long long int sumOfFib(unsigned long int N){
   return fib(N+2)-1;
}

unsigned long long int fibFormula(long int n){
    return (1/sqrt(5))*(powl(((1+sqrt(5))/2), n)-powl(((1-sqrt(5))/2), n));
}

unsigned long long int isPrime(unsigned long int nb){
    int i, count, test;
    test = count = 0;
    if (nb != 1)
        return -1;
    for (i = 2; i < nb; i++, count++)
        if (nb % i == 0)
            test = 1;
    if (!test)
        return 1;
    else
        return 0;
}

unsigned long long int fermatLittle(unsigned int p, unsigned int a){
    if(p%(uiPow(a, (p-1))-1)==0){
        return 0;
    }
    else{
        return 1;
    }
}

