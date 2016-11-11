# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Barber.destroy_all
User.destroy_all

barber1 = Barber.create(
  name: "God of Cuts",
  description: "Italian barber in Amsterdam",
  location: "Lijnbaansgracht 35, Amsterdam",
  services: "shave and haricut"
  )

barber2 = Barber.create(
  name: "Ecological and Fair Cuts",
  description: "Goat woll socks to cut yo hairs.",
  location: "Herengracht 327, Amsterdam",
  services: "shave and haricut"
  )

barber3 = Barber.create(
  name: "Very far away.",
  description: "Doesnt matter, no one ever goes to utrecht",
  location: "Herengracht 75, Utrecht",
  services: "shave and haricut"
  )

barber4 = Barber.create(
  name: "Love to cut people",
  description: "Just got out of jail, have been good at cutting a while now. Lorem ipsum dolor sit amet.",
  location: "Linnaeusstraat 28, Amsterdam",
  services: "shave and haricut, hiding bodies and cleaning up blood"
  )

barber5 = Barber.create(
  name: "Nico",
  description: "Italian barber in Amsterdam",
  location: "Van Woustraat 30, Amsterdam",
  services: "Looking sharp, shave and haricut"
  )

barber6 = Barber.create(
  name: "Microwave",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ab quasi voluptates cum omnis, dolores recusandae dolorem voluptas. Mollitia deleniti, recusandae totam ipsam?",
  location: "Leidseplein, Amsterdam",
  services: "shave and haricut"
  )

User.create(
  name: "Ollie S",
  email: "barbalicious@haircut.com",
  password: "password",
  barber: barber1
  )

User.create(
  name: "Roel da Cutta",
  email: "barbersszzz@babrb.com",
  password: "password",
  barber: barber2
  )
User.create(
  name: "Thomas",
  email: "tgod@ego.com",
  password: "password",
  barber: barber3
  )
User.create(
  name: "Lea",
  email: "lea@lea.com",
  password: "password",
  barber: barber4
  )
User.create(
  name: "Xenia",
  email: "warrior@princess.com",
  password: "password",
  barber: barber5
  )

User.create(
  name: "Xenia2",
  email: "warrior2@princess.com",
  password: "password",
  barber: barber6
  )
User.create(
  name: "Inou",
  email: "inou@gmail.com",
  password: "password"
  )
