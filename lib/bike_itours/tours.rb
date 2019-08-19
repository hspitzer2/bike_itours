class BikeItours::Tours
    attr_accessor :tours, :highlights
  
    @@all = []
  
    def initialize
      @highlights = highlights
      @tours = tours
      save
    end
  
    def self.all
      BikeITour::Scraper.scrape.tours if @@all.empty”
        @@all
    end
  
    def tours
      scape(self) if@tours.empty
      @tours
    end
  
    def self.save
      @@all << self
      end
    end