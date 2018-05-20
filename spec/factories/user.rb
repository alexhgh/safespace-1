FactoryBot.define do
  factory :user do
    username "John Doe"
    email "john@berkeley.edu"
    password "password"
    password_confirmation "password"
  end

  factory :random_user, class: User do
    username { Faker::Name }
    email { Faker::Name.first_name.downcase + '@berkeley.edu' }
    password "password"
    password_confirmation "password"
  end

  factory :student, class: User do
    username "Student"
    email "student@berkeley.edu"
    password "password"
    password_confirmation "password"
    role "student"
  end

  factory :admin, class: User do
    username "Admin"
    email "admin@berkeley.edu"
    password "password"
    password_confirmation "password"
    role "admin"
  end

  factory :counselor, class: User do
    username "Counselor"
    email "counselor@berkeley.edu"
    password "password"
    password_confirmation "password"
    role "counselor"
  end
end
