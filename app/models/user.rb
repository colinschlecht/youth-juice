class User < ApplicationRecord
    has_many :portfolios, dependent: :destroy
    has_many :recipes, through: :portfolios, dependent: :destroy

    validates :username, presence: true
    validates :password, presence: true
    validates :username, uniqueness: true

    has_secure_password
end
