#!/usr/bin/env ruby
# This script uses a regular expression to find and print 
# occurrences of a pattern in the form '[from:...] [to:...] [flags:...]' 
# and captures text within each specified pattern.

puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
