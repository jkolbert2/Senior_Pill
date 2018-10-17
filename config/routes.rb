 
  
Rails.application.routes.draw do
  
  
  resources :reminders
  root :to => redirect('/reminders')
  get :send_reminder, to: 'reminders#send_reminder', as: :send_reminder
  
end


