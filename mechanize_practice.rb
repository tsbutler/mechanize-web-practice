# require 'mechanize'

# mechanize = Mechanize.new

# page = mechanize.get('http://stackoverflow.com')

# puts page.title

# --------------------------

require 'mechanize'

mechanize = Mechanize.new

# page = mechanize.get('http://bbc.co.uk/news')

# puts page.title

# puts page.at('.buzzard h3').text.strip

# The #at method takes a CSS selector string and returns the first matching 
# node, in this case an h2 element. The #text method returns the textual 
# content inside the element, in this case the title of the top story. Try 
# changing the selector to see what other elements you can pick out of the 
# page. (The preceding was lifted from the website I found this tutorial 
# http://readysteadycode.com/howto-scrape-websites-with-ruby-and-mechanize as # is most of this.)

# page = mechanize.get('http://en.wikipedia.org/wiki/Main_Page')

# link = page.link_with(text: 'Random article')

# page = link.click

# puts page.uri

# The #link_with method is provided by mechanize, and makes it easy to pull out
# the random article link. The #click method instructs mechanize to follow the # link, and the #uri method returns the address of the page. Notice that 
# mechanize follows redirects automatically, so this example makes three HTTP # requests in total.

page = mechanize.get('http://www.gov.uk')

form = page.forms.first

form['q'] = 'passport'

page = form.submit

page.search('#results h3').each do |h3|
  puts h3.text.strip
end

# Instead of searching by CSS selector we pick the first form on the page, and # set the value of the search field, just as if we had been using a web 
# browser directly. Then we submit the form and list out the top results.



# Here's a list of suggested exercises from the tutorial about how to 
# proceed.  

# Write a script to count the number of links in a web page
# Write a script to calculate the most popular keywords on a web page
# Write a script to simulate a user logging in to your local Rails app
# Use the microformats2 gem to parse the microformats2 examples
# Adapt the search form example to search Wikipedia or Amazon