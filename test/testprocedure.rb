require 'yaml'
constants1 = YAML::load_file('statics.yml')

def stirling(strln)
  return (strln/EVALUE**strln)*Math.sqrt(2*PIVALUE*strln);
end

puts stirling(3)