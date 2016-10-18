Rails.application.routes.draw do
  get 'songs/guess'

  post 'songs/search'

  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
