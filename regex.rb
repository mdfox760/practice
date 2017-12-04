# A short lesson on regular expressions
text = "A regular expression is a sequence of characters that define a search pattern."
# String literals
# Searches for and finds the word 'character'. Returns #<MatchData "character">
matches = text.match(/character/)
p matches

# Searches for and does not find the word 'sentence'. Returns 'nil'
matches = text.match(/sentence/)
p matches

# Anchors(boundries)
# Most commonly used anchors are: Beginning or end of the string, beginning
# or end of the line, beginning or end of a word. This uses 'word boundry'.
puts 'Found "A" at the beginning of the string.' if text.match(/^A/)
puts 'Found "O" at the beginning of the string.' if text.match(/^O/)

puts 'Found the string "character".' if text.match(/character/)
puts 'Found the word "character".' if text.match(/character\b/)

#  It finds the string “character”, but not the word “character”.
#  This is because the regular expression /character\b/ requires a word
#  boundary to be found after the string literal
#  (i.e. the literal piece of text) “character”.
#  Since in our example the text “character” is followed by another “s”,
#  the regular expression won’t match.

# Character classes
# Let’s say we want to find all the words that start with a vowel.
# For that we can use a character class, i.e. a set of allowed characters.
# Again, we use the anchor word boundary \b, this time to express that the
# vowel needs to be at the beginning of the word.
# While the method match returns an object (i.e. something “truthy”)
# when the pattern matches (and nil when it doesn’t), the method scan
# returns an array with all the occurances of text that match the pattern.

p text.scan(/\b[aeiou][a-z]*\b/)

=begin
starts with a word boundary,
followed by a character that is either “a”, “e”, “i”, “o”, or “u”,
and potentially (*) followed by any character between “a” and “z”, and
finally ends with a word boundary. Also, case sensitive.
=end

p text.scan(/\b[AEIOUaeiou][a-z]*\b/)

# Quantifiers
# The '*' is a quantifier. It means "allow the stuff defined before zero,
# or any number of times." So, none, one, or many.
# Another quantifier is '+' or "at least one, or many". This eliminates "A" and
# "a".

p text.scan(/\b[AEIOUaeiou][a-z]+\b/)

# The '?' quantifier means none or exactly one.

p text.scan(/\b[AEIOUaeiou][a-z]?\b/)

# Captures: More powerful than scan.

p text.scan(/\b[A-Za-z]+\b +\b[AEIOUaeiou][a-z]*\b/)

=begin
Match something that starts at a word boundary, then has one or many characters
between “A” and “Z” or “a” and “z” (that bit is new: you can combine ranges as
character classes), and that is followed by at least one space.
In order to mark a part of the pattern to be captured you’d enclose it with
  parenthese, like so:
Returns a nested array.
=end
p text.scan(/\b([A-Za-z]+)\b +\b[AEIOUaeiou][a-z]*\b/)

# Let's capture the second word as well.

p text.scan(/\b([A-Za-z]+)\b +\b([AEIOUaeiou][a-z]*)\b/)

# More on character classes
# Let's capture the words that don't start with a vowel.

p text.scan(/\b[^AEIOUaeiou ][^ ]*\b/)

=begin
List of common classes:
\d is the same as [0-9] (any digit)
\D is the same as [^0-9] (everything except digits)
\w is the same as [A-Za-z_\-], called word character (i.e. this allows all
  lowercase and uppercase latin letters, as well as underscores and dashes)
\W is the same as [^A-Za-z_\-] (everything that is not a word character)
\s means “any whitespace”, including spaces, tabs, and linebreaks
\S everything that is not whitespace.
Here is a refined expression:
=end

p text.scan(/\b\w+\b +\b[AEIOUaeiou]\w*\b/)

# The dot character matches anything. In this case, parens.

text = "Regular expressions are powerful (and sometimes confusing, even to experienced developers)."
p text.scan(/\(.*\)/)

# To escape the literal parens:

p text.scan(/\((.*)\)/)

# Very tough to learn. Just practice.

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
   puts "Line1 contains Cats"
 else
   puts "Line1 has no Cats."
end
if ( line2 =~ /Cats(.*)/ )
   puts "Line2 contains Dogs"
 else
   puts "Line2 has no Dogs."
end

# Search
phone = "951-555-2017" # This is a phone number.
if (phone =~ /951(.*)/ )
  puts "phone has 951 area code."
else
  puts "phone area code is not found."
end
if (phone =~ /760(.*)/ )
  puts "phone has 760 area code."
else
  puts "phone area code is not 760"
end

peanuts = "peanuts"
if /pea/.match('peanuts') === true
  puts "'pea' is a match for peanuts"
else
  puts "'pea' in not a match for peanuts"
end

peanuts = "peanuts"
if /pea/.match('peanuts')
  puts "'pea' is a match for peanuts"
else
  puts "'pea' in not a match for peanuts"
end

if /pea/.match('phone') === true
  puts "'pea' is a match for phone"
else
  puts "'pea' in not a match for phone"
end

if /pea/.match('phone')
  puts "'pea' is a match for phone"
else
  puts "'pea' in not a match for phone"
end

# Capture groups
capture = /\$(?<dollars>\d+)\.(?<cents>\d+)/.match("$3.67")
puts capture
#<MatchData "$3.67" dollars:"3" cents:"67"> in irb
# returns $3.67 in ruby.
capture_group = /\$(?<dollars>\d+)\.(?<cents>\d+)/.match("$3.67")[:dollars]

puts capture_group
#=> "3"

# Substitution
subbing_letters = "Super guper bag".gsub "g", "d"
# => "Super duper bad"
puts subbing_letters
subbing_weird = "Ruby is 13%".gsub( '%' ) {|c| c.ord.to_s + ' ' }
# => "Ruby is 1337"
puts subbing_weird
subbing_words = "Terribly complex".gsub "complex", "simple"
# => "Terribly simple"
puts subbing_words
