class CreateBarCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :bar_cocktails do |t|
      t.belongs_to :cocktail
      t.belongs_to :bar

      t.timestamps
    end
  end
end
