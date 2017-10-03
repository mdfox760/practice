def doubleThis num
  numTimes2 = num*2
  puts num.to_s + ' doubled is ' + numTimes2.to_s
end

doubleThis 44

def little_pest var
  var = nil
  puts "Ha Ha! I ruined your variable."
end

var = "You can't even touch my variable."
little_pest var
puts var
