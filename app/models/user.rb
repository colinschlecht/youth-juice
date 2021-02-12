class User < ApplicationRecord
    has_many :portfolios
    has_many :recipes, through: :portfolios
end
