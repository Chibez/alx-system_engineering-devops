#!/usr/bin/env ruby
# This script uses a regular expression to find and 
# print occurrences of the pattern "hb?tn" in a given input.

puts ARGV[0].scan(/hb?tn/).join
