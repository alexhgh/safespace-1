require 'faker'

# Create Users
10.times do
  user = User.new(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

puts "Seed finished"
puts "#{User.count} users counted"
