# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
	password = Faker::Alphanumeric.alphanumeric(Faker::Number.between(6, 16))
	User.create(
		name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		age: Faker::Number.between(10, 100),
		phone_number: Faker::PhoneNumber.cell_phone,
		additional_info: Faker::BackToTheFuture.quote,
		country: Faker::Address.country,
		city: Faker::Nation.capital_city,
		password: password,
		password_confirmation: password,
		email: Faker::Internet.email
	)
end

User.create(
	name: 'John',
	last_name: 'Doe',
	age: 25,
	phone_number: 1234567,
	additional_info: 'This is a user for tests',
	country: 'Colombia',
	city: 'Bogota',
	email: 'user@test.com',
	password: 'password',
	password_confirmation: 'password'
)

10.times do 
	Breed.create(
		breed_type: Faker::Dog.unique.breed
	)
end

10.times do
	Location.create(
		latitude: Float('4.62'+4.times.map{rand(10)}.join),
		longitude: Float('-74.06'+4.times.map{rand(10)}.join),
		city: Faker::Nation.capital_city
	)
end

10.times do 
	Dog.create(
		name: Faker::Dog.name,
		age: Faker::Number.between(0,20),
		sex: "M",
		description: Faker::Friends.unique.quote,
		interests: Faker::Number.between(0,9),
		breed_id: Faker::Number.between(1,10),
		user_id: Faker::Number.between(1,10),
		location_id: Faker::Number.between(1,11)
	)
end

until Blog.count == 10 do
	Blog.create(
		title: Faker::VForVendetta.unique.quote,
		content: Faker::VForVendetta.speech,
		image: Faker::Alphanumeric.alphanumeric(20),
		date: Faker::Time.backward(10),
		num_likes: Faker::Number.between(0,300),
		user_id: Faker::Number.between(1,10),
		location_id: Faker::Number.between(1,11)
	)
end

10.times do 
	Comment.create(
		content: Faker::Hacker.say_something_smart,
		date: Faker::Time.backward(10)
	)
end

10.times do
	Tag.create(
		tag_name: Faker::Commerce.unique.department(1,false)
	)
end 

10.times do
	BlogTagMediator.create(
		blog_id: Faker::Number.between(1,10),
		tag_id: Faker::Number.between(1,10)
	)
end

Faker::UniqueGenerator.clear
p "Created #{User.count} users"
p "Created #{Dog.count} dogs"
p "Created #{Breed.count} breeds"
p "Created #{Tag.count} tags"
p "Created #{Location.count} locations"
p "Created #{Blog.count} blogs"
p "Created #{Comment.count} comments"