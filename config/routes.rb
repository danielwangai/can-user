Rails.application.routes.draw do
  devise_for :users
  resources :items

  scope "/admin" do
  	resources :users
  end
  
  resources :roles
  root to: "items#index"
end
