 
  
Rails.application.routes.draw do
  
    resource :messages do
    collection do
      post 'reply'
end
  resources :reminders
  root :to => redirect('/reminders')
  get '/send_reminder/:id', to: 'reminders#send_reminder', as: :send_reminder
  

end
end

