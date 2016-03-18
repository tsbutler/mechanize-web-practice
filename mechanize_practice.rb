# require 'mechanize'

# mechanize = Mechanize.new

# page = mechanize.get('http://stackoverflow.com')

# puts page.title

require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://google.com')

puts page.title