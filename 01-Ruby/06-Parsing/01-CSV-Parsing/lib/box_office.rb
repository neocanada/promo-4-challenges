# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  csv_options = { col_sep: ',', quote_char: '"' }
  movies = []
  movie_year = []
  CSV.foreach(file_name, csv_options) do |row|
    movies << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
  end
  movies.each do |movie|
    if movie[:year] < max_year
      movie_year << { name: movie[:name], year: movie[:year], earnings: movie[:earnings] }
    end
  end
  movie_year.take(number).sort do |x, y|
    y[:earnings] <=> x[:earnings]
  end
end
# file_name = '/Users/popnfood/code/neocanada/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'


