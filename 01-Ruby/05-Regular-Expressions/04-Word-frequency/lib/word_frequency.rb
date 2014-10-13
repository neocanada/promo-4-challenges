def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words

words_hash = Hash.new(0)

File.open(file_name, "r").each_line do |line|
  no_line = line.gsub(/\n/, "")
  no_line.scan(/\w+/).each { |words| words_hash[words.downcase] += 1 }
end

File.open(stop_words_file_name, "r").each_line do |line|
  no_line2 = line.gsub(/\n/, "")
  no_line2.scan(/\w+/).each { |words| words_hash[words.downcase] += 0 }
end

end