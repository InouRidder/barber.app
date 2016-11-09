# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Barber.create(
  name: "Nico",
  description: "Italian barber in Amsterdam",
  location: "Amsterdam",
  services: "shave and haricut"
  )

User.create(
  name: "Ollie S",
  email: "barbalicious@haircut.com",
  role: "barber"
  )

User.create(
  name: "Roel da Cutta",
  email: "barbersszzz@babrb.com",
  role: "barber"
  )
User.create(
  name: "Thomas",
  email: "tgod@ego.com",
  role: "client"
  )
User.create(
  name: "Lea",
  email: "lea@lea.com",
  role: "client"
  )
User.create(
  name: "Xenia",
  email: "warrior@princess.com",
  role: "client"
  )

