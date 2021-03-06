Rails.application.routes.draw do
  resources :settings
  get 'settings/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root :to => "statics#index"
  get '/about' => 'statics#about', :as => :about
  get 'statics/index'

  get 'statics/about'

  get 'peliculas/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
