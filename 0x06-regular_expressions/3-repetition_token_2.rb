#!/usr/bin/env ruby
# This script uses a regular expression to find and 
# print occurrences of the pattern "hbt+n" in a given input.

puts ARGV[0].scan(/hbt+n/).join
