Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # root 'welcome#index'
  resources :groups do
    resources :posts

    member do
      post :quit
      post :join
    end
  end

  namespace :account do
    resources :groups
  end

  root 'groups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
