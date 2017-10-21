#  If you run 'ruby argf.rb --verbose file1 file2'
# It will read both files
ARGV
option = ARGV.shift # "--verbose"
ARGV
puts "Filename is: " + ARGF.filename
# ARGF.close
puts ARGF.read
ARGF.close
puts "Is the file closed?" + ' ' + ARGF.closed?.to_s
