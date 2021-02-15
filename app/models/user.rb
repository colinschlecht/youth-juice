class User < ApplicationRecord
    has_many :portfolios
    has_many :recipes, through: :portfolios

    validates :username, presence: true
    validates :password, presence: true

    has_secure_password
end
