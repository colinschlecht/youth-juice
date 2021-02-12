class Recipe < ApplicationRecord
    has_many :portfolios
    has_many :users, through: :portfolios
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
end
