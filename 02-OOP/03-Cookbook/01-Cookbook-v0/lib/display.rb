class Display
  def ask_user_for_new_recipe_name
    puts "Add a new recipe's name"
    print "> "
    gets.chomp
  end

  def ask_user_for_new_recipe_description
    puts "Add your new recipe's description"
    print "> "
    gets.chomp
  end

  def print_recipes(recipes)
    recipes.each do |recipe|
      puts "#{recipe.name}: #{recipe.description}"
    end
  end
end