Rails.application.routes.draw do
  get 'static_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/search', to:'static_pages#search'
  post '/search', to:'static_pages#search'
end
