Rails.application.routes.draw do
  get 'admins/index'

  devise_for :users do
    resources :posts, only: [:index] #ver post del usuario especifico (active admin)
  end
  resources :campgrounds, only: [:show] do
    resources :posts, only: [:create,:new] #ver post del camping especifico (active admin)
    resources :reservations, only: [:create, :new]
  end

  resources :users, only: [:index] do
    resources :campgrounds, only: [:edit,:update, :create, :new] do
      patch :campground_status
    end
  end

  concern :paginatable do
    get '(campgrounds/:page)', action: :index, on: :collection
  end

  resources :campgrounds, concerns: :paginatable


  get 'campgrounds/landing'
  root to: 'campgrounds#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# resources :campgrounds, only: [:show, :create, :index] do
#   resources :users, only: [:index] do
#     resources :posts, only: [:create]
#   end
# end
