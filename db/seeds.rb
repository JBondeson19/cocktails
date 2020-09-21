# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Bar.destroy_all

Cocktail.create(name: "Cosmo", price: 12.50)
Cocktail.create(name: "Martini" , price: 13.25)
Cocktail.create(name: "Manhattan" , price: 13.25 )
Cocktail.create(name: "Mai Tai" , price: 14.30)
Cocktail.create(name: "Cuba Libre" , price: 10.25 )
Cocktail.create(name: "Greenpoint" , price: 13.00 )

Bar.create(name: "Cloak and Blaster" , location: "Orlando")
Bar.create(name: "Death & Co" , location: "NYC")
Bar.create(name: "Terry O'Reilleys" , location: "Newton" )
