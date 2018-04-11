Rails.application.routes.draw do
  devise_for :users do
    resources :posts, only: [:index] #ver post del usuario especifico
  end
  resources :campgrounds do
    resources :posts, only: [:index] #ver post del camping especifico
  end

  resources :users, only: [:index] do
    member do
      get :my_campgrounds
    end
  end


  get 'campgrounds/landing'
  root to: 'campgrounds#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# resources :campgrounds, only: [:show, :create, :index] do
#   resources :users, only: [:index] do
#     resources :posts, only: [:create]
#   end
# end
