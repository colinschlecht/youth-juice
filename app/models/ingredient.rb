class Ingredient < ApplicationRecord
    has_may :recipe_ingredients
    has_many :recipes, through: :ingredients
end
