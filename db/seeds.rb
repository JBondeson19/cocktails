# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Bar.destroy_all
Ingredient.destroy_all

Cocktail.create(name: "Cosmo", price: 12.50)
Cocktail.create(name: "Martini" , price: 13.25)
Cocktail.create(name: "Manhattan" , price: 13.25 )
Cocktail.create(name: "Mai Tai" , price: 14.30)
Cocktail.create(name: "Cuba Libre" , price: 10.25 )
Cocktail.create(name: "Greenpoint" , price: 13.00 )

Ingredient.create(name: "Vodka", quantity: 2, measurement: "oz.")
Ingredient.create(name: "Gin", quantity: 2, measurement: "oz.")
Ingredient.create(name: "Rye", quantity: 2, measurement: "oz.")
Ingredient.create(name: "Sweet Vermouth", quantity: 1, measurement: "oz.")
Ingredient.create(name: "Dry Vermouth", quantity: 1, measurement: "oz.")
Ingredient.create(name: "Coke", quantity: 4, measurement: "oz.")
Ingredient.create(name: "Lime", quantity: 0.75, measurement: "oz.")
Ingredient.create(name: "Cranberry", quantity: 0.5, measurement: "oz." )
Ingredient.create(name: "Simple Syrup", quantity: 0.75, measurement: "oz.")
Ingredient.create(name: "Triple Sec", quantity: 0.75, measurement: "oz.")

Bar.create(name: "Cloak and Blaster" , location: "Orlando")
Bar.create(name: "Death & Co" , location: "NYC")
Bar.create(name: "Terry O'Reilleys" , location: "Newton" )
