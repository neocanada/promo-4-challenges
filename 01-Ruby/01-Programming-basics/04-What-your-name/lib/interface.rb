require_relative "compute_name"

# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

print "what's your first name?"
first_name = gets.chomp

print "What's your middle name?"
middle_name = gets.chomp

print "What's your last name?"
last_name = gets.chomp

puts "Hello, " + compute_name(first_name, middle_name, last_name)

#def identity(first_name, middle_name, last_name)


#end