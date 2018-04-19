Rails.application.routes.draw do
  devise_for :users do
    resources :posts, only: [:index] #ver post del usuario especifico (active admin)
  end
  resources :campgrounds, only: [:show, :create, :index, :new] do
    resources :posts, only: [:index] #ver post del camping especifico (active admin)
  end

  resources :users, only: [:index] do
    resources :campgrounds, only: [:edit,:update] do
      patch :campground_status
      resources :post, only: [:create]
    end
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
