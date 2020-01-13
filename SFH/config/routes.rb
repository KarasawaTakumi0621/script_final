Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  post 'tweets' => 'tweets#create'

  get 'welcome/index'
  get 'users/index'
  get 'users/show'
  devise_for :users
  get 'users/show/:username' => 'users#show'
  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end