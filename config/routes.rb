 
  
Rails.application.routes.draw do
  resources :reminders
  root :to => redirect('/reminders')
 
  resource :messages do
    collection do
      post 'reply'
    end
  end
end