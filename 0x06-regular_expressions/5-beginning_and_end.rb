#!/usr/bin/env ruby
# This script uses a regular expression to find and print
# occurrences of a string that starts with 'h', 
# ends with 'n', and has any single character in between.
#
puts ARGV[0].scan(/h.n/).join
