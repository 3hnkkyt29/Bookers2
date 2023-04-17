Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit]
  resources :users, only: [:show, :edit, :update]
  get '/homes/about' => 'homes#about', as: 'about'
  root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
