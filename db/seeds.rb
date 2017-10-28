# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


usr = User.create!({email: "jordan@jordan.com", password: "password", password_confirmation: "password"})

gallery = Gallery.new({name: "mopa"})

3.times do 
	photo = Photo.new({title: Faker::Lorem.word,url: Faker::LoremPixel.image})
	photo.gallery_id = gallery.id 
	photo.save
	
end

