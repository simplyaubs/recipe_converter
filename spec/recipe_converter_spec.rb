require 'rspec'
require 'recipe_converter'

describe "Recipe Converter" do
  it "Converts grams to tablespoons" do
    ingredients = RecipeConverter.new(["sugar" => 45, "salt" => 60])

    expect(ingredients.to_tablespoons).to eq([{"sugar" => 3}, {"salt" => 4}])
  end

  it "Converts grams to cups" do
    ingredients = RecipeConverter.new(["sugar" => 240, "salt" => 480])

    expect(ingredients.to_cups).to eq([{"sugar" => 1}, {"salt" => 2}])
  end
end

