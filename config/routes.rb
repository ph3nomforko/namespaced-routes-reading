Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  namespace :amdin do
    resources :stats, only: [:index]

  root 'posts#index'
end
