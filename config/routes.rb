 
  
Rails.application.routes.draw do
  resources :reminders
  root :to => redirect('/reminders')
<<<<<<< HEAD
  get :send_reminder, to: 'reminders#send_reminder', as: :send_reminder
=======
>>>>>>> Update Routes
end

Rails.application.routes.draw do
  resource :messages do
    collection do
      post 'reply'
    end
  end
end