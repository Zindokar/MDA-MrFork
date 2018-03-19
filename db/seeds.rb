# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'time'

r = Restaurant.create [{name: "Bona Pizza", location: "27.9933882,-15.4213781"},
                          {name: "Casa Modesto", location: "28.0386346,-15.4192083"},
                          {name: "Ca' Tita", location: "28.0408909,-15.4206034"},
                          {name: "Casa del Pan", location: "28.1104663,-15.4254617"},
                          {name: "Viña Cantera", location: "27.9964299,-15.4870048"},
                          {name: "Cafetería Siroco", location: "28.1191167,-15.5240531"},
                          {name: "Abrasa Grill", location: "27.7709557,-15.5888407"}]

d = Dish.create [{name: "Ensaladilla Rusa 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 1},
                 {name: "Calamares fritos 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 1},
                 {name: "Ensaladilla Rusa 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 2},
                 {name: "Calamares fritos 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 2},
                 {name: "Ensaladilla Rusa 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 3},
                 {name: "Calamares fritos 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 3},
                 {name: "Ensaladilla Rusa 4", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 4},
                 {name: "Calamares fritos 4", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 4},
                 {name: "Ensaladilla Rusa 5", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 5},
                 {name: "Calamares fritos 5", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 5},
                 {name: "Ensaladilla Rusa 6", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 6},
                 {name: "Calamares fritos 6", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 6},
                 {name: "Ensaladilla Rusa 7", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 7},
                 {name: "Calamares fritos 7", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, sit.", restaurant_id: 7}]

g = Gallery.create [{name: "Galería restaurante 1", restaurant_id: 1},
                    {name: "Galería restaurante 2", restaurant_id: 2},
                    {name: "Galería restaurante 3", restaurant_id: 3},
                    {name: "Galería restaurante 4", restaurant_id: 4},
                    {name: "Galería restaurante 5", restaurant_id: 5},
                    {name: "Galería restaurante 6", restaurant_id: 6},
                    {name: "Galería restaurante 7", restaurant_id: 7}]

s = Schedule.create [{weekDay: "lunes", openingTime: Time.zone.parse('2018-01-01 08:00'), closingTime: Time.zone.parse('2018-01-01 20:00'), restaurant_id: 1},
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

reserves = Reserve.create [{personCount: 5, restaurant_id: 1},
                           {personCount: 2, restaurant_id: 2},
                           {personCount: 15, restaurant_id: 5}]

addresses = Address.create [{street: "Batalla del Ebro, 39", city: "Las Palmas", postalCode: "35013", restaurant_id: 1},
                            {street: "GC-800, 11", city: "Las Palmas", postalCode: "35229", restaurant_id: 2},
                            {street: "Carretera de Marzagán, 50", city: "Las Palmas", postalCode: "35226", restaurant_id: 3},
                            {street: "Pintor Pepe Dámaso, 12", city: "Tamaraceite", postalCode: "35018", restaurant_id: 4},
                            {street: "Camino finca La Palma s/n", city: "Valsequillo", postalCode: "35217", restaurant_id: 5},
                            {street: "León y Castillo, 7", city: "Arucas", postalCode: "35400", restaurant_id: 6},
                            {street: "Secundino Delgado, 5", city: "San Bartolomé de Tirajana", postalCode: "35290", restaurant_id: 7}]
