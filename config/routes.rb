Rails.application.routes.draw do
  resources :done_foods
  resources :foods
  resources :clients
  resources :fooeds
  resources :courses
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
