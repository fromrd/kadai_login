Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  resources :blogs do
    collection do
      post :confirm
      get :blogdates
      post :blogdates
    end
  end
  
  resources :users, only: [:new, :create, :show]

end