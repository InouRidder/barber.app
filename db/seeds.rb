# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'db/seed_barber'

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
  barbershop: hipstershop
  )
sleep(1)
barber6 = Barber.create!(
  name: "Microwave",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ab quasi voluptates cum omnis, dolores recusandae dolorem voluptas. Mollitia deleniti, recusandae totam ipsam?",
  location: "Leidseplein, Amsterdam",
  services: " Haircut, Shave, Trimming",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u6,
  barbershop: hipstershop
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

service1 = Service.create!(
  name: "Haircut"
  # description: "Our barbers custom cut your hair to fit your head shape and listen to your special requests so you walk away more than satisfied with your visit."
  )

service2 = Service.create!(
  name: "Beard & Moustache trim"
  # description: "A haircut for your beard which includes shaping, trimming and straight razor shave to outline and clean up all the areas without hair to highlight your awesome beard."
  )

service3 = Service.create!(
  name: "Straight Razor Shave"
  # description: "Done the old fashioned way - Straight razor, hot towels and hot lather with an aftershave to finish it off."
  )

service4 = Service.create!(
  name: "Buzz Cut"
  # description: "Even all around, shape up not included but we'll still shave your hairy neck."
  )

service5 = Service.create!(
  name: "Head Shave"
  # description: "Same as our straight razor shave, but for your noggin."
  )

service6 = Service.create!(
  name: "Kids haircut"
  # description: "We'll make ya kid look even better"
  )

service7 = Service.create!(
  name: "Deluxe end to end"
  # description: "Includes deep cleansing shampoo, scalp massage, precision haircut and style, hot towel neck shave, and rejuvenating shoulder and neck massage."
  )

service8 = Service.create!(
  name: "Grey Blending"
  # description: "Hair color so subtle, all they’ll notice is the younger-looking you. The effect lasts for a month. For an additional charge, color may also be applied to mustache, beard, and sideburns."
  )
