#!/usr/bin/env ruby
require 'rubygems'
require 'commander'

##require 'rubmat/main'

module MathRub
  
  
  ## HELP
  def self.help
puts "
Valid Commands
===============
help              Show this manpage
certain           Show certain conditions page
factorial         Recursive definition of factorial
                  'n' is the number which will calculated in procedure
binsearch         *binary => array
                  *size => binary array's size
                  *search_key => Compare string
                    *General values
                        *low => low value representation
                        *middle => middle value representation
                        *high => high value representation
birdseye          Bird's Eye View Procedure
combinatorial     'glb' represents is General mass of combinatorial approach
                  'klb' represents is Selection mass of combinatorial approach
distpres          'presnum' value represents Present count.
eagleview         Eagle View Procedure
fermatlittle      Fermat Little Theorem's Procedural Representation
fib               Additive recursive definition of Fibonacci
isprime           Is Prime Procedure
                  'nb' is the input argument number of procedure
iterativefact     Iterative factorial of procedural representation
sigma             Sigma procedure's simple procedure is rely on '(ax+b)^pw'
                  a represented by inta;
                  b represented by intb;
                  x represented by intx;
                  power represented by pw.
stirling          'strln' is the stirling number in stirling formula
subset            'zerosbst' variable, decision mechanism of zero subset is included or not included
                  'gen' is the general mass elements(objects) number
fibsum            Fibonacci Sum Procedure
twinprdx          Twin Paradox Lemma Solution Procedure
                  Selection mass represented by 'mass' value
uipow             Non-balanced power calculation procedure
"
end

EVALUE = 2.718281828459045235360287471352662497757247093
PIVALUE = 3.141592653589793238462643383279502884197169399
MAX_INTEGER = 1073741823

err = "An error occured during during procedure"

=begin
= NAME
Recursive Factorial Procedure Definition v1.1.3

= SYNOPSIS
factorial(n)
'n' is the number which will calculated in procedure

= DESCRIPTION
Iterative factorial definition
=end
def self.factorial( n )
    if (n <= 1)
        return 1
    else
        return n*factorial( n-1 ).to_i
    end
end

=begin
= NAME
Power procedure of two input arguments v2.1.3

= SYNOPSIS
ui_pow(base, exp)
'base' argument is the base of power procedure
'exp' argument is the upscript of power procedure

= DESCRIPTION
Wide representation of power procedure
=end
def self.ui_pow(base, exp)
    result = 1;
    while (exp)
        if (exp & 1)
            result *= base
        end
        exp >>= 1;
        base *= base
    end
    if(exp==0)
        result=base
    end
    return result
end

=begin
= NAME
Iterative Factorial Procedure v1.0.3

= SYNOPSIS
Get input arguments from simple argument

= DESCRIPTION
Iterative factorial of procedural representation
=end
def self.iterative_fact(itrtnum)
    itrtnum.downto(1) do
        total *= factorial(itrtnum)
    end
    return total
end

=begin
= NAME
Subset Procedure v1.1.3

= SYNOPSIS
subset(gen, zerosbst)
'zerosbst' variable, decision mechanism of zero subset is included or not included
'gen' is the general mass elements(objects) number

= DESCRIPTION
Calculate subset number of input arguments
=end
def self.subset(gen, zerosbst)
    main = case (zerosbst)
    when zerosbst == true
            rslt = ui_pow(2, gen) - 1
            return rslt
    when zerosbst == false
            rslt = ui_pow(2, gen)
            return rslt
    end
    return main
end

#/*
#int subset(void){
#    char zerosbst;
#    float rslt=0;int gen=0;
#    printf("Enter the mass elements number: ");
#    scanf("%d", &gen);
#    //Dönmeleri düzelt formatlamaları düzelt, cast ı düzelt
#    //Elemanları binary string olarak döndür
#    printf("Want to get  subsets?(y/n)\n");
#    zerosbst=getchar();
#    switch (zerosbst){
#        
#        case 'y':
#            rslt = ui_pow(2, gen) - 1;
#            int rslt = rslt;
#            printf("%d", rslt);
#            break;
#        case 'n':
#            rslt = ui_pow(2, gen);
#            //printf("%f", rslt);
#            break;
#        default:
#            puts("Enter y or n char");
#            break;
#    }
#    return EXIT_SUCCESS;
#}
#*/

## Combinatorial problems solver
# 
# 

=begin
= NAME
Combinatorial Procedure v1.1.5

= SYNOPSIS
combinatorial(glb, ksb)
'glb' represents is General mass of combinatorial approach
'klb' represents is Selection mass of combinatorial approach

= DESCRIPTION
Combinatorial selection number of a input argument mass
=end
def self.combinatorial(glb, ksb)
    if(glb < ksb)
        raise RuntimeError.new("Global set cannot be greater than k-subsets")
    end
    sbst_given_size = factorial(glb)/(factorial(ksb)*factorial(glb-ksb)).to_f
    return sbst_given_size
end

=begin
= NAME
Sigma Procedure v1.1.5

= SYNOPSIS
sigma(inta, intx, intb, pw)
Sigma procedure's simple procedure is rely on '(ax+b)^pw'
a represented by inta;
b represented by intb;
x represented by intx;
power represented by pw.

= DESCRIPTION
'Sigma of the one unknowned equation' procedure
=end

def self.sigma(inta, intx, intb, pw)
    ttl = 0
    for i in 1..intx
        ttl += (inta*intx+intb)
    end
    if(pw == 1)
      return ttl
    end
    if(pw > 1)
        ttl=ui_pow(ttl, pw)
      return ttl
    end
    if(pw == 0)
      return 1
    end
end

=begin
= NAME
Stirling Procedure v1.1.5

= SYNOPSIS
stirling(strln)
'strln' is the stirling number in stirling formula

= DESCRIPTION
Stirling Procedure for Stirling Lemma
=end
def self.stirling(strln)
  return (strln/constants1.EVALUE**strln)*Math.sqrt(2*constants1.PIVALUE*strln);
end

=begin
= NAME
Twin Paradox Lemma Solver v1.1.5

= SYNOPSIS
twin_prdx(mass)
Selection mass represented by 'mass' value

= DESCRIPTION
Twin Paradox Lemma Solution Procedure
=end
def self.twin_prdx(mass)
    top=1
    for i in 366..366-mass
        top *= i
    end
    return top/ui_pow(366, mass)
end

=begin
= NAME
Distrubuting Presents Procedure v1.1.3

= SYNOPSIS
dist_pres(presnum)
'presnum' value represents Present count.

= DESCRIPTION
Use of Sequence of factorial and iterative_fact procedures for
distributing presents.
=end
def self.dist_pres(presnum)
    return factorial(presnum)/iterative_fact(presnum);
end

=begin
= NAME
Recursive adding of procedure fibonacci

= SYNOPSIS
fib(n)
'n' represents recursive definition

= DESCRIPTION
Additive recursive definition of Fibonacci
=end
def self.fib(n)
    if (n <= 1) 
        return n;
    else
        return fib(n-1)+fib(n-2);
    end
end

=begin
= NAME
Printing Row v1.5.5

= SYNOPSIS
print_row(binary, size, low, mid, high)
'binary' represents binary array
'size' represents general size
'low' represents minimum value of binary array
'mid' represents middle value of binary array
'high' represents maximum value of binary array

= DESCRIPTION
Underly array for printing.
=end
def self.print_row(binary, size, low, mid, high)
    for i in 0..size-1
        if (i <low || i > high)
            print "     "
        end
        if(i == mid)
            puts binary[i]
        end
        if(nil)
            puts binary[i]
        end
    end
end

=begin
= NAME
Binary Search Spec. Procedure v1.5.9

= SYNOPSIS
binary_search(binary, size, search_key, low, middle, high)
== Binary search
*binary => array
*size => binary array's size
*search_key => Compare string
*General values
  *low => low value representation
  *middle => middle value representation
  *high => high value representation

= DESCRIPTION
Binary search
=end
def self.binary_search(binary, size, search_key, low, middle, high)
    while (low <= high)
        middle=(low+high)/2;
        print_row(binary, size, low, middle, high);
        if (search_key == binary[middle])
            return middle;
        elsif (search_key <= binary[middle])
            high=middle-1
        else 
            low=middle+1
        end
    end
end

=begin
= NAME
Bird's Eye View v1.1.3

= SYNOPSIS
Basic rep.s

= DESCRIPTION
Bird's Eye View Procedure
=end
def self.birds_eye(n, k)
    return ((n-k)/(k+1));
end

=begin
= NAME
Eagle View v1.1.3

= SYNOPSIS
Basic rep.s

= DESCRIPTION
Eagle View Procedure
=end
def self.eagle_view(m, t)
    return (EVALUE**((t*t)/m));
end

=begin
= NAME
Sum of Fibonacci Procedure v1.1.1

= SYNOPSIS
sum_of_fib(n)
'n' is the number
Basic reps

= DESCRIPTION
Fibonacci Sum Procedure
=end
def self.sum_of_fib(n)
   return fib(n+2)-1;
end

#
#def fibFormula(long int n)
#    return (1/Math.sqrt(5))*(powl(((1+sqrt(5))/2), n)-powl(((1-sqrt(5))/2), n));
#end

=begin
= NAME
Is Prime Procedure v1.1.5

= SYNOPSIS
is_prime(nb)
'nb' is the input argument number of procedure

= DESCRIPTION
Is Prime Procedure
=end
def self.is_prime(nb)
    test = count = 0
    if (nb == 1)
        return -1
    end
    for i in 2..nb-1
        count++
        if (nb % i == 0)
            test = false
        end
    end
    if (!test)
        return 1
    else
        return 0
    end
end

=begin
= NAME
Fermat's Little Theorem v1.1.3

= SYNOPSIS
fermat_little(p, a)

= DESCRIPTION
Fermat Little Theorem's Procedural Representation

(('WARNING'))((-Modular representation maybe couldn't evaluated-))
=end
def self.fermat_little(p, a)
  begin
    if(p%(ui_pow(a, (p-1))-1) == 0)
        return 0
    else
        return 1
    end
  end
rescue
  begin
    ArgumentError.new("High load. Terminated.")
  end
end

=begin
= NAME
to_bool v.0.0.1

=SYNOPSIS
to_bool(void)
=DESCRIPTION
to bool is convert integer valus to string boolean
=end
def self.to_bool
  if (self.to_bool == 1)
    puts "TRUE"
  elsif (self.to_bool == 0)
    puts "FALSE"
  elsif (self.to_bool == -1)
    puts "NaN"
  end
end

class Fixnum
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end
  def weeks
    self * 60 * 60 * 24 * 7
  end
end

def self.run
puts "===RubMat===
    Copyright (C) <2012>  <Mahmut Bulut>
    Type `help' for commands list
    and for distributing rules `certain'"
puts ""
begin
  command = ask(">=> ")
#command = commn.chomp!
  # Read arguments and defines commands
  # Will handle command line whitespaces
  
    if (command == 'help')
      puts help()
    end
    if (command == 'certain')
      puts "To see certain conditions please visit http://www.gnu.org/licenses/gpl-2.0.html#SEC3"
    end
    if (command == 'factorial')
      n = ask("Enter N value: ", Integer)
      puts factorial(n)
    end
    if (command == 'binsearch')
      begin
      binary = ask("Enter array name with [ & ] suffix: ")
      size = ask("Enter size of search range: ", Integer)
      search_key = ask("Enter search delimiter key", Integer)
      low = ask("Lower limit: ", Integer)
      middle = ask("Medium limit: ", Integer)
      high = ask("High limit: ", Integer)
      puts binary_search(binary, size, search_key, low, middle, high)
      rescue => error
        puts error
      end
    end
    if (command == 'birdseye')
      n = ask("Enter workspace mass number: ", Integer)
      k = ask("Enter selection mass number: ", Integer)
      puts birds_eye(n, k)
    end
    if (command == 'combinatorial')
      glb = ask("Enter global set objects number: ", Integer)
      ksb = ask("Enter k-subset objects number: ", Integer)
      puts combinatorial(glb, ksb)
    end
    if (command == 'distpres')
      presnum = ask("Present number: ", Integer)
      puts dist_pres(presnum)
    end
    if (command == 'eagleview')
      m = ask("Enter m value: ", Integer)
      t = ask("Enter t value: ", Integer)
      puts eagle_view(m, t)
    end
    if (command == 'fermatlittle')
      p = ans("Enter power number: ", Integer)
      a = ans("Enter base number:", Integer)
      puts fermat_little(p, a)
    end
    if (command == 'fib')
      n = ans("Enter the last incremental number: ", Integer)
      puts fib(n)
    end
    if (command == 'isprime')
      raise RuntimeError.new("Have some critical issues closed to next minor version")
#    nb = ask("Control number: ", Integer)
#    puts is_prime(nb)
    end
    if (command == 'iterativefact')
      begin
        itrtnum = ask("Enter the factorial input: ", Integer)
        throw :ball if (itrtnum >= MAX_INTEGER)
        puts iterative_fact(itrtnum)
      end
      catch(:ball) do
        raise ArgumentError.new("iterative factorial couldn't take this value's load. Terminated.")
      end
    end
    if (command == 'sigma')
      inta = ask("Enter a value: ", Integer)
      intx = ask("Enter x value: ", Integer)
      intb = ask("Enter b value: ", Integer)
      pw = ask("Enter power value: ", Integer)
      puts sigma(inta, intx, intb, pw)
    end
    if (command == 'stirling')
      begin
      strln = ask("Enter stirling procedure value: ", Integer)
      throw :glass if (strln >= MAX_INTEGER)
      puts stirling(strln)
      end
      catch(:glass) do
        raise ArgumentError.new("stirling couldn't take this value's load. Terminated.")
      end
    end
    if (command == 'subset')
      gen = ask("Enter mass objects number: ", Integer)
      zerosbst = agree("Include zero subset?")
      puts subset(gen, zerosbst)
    end
    if (command == 'fibsum')
      n = ask("Enter n value: ", Integer)
      puts sum_of_fib(n)
    end
    if (command == 'twinprdx')
      mass = ask("Enter mass number: ", Integer)
      puts twin_prdx(mass)
    end
    if (command == 'uipow')
      base = ask("Enter base value: ", Integer)
      exp = ask("Enter power value: ", Integer)
      puts ui_pow(base, exp)
    end
  end until(command == 'exit')
end

##MODULE END
end
