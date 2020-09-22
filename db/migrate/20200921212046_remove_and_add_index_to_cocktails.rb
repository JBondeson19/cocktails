class RemoveAndAddIndexToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_index :cocktails, :name, unique: true
    add_index :bars, :name, unique: true
  end
end
