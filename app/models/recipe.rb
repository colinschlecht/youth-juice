class Recipe < ApplicationRecord
    has_many :portfolios
    has_many :users, through: :portfolios
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    accepts_nested_attributes_for :ingredients

    def ingredients_attributes=(ingredient_attributes)
        ingredient_attributes.values.each do |ingredient_attribute|
            ingredient = Ingredient.find_or_create_by(ingredient_attribute)

            recipe_ingredient = RecipeIngredient.find_or_create_by(recipe: self, ingredient: ingredient)
        end
    end

    def ingredient_attributes
        self.ingredients ? self.ingredients : nil
    end
end
