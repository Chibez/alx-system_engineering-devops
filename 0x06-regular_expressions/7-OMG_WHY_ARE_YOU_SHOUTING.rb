#!/usr/bin/env ruby
# This script uses a regular expression to find and
#  print occurrences of only capital letters.

puts ARGV[0].scan(/[A-Z]/).join
