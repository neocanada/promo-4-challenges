require 'open-uri'
require 'json'


def generate_grid(grid_size)
  # TODO: generate random grid of letters

  letters = []
  grid_letters = ('A'..'Z').to_a

  grid_size.times do
    letters << grid_letters.sample
  end
  return letters
end

def calcul_score(attempt, time_taken)
  (time_taken > 60) ? 0 : 3 / time_taken.to_i + attempt.size

  # if time_taken < 5
  #   result[:score] = 100
  # elsif time_taken >= 5 && time_taken < 30
  #   result[:score] += 20
  # else
  #   result[:score] += 0
  # end

end

def get_translation(word)
 api_url = open("http://api.wordreference.com/0.8/80143/json/enfr/#{word}")
 word = JSON.parse(api_url.read)
 word['term0']["PrincipalTranslations"]["0"]["FirstTranslation"]["term"] unless word['Error']
end

def run_game(attempt, grid, start_time, end_time)
  time_taken = end_time - start_time
  result = {time: time_taken.to_i, score: 0}
  if attempt.upcase.chars.all? { |lettre| grid.include? lettre }
    if get_translation(attempt)
      result[:message] = "well done"
      result[:translation] = get_translation(attempt)
      result[:score] = calcul_score(attempt, time_taken)
    else
      result[:message] = "not an english word"
    end
  else
    result[:message] = "not in the grid"
  end
  result
end
