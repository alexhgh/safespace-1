Rails.application.routes.draw do

  get 'about', to: 'about#index'
  get 'resources', to: 'resources#index'
  get 'contact', to: 'contact#index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  as :user do
    get 'users', :to => 'devise/registrations#edit', :as => :user_root
  end

  root to: 'home#index'

end
