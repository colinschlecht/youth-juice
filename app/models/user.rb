class User < ApplicationRecord
    has_many :portfolios
    has_many :recipes, through: :portfolios

    validates :username, presence: true
    validates :password, presence: true
    validates :username, uniqueness: true

    has_secure_password
end
