#!/usr/bin/env ruby
# This script uses a regular expression to find and print 
# occurrences of a 10-digit phone number.
#
puts ARGV[0].scan(/^[0-9]{10}$/).join
