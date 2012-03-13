Titeres::Application.routes.draw do

  resources :galleries

  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  root :to => 'home#index'
end
