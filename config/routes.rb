Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/membership'

  get 'static_pages/classes'

  get 'static_pages/contact'

  root 'static_pages#home'
end
