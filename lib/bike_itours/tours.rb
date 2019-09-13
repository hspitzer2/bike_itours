class BikeItours::Tours
    attr_accessor :tours, :highlights, :name
  
    @@all = []
  
    def initialize
      @highlights = highlights
      @tours = tours
      @name = name
      save
    end
  
    def self.all
      BikeItour::Scraper.scrape.tours if @@all.empty”
        @@all
    end
  
    def tours
      scape(self) if@tours.empty
      @tours
    end
  
    def self.save
      @@all << self
      end

      def self.tour_name
        Tours.all.map(&:name)
      end
    
      def self.tour_highlight
        Tours.all.map(&:highlight)
      end
     
    end