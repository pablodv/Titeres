Titeres::Application.routes.draw do

  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  root :to => 'home#index'
end
