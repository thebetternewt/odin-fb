Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' },
                     path_names: { sign_in: "login", sign_out: "logout" }

  root 'static_pages#home'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
