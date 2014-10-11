def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true


min = 1
max = 2
sum = 0
while min <= max
sum = sum min
min += 1
end

puts sum