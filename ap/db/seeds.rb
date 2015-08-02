# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Ken Harsch', email: 'kharsch@brandeis.edu', password: '12345678', admin: 'true')
User.create(name: 'Maria Altebarmakian',  email: 'maltebar@brandeis.edu', password: '12345678', admin: 'true')
User.create!(name: 'George Ruth', email: 'gruth@brandeis.edu', password: '12345678')
User.create!(name: 'Joe Dimaggio', email: 'jdimmagio@brandeis.edu', password: '12345678')
User.create!(name: 'Gary Carter', email: 'gcarter@brandeis.edu', password: '12345678')
User.create!(name: 'Sean Casey', email: 'scasey@brandeis.edu', password: '12345678')
User.create!(name: 'Lou Gehrig', email: 'lgehrig@brandeis.edu', password: '12345678')
User.create!(name: 'Ken Griffey', email: 'kgriffey@brandeis.edu', password: '12345678')
User.create!(name: 'Roy Halladay', email: 'rhalladay@brandeis.edu', password: '12345678')
User.create!(name: 'Mike Hargrove', email: 'mhargrove@brandeis.edu', password: '12345678')

Partnership.create(user_1_id: '3', user_2_id: '4')
Partnership.create(user_1_id: '5', user_2_id: '6')
Partnership.create(user_1_id: '7', user_2_id: '8')
Partnership.create(user_1_id: '9', user_2_id: '10')

