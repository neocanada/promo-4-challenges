require_relative "cookbook"
require_relative "recipe"
require_relative "display"
require_relative "parse"

class Controller
  attr_reader :cookbook, :parse, :display

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def detail_recipe(id)
    recipes = @cookbook.recipes
    @display.ask_for_detail(id)



  end


  def list
    recipes = @cookbook.recipes
    @display.print_recipes(recipes)
    see_recipe_detail
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

  def find_with_ingredient
    ingredient = @display.ask_user_for_ingredient
    url_marmiton = URI.encode("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}-%3E-marmiton.html")
    new_search = Parse.new(url_marmiton)
    array = new_search.parse_process
    @display.list_from_marmiton(array)
    answer = @display.ask_for_index
    title_marmiton = array[answer.to_i - 1][:title]
    description_marmiton = array[answer.to_i - 1][:description]
    marmiton_recipe = Recipe.new(title_marmiton, description_marmiton)
    @cookbook.add_recipe(marmiton_recipe)
    puts " --- The recipe has been successfully saved --- "
  end

  # def see_recipe_detail
  #   puts "   ----------   "
  #   @display.ask_for_detail
  # end
end













