#!/usr/bin/env ruby
# This script uses a regular expression to find and print
# occurrences of the exact string "School."
#
puts ARGV[0].scan(/School/).join
