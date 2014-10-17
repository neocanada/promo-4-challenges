require_relative "cookbook"
require_relative "recipe"
require_relative "display"

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    recipes = @cookbook.recipes
    @display.print_recipes(recipes)
  end

  def create
    name = @display.ask_user_for_new_recipe_name
    description = display.ask_user_for_new_recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy(recipe)
    @cookbook.remove_recipe(recipe)
  end
end