require "nokogiri"
require "open-uri"
class Scraper
    def self.get_page
      #html = open("https://www.ebay.com/sch/i.html?_from=R40&_nkw=gtx+1080&_sacat=0&_ipg=200")
      doc = Nokogiri::HTML(open("https://www.ebay.com/sch/i.html?_from=R40&_nkw=gtx+1080&_sacat=0&_ipg=200"))
      doc.css("div.s-item__info.clearfix")
    end
  end