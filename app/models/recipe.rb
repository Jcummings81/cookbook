class Recipe < ApplicationRecord
    validates_presence of :name

    has_many :recipe_ingredients, dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients
end
