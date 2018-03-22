Rails.application.routes.draw do
  devise_for :users
  resources :campgrounds, only: [:index, :show]
  get 'campgrounds/landing'
  root to: 'campgrounds#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
