# Case expressions are close to a series of if statements.
#  It lets you list a series of conditions and execute a statements
#  corresponding to the first one that's true. Leap years must be
# divisible by 100. Case returns the value of the last expression executed.

year = 2000
leap = case
  when year % 400 == 0 then true
  when year % 100 == 0 then false
  else year % 4   == 0
  end
puts leap
