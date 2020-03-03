
require "pry"
require "nokogiri"
require "open-uri"

class Scraper

    def scrape_top_artist

        site = "https://www.billboard.com/charts/hot-100"
        doc = Nokogiri::HTML(open(site))
        results = doc.css('li span.chart-element__information')

        results.each do |row|
            artist_hash = {}
        artist_hash["name"] = artist_doc.css('span')[0].text.strip
        artist_hash["song"] = artist_doc.css('span')[1].text.strip
        end 

    end


end



# the first artist doc.css(".chart-list__element").first.css("span").map {|x| x.text}