class Portfolio < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :user, uniqueness: true, if: :already_exist


  def already_exist
    self.user.recipes.include?(self.recipe)
  end
end
