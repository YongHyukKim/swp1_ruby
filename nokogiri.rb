require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://joongang.joins.com/"

page = Nokogiri::HTML(open(PAGE_URL))


link_tags = page.css('a')
link_tags.each do |link|
    puts "텍스트 : " + link.text
    puts "주소 : " + link['href'].to_s
end
