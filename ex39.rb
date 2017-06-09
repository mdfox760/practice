
# create a mapping of state to abbreviation
states = {
  'Alaska' => 'AK',
  'Arkansas' => 'AR',
  'Arizona' => 'AZ',
  'Alabama' => 'AL',
  'California' => 'CA',
  'Colorado' => 'CO',
  'Connecticut' => 'CT',
  'Delaware' => 'DE',
  'Florida' => 'FL',
  'Georgia' => 'GA',
  'Guam' => 'GU',
  'Hawaii' => 'HI',
  'Idaho' => 'ID',
  'Illinios' => 'IL',
  'Indiana' => 'ID',
  'Iowa' => 'IA',
  'Kansas' => 'KS',
  'Kentucky' => 'KY',
  'Louisiana' => 'LA',
  'Maine' => 'ME',
  'Maryland' => 'MD',
  'Massachusetts' => 'MA',
  'Michigan' => 'MI',
  'Minnesota' => 'MN',
  'Mississippi' => 'MS',
  'Missouri' => 'MO',
  'Montana' => 'MT',
  'Nebraska' => 'NE',
  'New York' => 'NY',
  'Nevada' => 'NV',
  'New Hampshire' => 'NH',
  'New Jersey' => 'NJ',
  'New Mexico' => 'NM',
  'North Carolina' => 'NC',
  'North Dakota' => 'ND',
  'Ohio' => 'OH',
  'Oklahoma' => 'OK',
  'Oregon' => 'OR',
  'Pennsylvania' => 'PA',
  'Puerto Rico' => 'PR',
  'Rhode Island' => 'RI',
  'South Carolina' => 'SC',
  'South Dakota' => 'SD',
  'Tennessee' => 'TN',
  'Texas' => 'TX',
  'Utah' => 'UT',
  'Vermont' => 'VT',
  'Virginia' => 'VA',
  'Virgin Islands' => 'VI',
  'Washington' => 'WA',
  'West Virginia' => 'WV',
  'Wisconsin' => 'WI',
  'Wyoming' => 'WY'
}

states.sort
puts states.sort
# create a basic set of states and some cities in them
cities = {
  'AZ' => 'Phoenix',
  'AK' => 'Juneau',
  'AR' => 'Little Rock',
  'AL' => 'Montgomery',
  'CA' => 'Sacramento',
  'CO' => 'Denver',
  'CT' => 'Hartford',
  'DE' => 'Dover',
  'FL' => 'Tallahassee',
  'HI' => 'Honolulu',
  'ID' => 'Boise',
  'IN' => 'Indianapolis',
  'IL' => 'Springfield',
  'IO' => 'Des Moines',
  'KS' => 'Topeka',
  'KY' => 'Frankfort',
  'LA' => 'Baton Rouge',
  'ME' => 'Augusta',
  'MN' => 'Saint Paul',
  'MI' => 'Lansing',
  'MD' => 'Annapolis',
  'MA' => 'Boston',
  'MT' => 'Helena',
  'MO' => 'Jefferson City',
  'MS' => 'Jackson',
  'NH' => 'Concord',
  'NC' => 'Raleigh',
  'ND' => 'Bismark',
  'NJ' => 'Trenton',
  'NV' => 'Carson City',
  'NY' => 'Albany',
  'OH' => 'Columbus',
  'OK' => 'Oklahoma City',
  'OR' => 'Salem',
  'PA' => 'Harrisburg',
  'RI' => 'Providence',
  'SC' => 'Columbia',
  'SD' => 'Pierre',
  'TN' => 'Nashville',
  'TX' => 'Austin',
  'UT' => 'Salt Lake City',
  'VT' => 'Montpelier',
  'VA' => 'Richmond',
  'WI' => 'Madison',
  'WY' => 'Cheyenne',
  'WA' => 'Olympia',
  'WV' => 'Charleston'
}
cities.sort
puts cities.sort

# add some more cities
cities['AK'] = 'Juneau'
cities['AR'] = 'Little Rock'
cities['AL'] = 'Montgomery'
cities['AZ'] = 'Phoenix'
cities['CA'] = 'Sacramento'
cities['CO'] = 'Denver'
cities['CT'] = 'Hartford'
cities['DE'] = 'Dover'
cities['GA'] = 'Atlanta'
cities['HI'] = 'Honolulu'
cities['IL'] = 'Springfield'
cities['ID'] = 'Boise'
cities['IA'] = 'Des Moines'
cities['MI'] = 'Lansing'
cities['ME'] = 'Augusta'
cities['NY'] = 'Albany'
cities['OR'] = 'Salem'
cities['WA'] = 'Olympia'
cities['WY'] = 'Cheyenne'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state =['Texas']

if !state
  puts "Sorry, no state listed."
end

# default values using //= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
