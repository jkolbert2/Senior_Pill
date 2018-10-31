 
  
Rails.application.routes.draw do
  
 
  resources :users do
     resources :reminders
  end
  
  get 'sessions/new'
  get  '/signup',  to: 'users#new'
  get "/pages/:page" => "pages#show"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/send_reminder/:id', to: 'reminders#send_reminder', as: :send_reminder
  
  root :to => redirect('pages/home')
  
  
end


