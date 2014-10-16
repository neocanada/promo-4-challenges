require 'nokogiri'
require 'open-uri'

class Browser
  def fetch_content(url)
    Nokogiri::HTML(open(url)) do |config|
      config.strict.nonet
    end
  end
end