# Opens ex15_sample.txt and reads it with one arguement

filename = ARGV.first

# open the file you passed as an arguement.
txt = open(filename)

# This prints the file that you gave as a first arguement
# In this case, it is ex15_sample.txt since that is the
# arguement I pass.
puts "Here's your file #{filename}:\n "
print txt.read


# This produces a prompt to type the name of the file that you want to open on
# the command line such as "ruby ex15.rb ex15_sample.txt". You could open and read
# a different file in the same folder
 print "Type the filename again:\n "
 file_again = $stdin.gets.chomp

 txt_again = open(file_again)


print txt_again.read

# It's a good idea to close the files

txt.close
txt_again.close

# Test to see if the file are closed

puts txt.closed?
puts txt_again.closed?
