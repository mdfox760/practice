require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("https://www.reddit.com/new/"))
entries = doc.css('.entry')
entries.length
entries[0].css('p.title>a')
entries[0].css('p.title>a').text # title
entries[0].css('p.title>a')[0]['href'] # link
entries.each do |entry|
  puts entry.css('p.title>a').text
  puts entry.css('p.title>a')[0]['href']
end

class Entry
  def initialize(title, link)
    @title = title
    @link = link
  end
  attr_reader :title
  attr_reader :link
end

entriesArray = []
entries.each do |entry|
  title = entry.css('p.title>a').text
  link = entry.css('p.title>a')[0]['href']
  entriesArray << Entry.new(title, link)
end
