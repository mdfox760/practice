# This is some secure program that uses security.

$validPassword = "secret" #This is our password

puts "Please Enter Password: "
$inputPassword = gets.chomp

if $inputPassword == $validPassword
  puts "You have access."
else 
  abort('Access denied!')
end

print 'Welcome!'