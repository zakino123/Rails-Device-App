Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :omniauth_callbacks => "omniauth_callbacks"
  }
  get 'home/index'
  get 'home/show'
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  get 'authorize_error', to: 'users#authorize_error'

  root to: "home#index"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
