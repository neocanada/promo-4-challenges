require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list


# on demande d'ajouter un étudiant et de l'ajouter à un tableau "student_list"
#def message(student_list)
 # puts "Type a student name:"
  #name = gets.chomp
  #student_list << name
#end
#3.times { message(students) }





students = []
name = "hgcjhg"

while name.length != 0
  puts "Type a student name:"
  name = gets.chomp
  if name != ""
    students << name
  end
end

sort_students = wagon_sort(students)


puts "Congratulations! Your Wagon has #{sort_students.size} students:"
if sort_students.size >= 2
  puts "#{sort_students[0..-2].join(', ')} and #{sort_students.last}"
else
  puts sort_students.first
end
