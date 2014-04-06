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
    my_array = []
    @ingredients.each do |item|
      item.each do |ingredient, grams|
        my_array << {ingredient => grams/x}
      end
    end
    my_array
  end
end

