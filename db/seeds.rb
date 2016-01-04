# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Recipe.delete_all

c1 = Category.create(category: "Starters")

r1 = Recipe.create(name: "Tomato soup", image: "http://dingo.care2.com/pictures/greenliving/4/3519.large.jpg", instructions: "Finely chop 20 tomatoes and mix with 250ml of single cream.  Simmer for 1hr", description: "A stalwart favourite!", category_id: c1.id)