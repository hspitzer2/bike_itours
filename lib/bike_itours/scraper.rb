require 'nokogiri'
require 'open-uri'
    
class BikeItours::Scraper

  def scrape
    site = "https://www.cyclebreaks.com/tours/italy/"
  end

  def list_tours
    scrape

    # site = "https://www.cyclebreaks.com/tours/italy/"

    doc = Nokogiri::HTML(open(scrape))

    names = doc.css(".summary-item-h h2").map(&:text)
    list_names = names.map.with_index(1) do |name, index|
      "#{index}. #{name}"
    end
    puts list_names
  end

  def get_details(tour)
    scrape
    # site = "https://www.cyclebreaks.com/tours/italy/"

    doc = Nokogiri::HTML(open(scrape))

    links = doc.css("a.cta-box-btn").map{|link| link.attr("href")}

    scrape_detail_link = Nokogiri::HTML(open(links[tour-1]))

    highlights = scrape_detail_link.css("div.content-tour p").text

    puts highlights
  end
end
