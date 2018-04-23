# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'time'

u = User.create username:"test", password:"testtest", email:"test@test.com", tlf:928570666, name:"test", lastname:"Quevedo"
u.image = Rails.root.join("seedImages/avatar.jpg").open
u.save!

restaurants = Restaurant.create [{name: "Bona Pizza"},
                       {name: "Casa Modesto"},
                       {name: "Ca' Tita"},
                       {name: "Casa del Pan"},
                       {name: "Viña Cantera"},
                       {name: "Cafetería Siroco"},
                       {name: "Abrasa Grill"}]

photos = Photo.create [{restaurant_id:1},
                       {restaurant_id:1},
                       {restaurant_id:2},
                       {restaurant_id:2},
                       {restaurant_id:3},
                       {restaurant_id:3},
                       {restaurant_id:4},
                       {restaurant_id:4},
                       {restaurant_id:5},
                       {restaurant_id:5},
                       {restaurant_id:6},
                       {restaurant_id:6},
                       {restaurant_id:7},
                       {restaurant_id:7}]

for i in 0..13
  photos[i].image = Rails.root.join("seedImages/restaurante#{i%4+1}.jpg").open
  photos[i].save!
end


dishes = Dish.create [{name: "Ensaladilla Rusa 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 1},
                 {name: "Calamares fritos 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 1},
                 {name: "Ensaladilla Rusa 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 2},
                 {name: "Calamares fritos 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 2},
                 {name: "Ensaladilla Rusa 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 3},
                 {name: "Calamares fritos 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 3},
                 {name: "Ensaladilla Rusa 4", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 4},
                 {name: "Calamares fritos 4", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 4},
                 {name: "Ensaladilla Rusa 5", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 5},
                 {name: "Calamares fritos 5", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 5},
                 {name: "Ensaladilla Rusa 6", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 6},
                 {name: "Calamares fritos 6", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 6},
                 {name: "Ensaladilla Rusa 7", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:5.50, restaurant_id: 7},
                 {name: "Calamares fritos 7", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", price:8, restaurant_id: 7}]

for i in 0..13
  if i % 2 == 0
    dishes[i].image = Rails.root.join("seedImages/ensaladilla.jpeg").open
  else
    dishes[i].image = Rails.root.join("seedImages/calamares.jpeg").open
  end
  dishes[i].save!
end


schedules = Schedule.create [{weekDay: "lunes", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 1},
                     {weekDay: "martes", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 1},
                     {weekDay: "miércoles", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 1},
                     {weekDay: "jueves", openingTime: Time.zone.parse('2018-01-01 09:00'), closingTime: Time.zone.parse('2018-01-01 22:00'), restaurant_id: 2},
                     {weekDay: "viernes", openingTime: Time.zone.parse('2018-01-01 09:00'), closingTime: Time.zone.parse('2018-01-01 22:00'), restaurant_id: 2},
                     {weekDay: "sábado", openingTime: Time.zone.parse('2018-01-01 09:00'), closingTime: Time.zone.parse('2018-01-01 22:00'), restaurant_id: 2},
                     {weekDay: "domingo", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 23:00'), restaurant_id: 3},
                     {weekDay: "lunes", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 23:00'), restaurant_id: 3},
                     {weekDay: "martes", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 23:00'), restaurant_id: 3},
                     {weekDay: "miércoles", openingTime: Time.zone.parse('2018-01-01 12:00'), closingTime: Time.zone.parse('2018-01-01 19:00'), restaurant_id: 4},
                     {weekDay: "jueves", openingTime: Time.zone.parse('2018-01-01 12:00'), closingTime: Time.zone.parse('2018-01-01 19:00'), restaurant_id: 4},
                     {weekDay: "viernes", openingTime: Time.zone.parse('2018-01-01 12:00'), closingTime: Time.zone.parse('2018-01-01 19:00'), restaurant_id: 4},
                     {weekDay: "sábado", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 18:00'), restaurant_id: 5},
                     {weekDay: "domingo", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 18:00'), restaurant_id: 5},
                     {weekDay: "lunes", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 18:00'), restaurant_id: 5},
                     {weekDay: "martes", openingTime: Time.zone.parse('2018-01-01 14:30'), closingTime: Time.zone.parse('2018-01-01 18:00'), restaurant_id: 6},
                     {weekDay: "miércoles", openingTime: Time.zone.parse('2018-01-01 14:30'), closingTime: Time.zone.parse('2018-01-01 18:00'), restaurant_id: 6},
                     {weekDay: "jueves", openingTime: Time.zone.parse('2018-01-01 14:30'), closingTime: Time.zone.parse('2018-01-01 18:00'), restaurant_id: 6},
                     {weekDay: "viernes", openingTime: Time.zone.parse('2018-01-01 10:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 7},
                     {weekDay: "sábado", openingTime: Time.zone.parse('2018-01-01 10:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 7},
                     {weekDay: "domingo", openingTime: Time.zone.parse('2018-01-01 10:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 7}]

reservations = Reservation.create [{personCount: 5, date: Time.now, description:"Alergia al agua" ,restaurant_id: 1, user_id:1},
                                   {personCount: 5, date: Time.now, description:"Es un cumpleaños, quiero tarta" ,restaurant_id: 2, user_id:1},
                                   {personCount: 2, date: Time.now, description:"Preferible mesa en ventana mirando a la torre Eifel" ,restaurant_id: 3, user_id:1},
                                   {personCount: 15, date: Time.now, description:"Fumadores" ,restaurant_id: 4, user_id:1}]

addresses = Address.create [{street: "Batalla del Ebro, 39", city: "Las Palmas", postalCode: "35013", tlf:922000001,
                                              email:"rest1@test.com", latitude:27.9933882, longitude:-15.4213781, restaurant_id: 1},

                            {street: "GC-800, 11", city: "Las Palmas", postalCode: "35229", tlf:922000002,
                                      email:"rest2@test.com", latitude:28.0386346, longitude:-15.4192083, restaurant_id: 2},

                            {street: "Carretera de Marzagán, 50", city: "Las Palmas", postalCode: "35226", tlf:922000003,
                                      email:"rest3@test.com", latitude:28.0408909, longitude:-15.4206034, restaurant_id: 3},

                            {street: "Pintor Pepe Dámaso, 12", city: "Tamaraceite", postalCode: "35018", tlf:922000004,
                                      email:"rest4@test.com", latitude:28.1104663, longitude:-15.4254617, restaurant_id: 4},

                            {street: "Camino finca La Palma s/n", city: "Valsequillo", postalCode: "35217", tlf:922000005,
                                      email:"rest5@test.com", latitude:27.9964299, longitude:-15.4870048, restaurant_id: 5},

                            {street: "León y Castillo, 7", city: "Arucas", postalCode: "35400", tlf:922000006,
                                      email:"rest6@test.com", latitude:28.1191167, longitude:-15.5240531, restaurant_id: 6},

                            {street: "Secundino Delgado, 5", city: "San Bartolomé de Tirajana", postalCode: "35290", tlf:922000007,
                                      email:"rest7@test.com", latitude:27.7709557, longitude:-15.5888407, restaurant_id: 7}]

types = Type.create [{name:"Chino"},
                     {name:"Vegetariano"},
                     {name:"Mexicano"},
                     {name:"Grill"},
                     {name:"Gastrobar"}]

for i in 0..13
  restaurants[i%7].types << types[i%5]
end