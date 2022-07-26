Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
    
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    
  end
  devise_for :users
  devise_for :admins
  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end
  devise_scope :admin do
    get 'admins/sign_out', to: 'devise/sessions#destroy'
  end

  get 'inicio', to: 'site/welcome#index'
  root to: 'site/welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
