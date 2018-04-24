# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Campground.destroy_all
# User.destroy_all
# #
# 20.times do |x|
#   User.create!(email: "correo#{x}@correo.com", created_at: "2018-04-10 23:46:12",name: "otro#{x}", last_name: "apellido#{x}", phone: 1234322, password:123456)
# end

100.times do |x|
  Campground.create!(name: Faker::StarWars.specie, direction: Faker::Address.street_address,user_id: rand(21..40), region: Faker::Address.state,
                              photo: "https://media-cdn.tripadvisor.com/media/photo-s/0e/fc/a6/62/camping-la-playa-ibiza.jpg",
                              photo1: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",
                              photo2: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",
                              photo3: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",
                              photo4: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",)
end
