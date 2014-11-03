require_relative 'parse'
require_relative "cookbook"


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
      puts "#{index + 1} - #{recipe.name}"
    end
  end

    def ask_for_id_to_destroy
    puts "What's the recipe index you want to remove?"
    index = gets.chomp.to_i
    return index
  end

  def ask_user_for_ingredient
    puts "I propose you to find some recipes from Mamiton, which ingredient are you looking for ?"
    print "> "
    gets.chomp
  end

  def list_from_marmiton(array)
    puts "Here are the recipes for this ingredient"
    array.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe[:title]}"
    end
  end

  def ask_for_index
    puts "which recipe would you like to add to your cookbook, enter the index"
    index = gets.chomp
    return index
  end

  def ask_for_detail
    puts "Type the index of the recipe you want to see the detail"
    gets.chomp
  end

end

  # def ask_for_detail
  #   puts "Type the index of the recipe you want to see the detail"
  #   index = gets.chomp
  #   detail = @cookbook.recipes[index.to_i - 1]
  #   detail.each do |recipe|
  #     puts "#{recipe.name} : #{receipe.description}"
  #   end
  # end




