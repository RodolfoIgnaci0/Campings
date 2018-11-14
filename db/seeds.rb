# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Post.destroy_all
#Campground.destroy_all
#User.destroy_all
#
#20.times do |x|
#  User.create!(email: "correo#{x}@correo.com", created_at: "2018-04-10 23:46:12",name: "otro#{x}", last_name: "apellido#{x}", phone: 1234322, password:123456)
#end

100.times do |x|
  Campground.create!(name: Faker::StarWars.specie, direction: Faker::Address.street_address,user_id: rand(23..32), region: Faker::Address.state,
                              photo: "https://www.discovermoab.com/wp-content/uploads/2017/10/camping-blm.jpg",
                              photo1: "https://www.discovermoab.com/wp-content/uploads/2017/10/camping-blm.jpg",
                              photo2: "https://www.discovermoab.com/wp-content/uploads/2017/10/camping-blm.jpg",
                              photo3: "https://www.discovermoab.com/wp-content/uploads/2017/10/camping-blm.jpg",
                              photo4: "https://www.discovermoab.com/wp-content/uploads/2017/10/camping-blm.jpg",)
end
