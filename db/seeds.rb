# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Barber.destroy_all
User.destroy_all
Barbershop.destroy_all

hipstershop = Barbershop.create!(
  name: "hipstershop",
  location: "Rijnstraat 25, Amsterdam",
  description: "cozy barbershop Rivierenbuurt"
  )

u1 = User.create(
  name: "Ollie S",
  email: "barbalicious@haircut.com",
  password: "password"
  )

u2 = User.create(
  name: "Roel da Cutta",
  email: "barbersszzz@babrb.com",
  password: "password"
  )
u3 = User.create(
  name: "Thomas",
  email: "tgod@ego.com",
  password: "password"
  )
u4 = User.create(
  name: "Lea",
  email: "lea@lea.com",
  password: "password"
  )
u5 = User.create(
  name: "Xenia",
  email: "warrior@princess.com",
  password: "password"
  )

u6 = User.create(
  name: "Xenia2",
  email: "warrior2@princess.com",
  password: "password"
  )
u7 = User.create(
  name: "Inou",
  email: "inou@gmail.com",
  password: "password"
  )

barber1 = Barber.create(
  name: "God of Cuts",
  description: "Italian barber in Amsterdam",
  location: "Lijnbaansgracht 35, Amsterdam",
  services: " Haircut, Shave, Trimming",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u1
  )
sleep(1)
barber2 = Barber.create(
  name: "Ecological and Fair Cuts",
  description: "Goat woll socks to cut yo hairs.",
  location: "Herengracht 327, Amsterdam",
  services: " Haircut, Shave, Trimming, Serving Whiskey",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u2
  )
sleep(1)
barber3 = Barber.create(
  name: "Very far away.",
  description: "Doesnt matter, no one ever goes to utrecht",
  location: "Herengracht 75, Utrecht",
  services: " Haircut, Shave, Trimming, Drinking",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u3
  )
sleep(1)

barber4 = Barber.create(
  name: "Love to cut people",
  description: "Just got out of jail, have been good at cutting a while now. Lorem ipsum dolor sit amet.",
  location: "Linnaeusstraat 28, Amsterdam",
  services: " Haircut, Shave, Trimming, Hiding of Body",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u4
  )
sleep(1)
barber5 = Barber.create!(
  name: "Nico",
  description: "Italian barber in Amsterdam",
  location: "Van Woustraat 30, Amsterdam",
  services: " Haircut, Shave, Trimming",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u5,
  barbershop: "hipstershop"
  )
sleep(1)
barber6 = Barber.create!(
  name: "Microwave",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ab quasi voluptates cum omnis, dolores recusandae dolorem voluptas. Mollitia deleniti, recusandae totam ipsam?",
  location: "Leidseplein, Amsterdam",
  services: " Haircut, Shave, Trimming",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u6,
  barbershop: "hipstershop"
  )
sleep(1)
barber7 = Barber.create!(
  name: "Life is a cut",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ab quasi voluptates cum omnis, dolores recusandae dolorem voluptas. Mollitia deleniti, recusandae totam ipsam?",
  location: "Waarderweg, Haarlem",
  services: " Haircut, Shave, Trimming",
  drinks: " Blood, Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u7
  )



