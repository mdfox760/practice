# Code below should open and read a file. Keeps the data persistent.
File.open("list.txt").each do |line|
  puts line
end

# This should add to the file. The "a" tells ruby to add anything else
# to the end of the file. Use "w" to overwrite the file. The "r" does
# a return to make a new line in the file.
File.open("list.txt", "a") do |line|
  line.puts "\r" + "This was written by the program."
end
