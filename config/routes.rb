Titeres::Application.routes.draw do

  devise_for :admins

  namespace :admin do
    resources :galleries do
      member do
        put 'publish'
        put 'unpublish'
      end

      resources :gallery_images
    end

    root :to => 'galleries#index'
  end

  resources :galleries

  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  root :to => 'home#index'
end
