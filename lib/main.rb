#!/usr/bin/ruby

# AUTHOR: Matthew Manahan

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

