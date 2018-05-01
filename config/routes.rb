Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  as :user do
    get 'users', :to => 'devise/registrations#edit', :as => :user_root
  end

  root to: 'home#index'

end
