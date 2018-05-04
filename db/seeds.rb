require 'faker'

# Create Users
admin = User.new(
  username: 'Admin',
  email: 'admin@berkeley.edu',
  password: 'password',
  role: 'admin',
  offline: false,
  block_count: 0,
  banned: false
)
admin.skip_confirmation!
admin.save!

counselor = User.new(
  username: 'Counselor',
  email: 'counselor@berkeley.edu',
  password: 'password',
  role: 'counselor',
  offline: false,
  block_count: 0,
  banned: false
)
counselor.skip_confirmation!
counselor.save!

student = User.new(
  username: 'Student',
  email: 'student@berkeley.edu',
  password: 'password',
  role: 'student',
  offline: true,
  block_count: 1,
  banned: false
)
student.skip_confirmation!
student.save!

5.times do
  user = User.new(
    username: Faker::HarryPotter.character,
    email: Faker::Name.first_name.downcase + '@berkeley.edu',
    password: Faker::Lorem.characters(10),
    role: 'student',
    offline: true,
    block_count: 1,
    banned: false
  )
  user.skip_confirmation!
  user.save!
end

5.times do
  user = User.new(
    username: Faker::HarryPotter.character,
    email: Faker::Name.first_name.downcase + '@berkeley.edu',
    password: Faker::Lorem.characters(10),
    role: 'student',
    offline: false,
    block_count: 2,
    banned: false
  )
  user.skip_confirmation!
  user.save!
end


puts "Seed finished"
puts "#{User.count} users counted"


# Create Admin User for Active Admin
AdminUser.create!(name: 'Admin', email: 'admin@berkeley.edu', password: 'password', password_confirmation: 'password') if Rails.env.development?
