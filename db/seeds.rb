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
      city: 'Lille',
      user_type: '1',
      email: 'raphael@gmail.com',
      password: 'azerty'
      )

sara =
      User.create!(
        name: 'Sara',
        city: 'Paris',
        user_type: '0',
        email: 'sara@gmail.com',
        password: 'azerty'
        )

alex =
      User.create!(
        name: 'Alex',
        city: 'Lyon',
        user_type: '1',
        email: 'alex@gmail.com',
        password: 'azerty'
        )

pa =
      User.create!(
        name: 'PA',
        city: 'Lille',
        user_type: '<0></0>',
        email: 'pa@gmail.com',
        password: 'azerty'
        )

puts 'Create escorts'

jean = Escort.new(
  name: "Jean",
  age: "31",
  size: "170",
  origin: "Caucasien",
  available_dates: Faker::Date.forward(days: 23),
  price_per_day: "300€",
  city: "Lille",
  hair_color: "noir",
  user: raph,
  gender: "Homme"
)
jean.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566381728/szcfrfwhopt27owinw9z.jpg"
jean.save!


simon = Escort.new(
    name: "simon",
    age: "24",
    size: "179",
    origin: "Asiatique",
    available_dates: Faker::Date.forward(days: 23),
    price_per_day: "100€",
    city: "Lille",
    hair_color: "brun",
    user: alex,
    gender: "Homme"
    )
simon.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566377108/c7quzagyyb9lbcnadnug.jpg"
simon.save!

remy = Escort.new(
  name: "Remy",
  age: "21",
  size: "190",
  origin: "Caucasien",
  available_dates: Faker::Date.forward(days: 23),
  price_per_day: "400€",
  city: "Paris",
  hair_color: "blond",
  user: raph,
  gender: "Homme"
)
remy.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566315407/xl96xlf5of7yp1vxl7fn.jpg"
remy.save!

marine = Escort.new(
  name: "Marine",
  age: "21",
  size: "175",
  origin: "Caucasien",
  available_dates: Faker::Date.forward(days: 23),
  price_per_day: "400€",
  city: "Lyon",
  hair_color: "noir",
  user: alex,
  gender: "Femme"
)
marine.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566377110/gjhue6wmxiort2bvoj25.jpg"
marine.save!


dominique = Escort.new(
  name: "Dominique",
  age: "38",
  size: "175",
  origin: "Caucasien",
  available_dates: Faker::Date.forward(days: 23),
  price_per_day: "200€",
  city: "Bordeaux",
  hair_color: "noir",
  user: alex,
  gender: "Femme"
)
dominique.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566377110/g9tzt9kbfzr8uwsm0dvv.jpg"
dominique.save!


puts "Success, we created #{Escort.count} escorts and #{User.count} users"
