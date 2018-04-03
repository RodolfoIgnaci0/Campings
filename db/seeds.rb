# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campground.destroy_all

20.times do |x|
  Campground.create(name: "camping#{x}", direction: "Avenida #{x}, ##{x*138}", region: "#{x}",
                              photo: "https://media-cdn.tripadvisor.com/media/photo-s/0e/fc/a6/62/camping-la-playa-ibiza.jpg",
                              photo1: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",
                              photo2: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",
                              photo3: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",
                              photo4: "https://comps.canstockphoto.es/pequeño-naranja-acampar-tienda-almacen-de-fotografias_csp39674100.jpg",)
end
