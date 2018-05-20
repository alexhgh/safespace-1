FactoryBot.define do

  factory :user do
    username "John Doe"
    email "john@berkeley.edu"
    password "password"
    password_confirmation "password"
    role "student"
  end

end
