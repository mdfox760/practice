# Conditional ?: basic structure.
# (condition) ? (result if condition is true) : (result if condition is false)
age = 15
puts (13...19).include?(age) ? "teenager" : "not a teenager"
age = 23
person = (13...19).include?(age) ? "teenager" : "not a teenager"
puts person
