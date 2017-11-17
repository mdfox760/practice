# not finished.

require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'csv'
require 'Pry'

# This is how we request the page we're gong to scrape
page = HTTParty.get('https://sandiego.craigslist.org/search/pet?s=0')

# This is where we transform our http response into a nokogiri object
# which we copy the results from Pry into a separate html file
parse_page = Nokogiri::HTML(page)

# This is an empty array where we will store all the craigslist pets.
pets_array = []

# This is where we parse the data
parse_page.css('.content').css('.row').css('.hdrlnk').map do |a|
  post_name = a.text
  pets_array.push(post_name)
end

# This will push your array into a CSV file.
CSV.open('pets.csv', 'w') do |csv|
  csv << pets_array
end

# This gets the goods. Needs to be uncommented to run Pry.
 # Pry.start(binding)
