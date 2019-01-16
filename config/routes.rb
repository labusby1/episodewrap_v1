Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :tvshows
  resources :tvshows do
    resource :seasons
  end
end
