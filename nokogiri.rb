require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://joongang.joins.com/"

page = Nokogiri::HTML(open(PAGE_URL))
puts page.class

title_tag = page.css('title')
puts title_tag.text

main_articles = page.css('.main_article')
puts main_articles
