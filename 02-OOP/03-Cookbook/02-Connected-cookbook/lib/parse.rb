require 'nokogiri'
require 'open-uri'




class Parse

  attr_accessor :url, :recipes_box
  def initialize(url)
    @url = url
  end

  def parse_process

    recipes_box = []
    response = Nokogiri::HTML(open(@url), nil, 'utf-8')

    response.css('.m_contenu_resultat').each do |element|
      recipes_hash = {}
      recipes_hash = {
      :title => element.search('.m_titre_resultat > a').inner_text,
      :rates => "Rating : #{element.search('.m_recette_note1').size} / 5",
      :votes => "Number of vote : #{element.search('.m_recette_nb_votes').inner_text }",
      :detail_time => "Cooking et Prep time : #{element.search('.m_detail_time > div').inner_text }",
      :description => "#{element.search('.m_texte_resultat').inner_text }"
    }
    recipes_box << recipes_hash
    end
    recipes_box
  end
end

# nouvelle = Parse.new("http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise-%3E-marmiton.html")
# nouvelle.parse_process
# p nouvelle.recipes_box