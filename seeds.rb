# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
	User.create([{
		name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		age: Faker::Number.between(10,99),
		phone_number: Faker::PhoneNumber.cell_phone,
		additional_info: Faker::Hacker.say_something_smart,
		country: Faker::Hacker.say_something_smart,
		city: Faker::Hacker.say_something_smart,
		password: Faker::Hacker.say_something_smart,
		email: Faker::Internet.email
	}])
end

10.times do 
	Dog.create([{
		name: Faker::Name.first_name,
		age: Faker::Number.between(10,20),
		sex: "M"
		description: Faker::Hacker.say_something_smart,
		interests: Faker::Number.between(1,4),
	}])
end

10.times do 
	Blog.create([{
		name: Faker::Hacker.abbreviation,
		date: Faker::Time.backward(10),
		additional_info: Faker::Hacker.say_something_smart,
		num_likes: Faker::Number.between(0,300)
	}])
end

10.times do 
	Breed.create([{
		bread_type: Faker::Dog.breed
	}])
end

10.times do 
	Comment.create([{
		content: Faker::Hacker.say_something_smart,
		date: Faker::Time.backward(10)
	}])
end

10.times do 
	Like.create([{
		id_dog2: Faker::Number.between(1,10),
		like_status: Faker::Number.between(0,1)
	}])
end

10.times do 
	Location.create([{
		punto: Faker::Address.street_address,
		city: Faker::Hacker.say_something_smart
	}])
end

10.times do 
	Match.create([{
		date: Faker::Time.backward(10),
		match_status: Faker::Number.between(0,1)
	}])
end

10.times do 
	Preference.create([{
		privacy: Faker::Number.between(0,1),
		language: Faker::Hacker.say_something_smart,
		max_distance: Faker::Number.between(100,10000),
	}])
end

10.times do 
	Publication.create([{
		num_comments: Faker::Number.between(0,300),
		num_likes: Faker::Number.between(0,300)
	}])
end

10.times do 
	Tag.create([{
		tag_name: Faker::Hacker.say_something_smart
	}])
end
