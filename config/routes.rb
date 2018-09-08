Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses
  resources :cohorts
  resources :instructors
  resources :students

  authenticated do
    root :to => 'courses#index'
  end
  
  root to: 'pages#home'
end
