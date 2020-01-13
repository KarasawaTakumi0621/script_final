# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.new
@user.name = 'Fox McCloud'
@user.username = 'Fox'
@user.location = 'Tokyo, Japan'
@user.about = 'Fighter'
@user.save

@user = User.new
@user.name = 'Falco Lombardi'
@user.username = 'Falco'
@user.location = 'Chiba, Japan'
@user.about = 'Meteor'
@user.save