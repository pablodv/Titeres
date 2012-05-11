Titeres::Application.routes.draw do

  devise_for :admins

  namespace :admin do
    #root :to => ''
  end

  resources :galleries

  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  root :to => 'home#index'
end
