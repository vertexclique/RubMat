#!/usr/bin/env ruby
module RubMat
def help
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
end