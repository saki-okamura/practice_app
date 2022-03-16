Rails.application.routes.draw do
  resources :kojirases
  root to: 'kojirases#index'
end
