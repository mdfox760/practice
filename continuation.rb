# callcc is obsolete: use Fiber instead

require "continuation"
arr = [ "Fredie", "Herb", "Ron", "Max", "Matt" ]
callcc{|cc| $cc = cc}
puts(message = arr.shift)
$cc.call unless message =~ /Max/
