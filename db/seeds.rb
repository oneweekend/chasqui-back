# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
chasqui = Chasqui.create

Location.create(user: chasqui,
                address: 'Av Carlos Valderrama 787, Trujillo 13001, Peru',
                latitude: -8.0991656,
                longitude: -79.0336536)
