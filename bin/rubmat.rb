#!/usr/bin/env ruby

# AUTHOR: Mahmut Bulut
require 'rubygems'
require 'bundler/setup'

require 'yaml'
require 'librbdiscrete'
require 'fixnumexpand'
require 'commander'
require 'help'

puts "===RubMat===
    Copyright (C) <2011>  <Mahmut Bulut>
    This program comes with ABSOLUTELY NO WARRANTY; for details type 'help'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `certain' for details."
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