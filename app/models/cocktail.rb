class Cocktail < ApplicationRecord

    has_many :bar_cocktails
    has_many :bars, through: :bar_cocktails

    has_many :cocktail_ingredients
    has_many :ingredients, through: :cocktail_ingredients
    
end
