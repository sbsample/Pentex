require 'Faker'

User.create(first_name:"Bob", last_name:"Stefakanapoulis", user_name: "stefakana", password: "Princess1979", email:"Bob@Hackkit.com", admin: true)
User.create(first_name:"Derek", last_name:"Reeve", user_name: "Dreeve", password: "Metallica", email:"Derek@DBC.com", admin: true)

5.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              user_name: Faker::Name.first_name,
              password_hash: Faker::Lorem.characters(12),
              email:"blah@blah.com",
              admin: false  )
end

5.times do
	Post.create(title: Faker::Lorem.sentence(1),
				message: Faker::Lorem.sentence(3)
	)

end