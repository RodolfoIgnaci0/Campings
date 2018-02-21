Rails.application.routes.draw do
  devise_for :users
  get 'campings/index'
  get 'campings/landing'
  root to: 'campings#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
