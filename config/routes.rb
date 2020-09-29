Rails.application.routes.draw do
  resources :users

  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#create_user_session'

  get '/sign_out', to: 'users#sign_out'
end
