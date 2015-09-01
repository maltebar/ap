# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Ken Harsch', email: 'kharsch@brandeis.edu', password: '12345678', admin: 'true')
User.create(name: 'Maria Altebarmakian',  email: 'maltebar@brandeis.edu', password: '12345678', admin: 'true')

Resource.create(content: '<h2>Web Resources</h2><h3 style=\"margin-left: 40px;\">Ruby on Rails</h3><h4 style=\"margin-left: 80px;\">The Rails Guides</h4><p style=\"margin-left: 120px;\"><a href=\"http://guides.rubyonrails.org/\">http://guides.rubyonrails.org</a></p>')

