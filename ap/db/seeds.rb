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

Partnership.create(name: 'Admin')
Partnership.create(name: 'German Project')
Partnership.create(name: 'Journalism Project')
Partnership.create(name: 'Business Project')
Partnership.create(name: 'Some Other Project')

Membership.create(user_id: '1', partnership_id: '1')
Membership.create(user_id: '2', partnership_id: '1')
Membership.create(user_id: '3', partnership_id: '2')
Membership.create(user_id: '4', partnership_id: '2')
Membership.create(user_id: '5', partnership_id: '3')
Membership.create(user_id: '6', partnership_id: '3')
Membership.create(user_id: '7', partnership_id: '4')
Membership.create(user_id: '8', partnership_id: '4')
Membership.create(user_id: '9', partnership_id: '5')
Membership.create(user_id: '10', partnership_id: '5')

Project.create(title: 'Project 1', technical_description: "Generic description.")
Project.create(title: 'Project 2', technical_description: "Generic description.")
Project.create(title: 'Project 3', technical_description: "Generic description.")
Project.create(title: 'Project 4', technical_description: "Generic description.")
Project.create(title: 'Project 5', technical_description: "Generic description.")

Ownership.create(project_id: '1', partnership_id: '1')
Ownership.create(project_id: '2', partnership_id: '2')
Ownership.create(project_id: '3', partnership_id: '3')
Ownership.create(project_id: '4', partnership_id: '4')
Ownership.create(project_id: '5', partnership_id: '5')

Resource.create(content: '<h2>Web Resources</h2><h3 style=\"margin-left: 40px;\">Ruby on Rails</h3><h4 style=\"margin-left: 80px;\">The Rails Guides</h4><p style=\"margin-left: 120px;\"><a href=\"http://guides.rubyonrails.org/\">http://guides.rubyonrails.org</a></p>')

Notification.create(message: 'Go to class!', user_notified: '0')
Notification.create(message: 'Notification to G Ruth 1', link: '', user_notified: '3')
Notification.create(message: 'Notification to G Ruth 2', user_notified: '3')
Notification.create(message: 'Notification to G Ruth 3', user_notified: '3')
Notification.create(message: 'Notification to Joe Dimaggio 1', link: '', user_notified: '4')
Notification.create(message: 'Notification to Joe Dimaggio 2', link: '', user_notified: '4')
Notification.create(message: 'Notification to Joe Dimaggio 3', link: '', user_notified: '4')
