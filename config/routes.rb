 
  
Rails.application.routes.draw do
  
  
  resources :reminders
  root :to => redirect('/reminders')
<<<<<<< HEAD
  get '/send_reminder/:id', to: 'reminders#send_reminder', as: :send_reminder
  
end

=======
  get :send_reminder, to: 'send_reminder', as: :send_reminder
>>>>>>> Add more updates to routes
  resource :messages do
    collection do
      post 'reply'
    end
  end
<<<<<<< HEAD
=======


end
>>>>>>> Add more updates to routes
