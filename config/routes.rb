 
  
Rails.application.routes.draw do
  
  
  resources :reminders
  root :to => redirect('/reminders')
  get :reminder_email, to: 'reminder_mailer#reminder_email', as: :reminder_email
  
end


