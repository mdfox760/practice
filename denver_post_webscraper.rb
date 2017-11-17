require 'nokogiri'
require 'net/http'

# get the HTML from the website
uri  = URI("http://www.denverpost.com")
body = Net::HTTP.get(uri)

# parse it and use CSS selectors to find all links in list elements
document = Nokogiri::HTML(body)
links    = document.css('li a')

# print each interesting looking link
links.each do |link|
  next if link.text.empty? || link['href'].empty?
  puts link.text, "  #{link['href']}", "\n"
end

# pry at the bottom so we can play with it
require "pry"
binding.pry
