def bugged_concatenate(array)
  array.reduce("") { |a, e| a.to_s + e.to_s }.upcase
end

def build_1984_title
  bugged_concatenate([1, "9", 84, " ", "George Orwell"])
end