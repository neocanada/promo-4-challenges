def anagrams?(a_string, another_string)
  a_string = a_string.gsub(/[\W_]/, "").downcase
  another_string = another_string.gsub(/[\W_]/, "").downcase

  if a_string.chars.sort.join == another_string.chars.sort.join
    return true
  else
    return false
  end
end

def anagrams_on_steroids?(a_string, another_string)
  a_string = a_string.gsub(/[\W_]/, "").downcase
  another_string = another_string.gsub(/[\W_]/, "").downcase

  a_string_hash =  Hash.new(0)
  another_string_hash = Hash.new(0)

  a_string.chars.each { |letter| a_string_hash[letter] += 1 }
  another_string.chars.each { |letter| another_string_hash[letter] += 1 }

  a_string_hash == another_string_hash
end