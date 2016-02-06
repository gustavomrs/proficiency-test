Rails.application.routes.draw do
  resources :classrooms, path: 'matriculas'

  resources :courses, path: 'cursos'

  resources :students, path: 'estudantes'

  root 'home#index'
end
