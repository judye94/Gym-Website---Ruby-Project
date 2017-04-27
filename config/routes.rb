Rails.application.routes.draw do

  resources :dy_contents
  resources :dyn_images
  resources :dynamic_pages
  get 'membership', to: 'static_pages#membership'

  get 'classes', to: 'static_pages#classes'

  get 'contact', to: 'static_pages#contact'
  
  get 'admin', to: 'static_pages#admin'
  
  get 'pages', to: 'dynamic_pages#index'
  
  get 'images', to: 'dyn_images#index'
  
  get 'contents', to: 'dy_contents#index'
  
   root 'static_pages#home'
  
 

  
end
