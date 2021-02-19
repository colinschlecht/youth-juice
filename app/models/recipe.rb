class Recipe < ApplicationRecord
    has_many :portfolios, dependent: :destroy
    has_many :users, through: :portfolios
    has_many :recipe_ingredients, dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients
    validates :name, uniqueness: true
    validates :ingredients, presence: true
    validates_associated :ingredients

    # accepts_nested_attributes_for :recipe_ingredients
    accepts_nested_attributes_for :ingredients, reject_if: lambda{|attrs| attrs['name'].blank?}

    # def ingredients_attributes=(ingredients_attributes)
    #     ingredients_attributes.values.each do |ingredient_attribute|
    #         ingredient = Ingredient.find_or_create_by(ingredient_attribute)

    #         recipe_ingredient = RecipeIngredient.find_or_create_by(recipe: self, ingredient: ingredient)
    #     end
    # end

    #return the first portfolio object
    def first_create
        self.portfolios.order(:created_at).first
    end

    #return the creator of the recipe
    def creator
        User.find(first_create.user_id)
    end

   
end
