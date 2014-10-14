def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words

words_hash = Hash.new(0)
text = ""
stop_word = []

File.open(file_name, "r").each_line do |line|
  no_line = line.gsub(/\n/, "")
  no_line.scan(/\w+/).each { |words| words_hash[words.downcase] += 1 }
end

File.open(stop_words_file_name, "r").each_line do |line|
  no_line2 = line.gsub(/\n/, "")
  no_line2.scan(/\w+/).each { |words| words_hash[words.downcase] += 0 }
end

  # while number_of_word > 0
  #   word.each { |k, v| theword = k if v == word.values.max }
  #   resultat[theword] = word.values.max
  #   word[theword] = 0
  #   number_of_word -= 1
  # end

  # resultat


end