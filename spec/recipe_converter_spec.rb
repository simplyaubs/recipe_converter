require 'rspec'
require 'recipe_converter'

describe RecipeConverter do
  it "prints an array of ingredients" do
    ingredients = RecipeConverter.new([:salt => 45, :sugar => 60])

    expect(ingredients.to_tablespoons).to eq([:salt => 45, :sugar => 60])
  end
end