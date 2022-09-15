Rails.application.routes.draw do
  resources :user1s
  devise_scope :user do
    root to: 'users/registrations#new'
    get '/user/:id', to: 'users/registrations#show', as: :user_show
  end
  devise_for :users
end