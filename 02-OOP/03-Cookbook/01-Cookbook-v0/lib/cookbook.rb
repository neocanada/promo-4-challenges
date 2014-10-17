require "csv"
require_relative "recipe"

class Cookbook
  attr_reader :recipes

  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    CSV.foreach(csv_file, "r") do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    update_csv
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    update_csv
  end

  def update_csv
    CSV.open(@csv_file, "w") do |csv|
      @recipes.each do |recipe_row|
        csv << [recipe_row.name, recipe_row.description]
      end
    end
  end
end

