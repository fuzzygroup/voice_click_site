Rails.application.routes.draw do
  resources :mailing_lists
  root to: 'visitors#index'
end
