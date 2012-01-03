# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

color_theme_red = ColorTheme.find_or_create_by_name('Red')
color_theme_blue = ColorTheme.find_or_create_by_name('Blue')

Offer.find_or_create_by_name('W1')
Offer.find_or_create_by_name('W2')
Offer.find_or_create_by_name('W3')
Offer.find_or_create_by_name('W4')
Offer.find_or_create_by_name('J1')
Offer.find_or_create_by_name('J2 - Day')
Offer.find_or_create_by_name('J2 - Night')
Offer.find_or_create_by_name('J3')