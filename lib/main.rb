#!/usr/bin/ruby

# AUTHOR: Matthew Manahan

require 'yaml'
require 'librbdiscrete.rb'
require 'fixnumexpand.rb'

puts "===RubMat===
    Copyright (C) <2011>  <Matthew Manahan>
    This program comes with ABSOLUTELY NO WARRANTY; for details type 'help'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `certain' for details."


def commsuccss
  # Return success statement and new command_line
end

def commfail
  # Raise exceptions from fail situation and gives new command_line
end

class GetOpt
  def command_line
  print ">=> "
  comm = gets
  commnd = comm.chomp
  puts ""
  end
  def clearscr
    # Clears screen
  end
  
end


def inspect
  # Read arguments and defines commands
  # Will handle command line whitespaces
  
  if (commnd == 'help')
    # Help of commands and usages
  end
  if (commnd == 'certain')
    # Certain conditions
  end
end

