# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Month.create name: 'Janvier', number: 1, season: Month::Season::WINTER
Month.create name: 'Février', number: 2, season: Month::Season::WINTER
Month.create name: 'Mars', number: 3, season: Month::Season::WINTER
Month.create name: 'Avril', number: 4, season: Month::Season::SPRING
Month.create name: 'Mais', number: 5, season: Month::Season::SPRING
Month.create name: 'Juin', number: 6, season: Month::Season::SPRING
Month.create name: 'Juillet', number: 7, season: Month::Season::SUMMER
Month.create name: 'Août', number: 8, season: Month::Season::SUMMER
Month.create name: 'Septembre', number: 9, season: Month::Season::SUMMER
Month.create name: 'Octobre', number: 10, season: Month::Season::AUTUMN
Month.create name: 'Novembre', number: 11, season: Month::Season::AUTUMN
Month.create name: 'Décembre', number: 12, season: Month::Season::AUTUMN

IngredientCategory.create name: 'Légume'
IngredientCategory.create name: 'Fruit'
IngredientCategory.create name: 'Légumineuse'
IngredientCategory.create name: 'Céréale'
IngredientCategory.create name: 'Féculent'
IngredientCategory.create name: 'Graine'
IngredientCategory.create name: 'Fruit sec'
IngredientCategory.create name: 'Base'
IngredientCategory.create name: 'Frais'
IngredientCategory.create name: 'Transformé'