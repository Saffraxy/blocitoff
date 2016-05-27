# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

#Create Users
5.times do
  User.create!(
    email: RandomData.random_email,
    password: RandomData.random_sentence,
  )
end
users = User.all

#create items;
20.times do
  Item.create!(
  user: users.sample,
  title: RandomData.random_sentence
  )
end
items = Item.all

puts "Seed Finished"
puts "#{Item.count} items created"
