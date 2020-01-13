Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  post 'tweets' => 'tweets#create'

  get 'welcome/index'
  get 'users/index'
  get 'users/show'
  # devise_for :users
  get 'users/show/:username' => 'users#show'
  root 'tweets#index'
  # root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users, only: [:show]

  # # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
          registrations: 'users/registrations'
  }
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'login', to: 'devise/sessions#new'
  end

end