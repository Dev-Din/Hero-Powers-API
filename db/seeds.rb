# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a few heroes
Hero.create(name: 'Kamala Khan', super_name: 'Ms. Marvel')
Hero.create(name: 'Doreen Green', super_name: 'Squirrel Girl')
Hero.create(name: 'Gwen Stacy', super_name: 'Spider-Gwen')

# Create some powers and associate them with heroes
power1 = Power.create(name: 'super strength', description: 'gives the wielder super-human strengths')
power2 = Power.create(name: 'flight', description: 'gives the wielder the ability to fly through the skies at supersonic speed')

HeroPower.create(hero: Hero.first, power: power1, strength: 'Strong')
HeroPower.create(hero: Hero.first, power: power2, strength: 'Average')
