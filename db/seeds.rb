# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create! :email => 'accountant@kpmg.com', :password => 'password', :password_confirmation => 'password', :company => Company.all.first
user1 = User.create! :email => 'manager@kpmg.com', :password => 'password', :password_confirmation => 'password', :company => Company.all.first
user2 = User.create! :email => 'eavesdropper@pwc.com', :password => 'password', :password_confirmation => 'password', :company => Company.all.last