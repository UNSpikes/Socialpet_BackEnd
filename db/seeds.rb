# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
	User.create(
		name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		age: Faker::Number.between(10,99),
		phone_number: Faker::PhoneNumber.cell_phone,
		additional_info: Faker::Hacker.say_something_smart,
		country: Faker::Hacker.say_something_smart,
		city: Faker::Hacker.say_something_smart,
		password: Faker::Hacker.say_something_smart,
		email: Faker::Internet.email
	)
end
p "Created #{User.count} users"

10.times do 
	Dog.create(
		name: Faker::Name.first_name,
		age: Faker::Number.between(10,20),
		sex: "M",
		description: Faker::Hacker.say_something_smart,
		interests: Faker::Number.between(1,4)
	)
end
p "Created #{Dog.count} dogs"

10.times do 
	Blog.create(
		title: Faker::Hacker.abbreviation,
		date: Faker::Time.backward(10),
		content: Faker::Hacker.say_something_smart,
		num_likes: Faker::Number.between(0,300)
	)
end
p "Created #{Blog.count} blogs"

10.times do 
	Breed.create(
		breed_type: Faker::Dog.breed
	)
end
p "Created #{Breed.count} breeds"

10.times do 
	Comment.create(
		content: Faker::Hacker.say_something_smart,
		date: Faker::Time.backward(10)
	)
end
p "Created #{Comment.count} comments"
