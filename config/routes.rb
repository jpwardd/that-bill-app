Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

   namespace :api do
    namespace :v1 do
      resources :registrations, only: [:create]
      resources :bills, only: [:create, :update, :destroy]
    end
  end
end
