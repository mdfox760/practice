# Case expressions are close to a series of if statements.
#  It lets you list a series of conditions and execute a statements
#  corresponding to the first one that's true. Leap years must be
# divisible by 100. Case returns the value of the last expression executed.

year = 2020
leap = case
  when year % 400 == 0 then true
  when year % 100 == 0 then false
  else year % 4   == 0
  end

puts leap

energy = 2
case energy
when 3
  puts "Go for a hike."
when 2
  puts "Go for a walk."
when 1
  puts "Take a nap."
else
  puts "You're supposed to enter 3 - 2 or 1."
end
