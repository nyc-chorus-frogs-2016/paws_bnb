# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(username: "Matt", email: "matt@o.com", password: "123456", zip: 10003)
dog1 = Dog.create(name: "dobby", sex: "male", is_neutered: "true", owner_id: user1.id, description: "very friendly dog !" )
