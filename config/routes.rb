Rails.application.routes.draw do

  get 'membership', to: 'static_pages#membership'

  get 'classes', to: 'static_pages#classes'

  get 'contact', to: 'static_pages#contact'
  
  get 'admin', to: 'static_pages#admin'
  
   root 'static_pages#home'
  
 

  
end
