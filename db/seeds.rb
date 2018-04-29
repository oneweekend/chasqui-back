# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
luis =      Chasqui.create
karina =    Chasqui.create(name: 'Karina Buhezo',
                           email: 'karina@chasqui.com',
                           phone: '987654321')
katherine = Chasqui.create(name: 'Katherine Ortega',
                           email: 'kath@chasqui.com',
                           phone: '998877665')
cinthia =   Chasqui.create(name: 'Cinthia Lazaro',
                           email: 'cinthia@chasqui.com',
                           phone: '912331238')
fiorella =  Chasqui.create(name: 'Joissy Fiorella',
                           email: 'fiore@chasqui.com',
                           phone: '986754231')

locations = [
  Location.create(user: luis, latitude: -8.0992328, longitude: -79.0336523).reverse_geocode,
  Location.create(user: karina, latitude: -8.1014702, longitude: -79.0347916).reverse_geocode,
  Location.create(user: katherine, latitude: -8.10716489, longitude: -79.0222086).reverse_geocode,
  Location.create(user: cinthia, latitude: -8.0779395, longitude: -79.00493377).reverse_geocode,
  Location.create(user: fiorella, latitude: -8.1052745, longitude: -79.0235719).reverse_geocode
]

locations.each(&:save)
