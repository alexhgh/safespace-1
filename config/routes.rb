Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, :controllers => { registrations: 'registrations' }

  as :user do
    get 'users', :to => 'devise/registrations#edit', :as => :user_root
  end

  get 'about', to: 'about#index'

  get 'resources', to: 'resources#index'

  get 'contact', to: 'contact#index'

  root to: 'home#index'

end
