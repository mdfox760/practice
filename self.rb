# Self inside class and module.
class S
  puts "Just started class S."
  puts self

  module M
    puts "Nested module S::M."
    puts self
  end

  puts "Back to the outer level of S"
  puts self
end
