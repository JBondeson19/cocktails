class Cocktail < ApplicationRecord

    has_many :bar_cocktails
    has_many :bars, through: :bar_cocktails
    
end
