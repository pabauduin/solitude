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
      user_type: '1',
      email: 'raphael@gmail.com',
      password: 'azerty'
      )

sara =
      User.create!(
        name: 'Sara',
        email_address: 'sara@gmail.com',
        city: 'Paris',
        user_type: '0',
        email: 'sara@gmail.com',
        password: 'azerty'
        )

alex =
      User.create!(
        name: 'Alex',
        email_address: 'alex@gmail.com',
        city: 'Lyon',
        user_type: '1',
        email: 'alex@gmail.com',
        password: 'azerty'
        )

pa =
      User.create!(
        name: 'PA',
        email_address: 'pa@gmail.com',
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
  hair_color: "black",
  user: raph,
  gender: "Homme"
)
jean.remote_photo_url = "https://file1.telestar.fr/var/telestar/storage/images/2/9/3/293790/1747793-1/Sylvain-Durif-a-la-57eme-place-du-classement-des-Mecs-a-adopter-2017_exact1024x768_l.jpg"
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
simon.remote_photo_url = "http://aws-cf.caradisiac.com/prod/photos/3/8/5/653385/1777472/img-1777472c8d.jpg?v=6"
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
remy.remote_photo_url = "http://www.coiffexpert.com/assets/Uploads/homme-content.jpg"
remy.save!

marine = Escort.new(
  name: "Marine",
  age: "21",
  size: "175",
  origin: "Caucasien",
  available_dates: Faker::Date.forward(days: 23),
  price_per_day: "400€",
  city: "Lille",
  hair_color: "black",
  user: alex,
  gender: "Femme"
)
marine.remote_photo_url = "https://img.buzzfeed.com/buzzfeed-static/static/2017-02/6/9/asset/buzzfeed-prod-fastlane-02/sub-buzz-30775-1486389833-1.jpg?downsize=700:*&output-format=auto&output-quality=auto"
marine.save!


dominique = Escort.new(
  name: "Dominique",
  age: "38",
  size: "175",
  origin: "Caucasien",
  available_dates: Faker::Date.forward(days: 23),
  price_per_day: "200€",
  city: "Bordeaux",
  hair_color: "black",
  user: alex,
  gender: "Femme"
)
dominique.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1qOHbiKkERfXcS3t3oNPOD2UUvgVkhUVgdhBpPhYPjIvw6l0fPQ"
dominique.save!


puts "Success, we created #{Escort.count} escorts and #{User.count} users"
