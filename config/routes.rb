Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :notes
  end

  root to: 'client#index'
  get '*path', to: 'client#index'
end
