require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|

  # Create a switch
  opts.on("-i", "--iteration") do
    options[:iteration] = true
  end

  # Create a flag
  opts.on("-u USER") do |user|
    options[:user] = user
  end
end

option_parser.parse!
puts options.inspect
