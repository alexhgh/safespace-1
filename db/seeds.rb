require 'faker'

# Create Users
admin = User.new(
  username: 'Admin',
  email: 'admin@berkeley.edu',
  password: 'password'
)
admin.skip_confirmation!
admin.save!

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
