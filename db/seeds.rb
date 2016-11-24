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
  password: "password",
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
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u1,
  picture: "barber1.jpg"
  )
sleep(1)
barber2 = Barber.create(
  name: "Ecological and Fair Cuts",
  description: "Goat woll socks to cut yo hairs.",
  location: "Herengracht 327, Amsterdam",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u2,
  picture: "barber2.jpg"
  )
sleep(1)
barber3 = Barber.create(
  name: "Very far away.",
  description: "Doesnt matter, no one ever goes to utrecht",
  location: "Herengracht 75, Utrecht",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u3,
  picture: "barber3.jpg"
  )
sleep(1)

barber4 = Barber.create(
  name: "Love to cut people",
  description: "Just got out of jail, have been good at cutting a while now. Lorem ipsum dolor sit amet.",
  location: "Linnaeusstraat 28, Amsterdam",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u4,
  picture: "barber4.jpg"
  )
sleep(1)
barber5 = Barber.create!(
  name: "Nico",
  description: "Italian barber in Amsterdam",
  location: "Van Woustraat, Amsterdam",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u5,
  barbershop: hipstershop,
  picture: "barber5.jpg"
  )
sleep(1)
barber6 = Barber.create!(
  name: "Microwave",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ab quasi voluptates cum omnis, dolores recusandae dolorem voluptas. Mollitia deleniti, recusandae totam ipsam?",
  location: "Leidseplein, Amsterdam",
  drinks: " Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u6,
  barbershop: hipstershop,
  picture: "barber6.jpg"
  )
sleep(1)
barber7 = Barber.create!(
  name: "Life is a cut",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ab quasi voluptates cum omnis, dolores recusandae dolorem voluptas. Mollitia deleniti, recusandae totam ipsam?",
  location: "Waarderweg, Haarlem",
  drinks: " Blood, Woodford Bourbon, Nikka from the Barrel, Remy XO",
  user: u7,
  picture: "barber7.jpg"
  )

sleep(1)
barber8 = Barber.create!(
  name: "Gentleman's Club",
  description: "If a cut and a drink is what your looking for, halt your search and be seated.",
  location: "Keizersgracht 430, Amsterdam",
  drinks: " XO Hennessy",
  picture: "barber8.jpg"
  )

sleep(1)
barber9 = Barber.create!(
  name: "Edward Sharp's Office",
  description: "Our hands and knives cant be seperated, hence skill with hair equals your ability to grab a drink",
  location: "Olympiaplein, Amsterdam",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
  )

###################### NEED PICTURES

sleep(1)
barber10 = Barber.create!(
  name: "Original Barbershop",
  description: "Fancy a haircut? We are original.",
  location: "502 Hudson St, New York, NY 10014, Verenigde Staten",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
  )

sleep(1)
barber11 = Barber.create!(
  name: "Slice and Dice",
  description: "Circles, Ovals or Straight Up Razors Shaves, we will dice and slice your hair with ease",
  location: "89 Lincoln St, Boston, Cape Town, 7530, Zuid-Afrika",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
  )

sleep(1)
barber12 = Barber.create!(
  name: "Barbers From Heaven",
  description: "For all your divine cuts and heavenly shaves",
  location: "506 Hudson St, New York, NY 10014, Verenigde Staten",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
  )

sleep(1)
barber13 = Barber.create!(
  name: "New York Barbershop",
  description: "Our hands and knives cant be seperated, hence skill with hair equals your ability to grab a drink",
  location: "Avenida de América, 6, 28028 Madrid, Spanje",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
  )

sleep(1)
barber14 = Barber.create!(
  name: "Ministry of Hairy Affairs",
  description: "Politically correct cuts, cut to the chase",
  location: "Thonglor soi 5-7, Bangkok, Thailand 10110, Thailand",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
  )



sleep(1)
barber15 = Barber.create!(
  name: "Le Bon Magnifique",
  description: "We make le dog Ze most beautifoel creature of your life, oke",
  location: "68 Avenue de la République, 75011 Paris, Frankrijk",
  picture: "barber9.jpg",
  drinks: " Nikka from the Barrel"
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

