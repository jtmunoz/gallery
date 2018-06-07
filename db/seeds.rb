# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


usr = User.create!({email: "jordan@jordan.com", password: "password", password_confirmation: "password"})

gallery1 = Gallery.create!({name: "mopa", user_id: 1})
gallery2 = Gallery.create!({name: "moca", user_id: 1})
gallery3 = Gallery.create!({name: "lacma", user_id: 1})

3.times do 
	photo = Photo.new({title: Faker::Lorem.word, url: Faker::LoremPixel.image})
	photo.gallery_id = gallery1.id 
	photo.save!
end

3.times do 
	photo = Photo.new({title: Faker::Lorem.word, url: 'https://placekitten.com/g/300/300'})
	photo.gallery_id = gallery2.id 
	photo.save!
end

3.times do 
	photo = Photo.new({title: Faker::Lorem.word, url: Faker::LoremPixel.image})
	photo.gallery_id = gallery3.id 
	photo.save!
end

