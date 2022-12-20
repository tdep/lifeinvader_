# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_ids = []
20.times do
  random_name = Faker::Name.name
  user = User.create(
    name: random_name,
    email: Faker::Internet.email,
    password: '11111111',
    age: (16..81).to_a.shuffle[0],
    username: random_name.downcase.gsub(" ", "_")
  )
  user_ids << user.id
end

50.times do
  Post.create(
    content: Faker::Quote.famous_last_words,
    user_id: user_ids.sample
  )
end