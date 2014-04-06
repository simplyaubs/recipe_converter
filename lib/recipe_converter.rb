class RecipeConverter
  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    fill(15)
  end

  def to_cups
    fill(240)
  end

  private
  def fill(x)
    @ingredients.collect do |item|
      item.collect do |ingredient, grams|
        {ingredient => grams/x}
      end
    end.flatten
  end
end

