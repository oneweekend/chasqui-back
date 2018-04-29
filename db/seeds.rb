# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
luis =      FactoryBot.create(:user, name: nil, email: nil )
karina =    FactoryBot.create(:user, name: 'Karina Buhezo',
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
