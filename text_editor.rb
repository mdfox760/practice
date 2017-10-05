# This is a text editor! It erases a file first, so be careful.
# Remember to pass the name of the file that you want to erase.

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

 puts "Opening the file..."
 target = open("text", 'w+')

# This part does the erasing.
# puts "Truncating the file.  Goodbye!"
# target.truncate(0)

target.write("This is line one. \n This is line two. \n This is line three.")

# make file open to read the whole thing. rewind sets the cursor back to the
#  beginning of the file. readline reads line by line. One readline only
#  reads the first line. 
target.rewind
puts target.readline
puts target.readline
puts target.readline

puts "And finally, we close it."
target.close

# Test it to make sure it's closed
puts "Is it closed?"
puts target.closed?
