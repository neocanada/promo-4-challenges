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
    recipes.each_with_index do |recipe, index|
      puts "#{index} - #{recipe.name} - #{recipe.description}"
    end
  end

    def ask_for_id_to_destroy
    puts "What's the recipe index you want to remove?"
    index = gets.chomp.to_i
    return index
  end

end