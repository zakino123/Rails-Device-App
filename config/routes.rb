Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/show'

  root to: "home#index"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
