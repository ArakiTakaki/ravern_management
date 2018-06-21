Rails.application.routes.draw do
  resources :done_foods
  resources :foods
  resources :clients
  resources :fooeds
  resources :courses
  resources :categories
  get '/', to:'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
