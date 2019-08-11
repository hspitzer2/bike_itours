require_relative "bike_itours/version"
require_relative "bike_itours/cli"
require_relative "bike_itours/scraper"

require "nokogiri"
require "open-uri"

module BikeItours
  class Error < StandardError; end
  # Your code goes here...
end
