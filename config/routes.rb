Rails.application.routes.draw do
  devise_for :users do
    resources :post, only: [:index] #ver post del usuario especifico
  end
  resources :campgrounds do
    resources :post, only: [:index] #ver post del camping especifico
  end

  get 'campgrounds/landing'
  root to: 'campgrounds#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
