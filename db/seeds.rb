# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroy all the user'
User.destroy_all

puts 'Destroy all escorts'
Escort.destroy_all

puts 'Create  4 User'
raph =
    User.create!(
      name: 'Raphael',
      email_address: 'raphael@gmail.com',
      city: 'Lille',
      user_type: 'pimp',
      email: 'raphael@gmail.com',
      password: 'azerty'
      )

sara =
      User.create!(
        name: 'Sara',
        email_address: 'sara@gmail.com',
        city: 'Paris',
        user_type: 'user',
        email: 'sara@gmail.com',
        password: 'azerty'
        )

alex =
      User.create!(
        name: 'Alex',
        email_address: 'alex@gmail.com',
        city: 'Lyon',
        user_type: 'pimp',
        email: 'alex@gmail.com',
        password: 'azerty'
        )

pa =
      User.create!(
        name: 'PA',
        email_address: 'pa@gmail.com',
        city: 'Lille',
        user_type: 'user',
        email: 'pa@gmail.com',
        password: 'azerty'
        )

puts 'Create escorts'

jean =
  Escort.create!(
    name: "Jean",
    age: "31",
    size: "170",
    origin: "Caucasien",
    available_dates: Faker::Date.forward(days: 23),
    price_per_day: "300€",
    city: "Lille",
    hair_color: "noirs",
    user: raph,
    photo: "https://source.unsplash.com/370x250/?people",
    gender: "Homme",
    )

simon =
  Escort.create!(
    name: "simon",
    age: "24",
    size: "179",
    origin: "Asiatique",
    available_dates: Faker::Date.forward(days: 23),
    price_per_day: "100€",
    city: "Lille",
    hair_color: "brun",
    user: alex,
    photo: "https://source.unsplash.com/370x250/?people",
    gender: "Homme",
    )

  remy =
  Escort.create!(
    name: "Remy",
    age: "21",
    size: "190",
    origin: "Caucasien",
    available_dates: Faker::Date.forward(days: 23),
    price_per_day: "500€",
    city: "Paris",
    hair_color: "blond",
    user: raph,
    photo: "https://source.unsplash.com/370x250/?people",
    gender: "Homme",
    )

  marine =
  Escort.create!(
    name: "Marine",
    age: "21",
    size: "175",
    origin: "Caucasien",
    available_dates: Faker::Date.forward(days: 23),
    price_per_day: "400€",
    city: "Lille",
    hair_color: "noirs",
    user: alex,
    photo: "https://source.unsplash.com/370x250/?people",
    gender: "Femme",
    )


 puts "Success, we created #{Escort.count} escorts and #{User.count} users"
