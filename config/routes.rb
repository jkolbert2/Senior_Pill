 
  
Rails.application.routes.draw do
  resources :reminders
  root :to => redirect('/reminders')
end

Rails.application.routes.draw do
  resource :messages do
    collection do
      post 'reply'
    end
  end
end