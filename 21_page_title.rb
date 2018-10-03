#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#
require 'nokogiri' # gem install nokogiri (if you don't have it installed)
require 'open-uri'

require 'open-uri'

def pageTitle(url)
<<<<<<< HEAD
  open(url).read.scan(/<title>(.*?)<\/title>/)[0][0]
=======
  # Fetch and parse HTML document
  doc = Nokogiri::HTML(open(url))
  doc.search('title').children[0].text
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
end

