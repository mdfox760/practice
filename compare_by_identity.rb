h = { "a" => 100, "b" => 200, "c" => 300 }
puts h["a"]
puts h.compare_by_identity
puts h.compare_by_identity?
# below has no return in ruby 2.5.1p57. Should be nil and "c" respectfully.
puts h["a".dup] #=> nil # different objects
puts h[:c] #=> "c" # same symbols are all same
