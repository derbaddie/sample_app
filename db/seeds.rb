User.create!( name:   "Example User", 
              email:  "example@railstutorial.org", 
              password:               "foobar", 
              password_confirmation:  "foobar",
              admin: true,
              activated:    true,
              activated_at: Time.zone.now)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  User.create!( name:   name, 
                email:  email, 
                password:               "foobar", 
                password_confirmation:  "foobar",
                activated:    true,
                activated_at: Time.zone.now)
end

# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end