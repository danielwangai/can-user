Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  resources :items

  scope "/admin" do
  	resources :users
  end
  
  resources :roles
  root to: "welcome#index"
end
