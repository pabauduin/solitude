
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

puts 'Destroy all bookings'
Booking.destroy_all

puts 'Create  4 User'
raphael =
    User.create!(
      name: 'Raphael',
      city: 'Lille',
      user_type: '1',
      email: 'pimp@gmail.com',
      password: 'azerty'
      )

sara =
      User.create!(
        name: 'Sara',
        city: 'Paris',
        user_type: '0',
        email: 'nopimp@gmail.com',
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
        user_type: '0',
        email: 'pa@gmail.com',
        password: 'azerty'
        )

puts 'Create 10 escorts men & 10 escorts woman'

jean = Escort.new(
  name: "Jean",
  age: "31",
  size: "170",
  origin: "Caucasien",
  available_dates: ["2019-09-23", "2019-08-25"],
  price_per_day: "300€",
  city: "303 rue leon gambetta, Lille",
  hair_color: "blond",
  user: raphael,
  gender: "Homme"
)
jean.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1491528323818-fdd1faba62cc_au3i6w.jpg"
jean.save!

marine = Escort.new(
  name: "Marine",
  age: "21",
  size: "175",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "400€",
  city: "17 avenue de la liberte, 69000 Lyon",
  hair_color: "brun",
  user: alex,
  gender: "Femme"
)
marine.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1456885284447-7dd4bb8720bf_gd2fdn.jpg"
marine.save!

alice = Escort.new(
  name: "alice",
  age: "25",
  size: "166",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "140€",
  city: " 47 rue stephenson, 75010 Paris",
  hair_color: "blond",
  user: alex,
  gender: "Femme"
)
alice.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1503185912284-5271ff81b9a8_tnllo9.jpg"
alice.save!

remy = Escort.new(
  name: "Remy",
  age: "21",
  size: "190",
  origin: "Caucasien",
  available_dates: "2019-08-25",
  price_per_day: "400€",
  city: " 8 avenue des champs elysées, 75001 Paris",
  hair_color: "blond",
  user: raphael,
  gender: "Homme"
)
remy.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1483995564125-85915c11dcfe_frkvnz.jpg"
remy.save!


jules = Escort.new(
  name: "Jules",
  age: "32",
  size: "192",
  origin: "Caucasien",
  available_dates: "2019-08-25",
  price_per_day: "280€",
  city: "43 rue gambetta, 69000 Lyon",
  hair_color: "blond",
  user: raphael,
  gender: "Homme"
)
jules.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1500428596937-31f16f2210fe_v0shuw.jpg"
jules.save!

laure = Escort.new(
  name: "laure",
  age: "22",
  size: "162",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "220€",
  city: " 2 avenue des saules, 59000 Lille",
  hair_color: "blond",
  user: alex,
  gender: "Femme"
)
laure.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1492106087820-71f1a00d2b11_sdccn1.jpg"
laure.save!

marc = Escort.new(
  name: "Marc",
  age: "23",
  size: "172",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "250€",
  city: "39 avenue de la liberté, 69000 Lyon",
  hair_color: "blond",
  user: alex,
  gender: "Homme"
)
marc.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1495366691023-cc4eadcc2d7e_lrv5kg.jpg"
marc.save!

simon = Escort.new(
  name: "Simon",
  age: "27",
  size: "181",
  origin: "Africain",
  available_dates: "2019-08-24",
  price_per_day: "290",
  city: " 1 avenue de la liberté, 33000 Bordeaux",
  hair_color: "brun",
  user: alex,
  gender: "Homme"
)
simon.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566552180/1_aqobea.jpg"
simon.save!

marius = Escort.new(
  name: "Marius",
  age: "27",
  size: "181",
  origin: "Africain",
  available_dates: "2019-08-25",
  price_per_day: "290",
  city: " 36 cours du chapeau rouge, 33000 Bordeaux",
  hair_color: "brun",
  user: raphael,
  gender: "Homme"
)
marius.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1500648767791-00dcc994a43e_skdwyh.jpg"
marius.save!

adele = Escort.new(
  name: "Adèle",
  age: "28",
  size: "170",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "220€",
  city: "231 rue de la benauge, 33000 Bordeaux",
  hair_color: "brun",
  user: raphael,
  gender: "Femme"
)
adele.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1503104834685-7205e8607eb9_kwrddu.jpg"
adele.save!

adam = Escort.new(
  name: "Adam",
  age: "28",
  size: "192",
  origin: "Asiatique",
  available_dates: "2019-08-25",
  price_per_day: "250€",
  city: "23 avenue de la chapelle, 75010 Paris",
  hair_color: "brun",
  user: raphael,
  gender: "Homme"
)
adam.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1496346337794-9e4e13f8309f_s9homb.jpg"
adam.save!

capucine = Escort.new(
  name: "Capucine",
  age: "24",
  size: "162",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "110€",
  city: "18 avenue vauban, 59000 Lille",
  hair_color: "blond",
  user: raphael,
  gender: "Femme"
)
capucine.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1481824429379-07aa5e5b0739_zj9cjv.jpg"
capucine.save!

simon = Escort.new(
    name: "simon",
    age: "24",
    size: "179",
    origin: "Africain",
    available_dates: "2019-08-25",
    price_per_day: "100€",
    city: " 19 rue ghuesquières, 59000 Lille",
    hair_color: "brun",
    user: alex,
    gender: "Homme"
    )
simon.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1480195366979-a8e4942e7f18_ebqioj.jpg"
simon.save!



roxane = Escort.new(
  name: "roxane",
  age: "28",
  size: "159",
  origin: "Africain",
  available_dates: "2019-08-25",
  price_per_day: "280€",
  city: "1 avenue de la liberté, 33000 Bordeaux",
  hair_color: "brun",
  user: raphael,
  gender: "Femme"
)
roxane.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1515886657613-9f3515b0c78f_vsnvrz.jpg"
roxane.save!



blanche = Escort.new(
  name: "blanche",
  age: "20",
  size: "172",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "220€",
  city: "34 avenue de la liberté, 06000 Nice",
  hair_color: "brun",
  user: alex,
  gender: "Femme"
)
blanche.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1507430989479-54824c2ed9d6_oveznp.jpg"
blanche.save!

octave = Escort.new(
  name: "Octave",
  age: "37",
  size: "192",
  origin: "Caucasien",
  available_dates: "2019-08-24",
  price_per_day: "180€",
  city: " 18 rue gambetta, 06000 Nice",
  hair_color: "blond",
  user: raphael,
  gender: "Homme"
)
octave.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1500649297466-74794c70acfc_xjhmqd.jpg"
octave.save!

elise = Escort.new(
  name: "Elise",
  age: "27",
  size: "177",
  origin: "Caucasien",
  available_dates: "2019-08-25",
  price_per_day: "230€",
  city: " 15 place de la république, 75010 Paris",
  hair_color: "blond",
  user: raphael,
  gender: "Femme"
)
elise.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1516726817505-f5ed825624d8_k4bqbm.jpg"
elise.save!

rose = Escort.new(
  name: "rose",
  age: "27",
  size: "169",
  origin: "Caucasien",
  available_dates: "2019-08-25",
  price_per_day: "120€",
  city: " 2 rue gambetta, 33000 Bordeaux",
  hair_color: "rousse",
  user: alex,
  gender: "Femme"
)
rose.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550856/photo-1529626455594-4ff0802cfb7e_lex2cg.jpg"
rose.save!

valentin = Escort.new(
  name: "Valentin",
  age: "27",
  size: "181",
  origin: "Asiatique",
  available_dates: "2019-08-24",
  price_per_day: "199€",
  city: "33 promenade des anglais, 06000 Nice",
  hair_color: "brun",
  user: raphael,
  gender: "Homme"
)
valentin.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566550679/photo-1501196354995-cbb51c65aaea_odeccg.jpg"
valentin.save!

emma = Escort.new(
  name: "emma",
  age: "21",
  size: "161",
  origin: "Asiatique",
  available_dates: "2019-08-24",
  price_per_day: "190€",
  city: " 3 rue bonaparte, 33000 Bordeaux",
  hair_color: "chatain",
  user: alex,
  gender: "Femme"
)
emma.remote_photo_url = "https://res.cloudinary.com/dacmjlcwx/image/upload/v1566552868/2_xkyk0n.jpg"
emma.save!


puts "Success, we created #{Escort.count} escorts and #{User.count} users"
