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
  Location.new(user: luis, address: 'Av Carlos Valderrama 787, Trujillo, Peru'),
  Location.new(user: karina, address: 'Av Teodoro Valcarcel 126, Trujillo, Peru'),
  Location.new(user: katherine, address: 'Alomias Robles 220, Trujillo, Peru'),
  Location.new(user: cinthia, address: 'Marco del Pont 338, Trujillo, Peru'),
  Location.new(user: fiorella, address: 'Av Ejercito 168, Trujillo, Peru')
]

locations.each do |location|
  location.geocode
  sleep 1
  location.save
end
