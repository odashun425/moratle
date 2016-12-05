Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :campuses, only: [:index]
end