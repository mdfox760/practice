# A readable hash.
h = { "a" => 100, "b" => 200 }
h.each { |key, value| puts "#{key} is #{value}" }

# Another way to make a hash.
hash = {}
hash["Son"] = "Kai Kai"
hash["Father"] = "Bob"
hash.each do |type, name|
  puts type + ': ' + name
end
