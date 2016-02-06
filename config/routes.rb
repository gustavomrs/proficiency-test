Rails.application.routes.draw do
  resources :classrooms

  resources :courses

  resources :students

  root 'home#index'
end
