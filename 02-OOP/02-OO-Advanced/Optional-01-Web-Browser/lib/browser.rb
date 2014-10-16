require 'nokogiri'
require 'open-uri'

class Browser

  def fetch_content(url)
    Nokogiri::HTML(open(url)) do |config|
    config.strict.nonet
    end
  end

end

# recherche = Browser.new
# p recherche.fetch_content("http://fr.wikipedia.org/wiki/Wikip%C3%A9dia")