require "nokogiri"
require "open-uri"

require_relative "bike_itours/version"
require_relative "bike_itours/cli"
require_relative "bike_itours/scraper"
require_relative "bike_itours/tours"



module BikeItours
  class Error < StandardError; end
  # Your code goes here...
end
