require_relative 'controller'
require_relative 'parse'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "           --           "
    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.find_with_ingredient
    when 2 then @controller.list
    when 3 then @controller.create
    when 4 then @controller.destroy
    when 5 then stop
    else puts "Please press 1, 2, 3 or 4"
    end
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - Import recipes from marmiton [web_import]"
    puts "2 - List all recipes [list]"
    puts "3 - See a recipe details [see <recipe_id>]"
    puts "4 - Mark a recipe [mark <recipe_id>]"
    puts "5 - Add a recipe [add]"
    puts "6 - Delete a recipe [del <recipe_id>]"
    puts "7 - Exit"
  end
end