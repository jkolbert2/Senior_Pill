class RemindersController < ApplicationController
    
    def index
        @reminders = Reminder.all #where("Name" => "Jackie")
    end
    
    def new
        @reminder = Reminder.new()
    end
    
    def create
        @reminder = Reminder.create!(reminder_params)
        redirect_to reminders_path
    end
    def show
        @reminder = Reminder.find(params[:id]);
    end
    
    def edit
        @reminder = Reminder.find params[:id]
    end

    def update
        @reminder = Reminder.find params[:id]
        @reminder.update_attributes!(reminder_params)
        redirect_to reminders_path
    end
<<<<<<< HEAD
    
    def destroy
        @reminder = Reminder.find params[:id]
        @reminder.destroy
        redirect_to reminders_path
    end
    
    
=======
    def send_reminder
        @reminder = Reminder.find(params[:id])
        
        ReminderMailer.reminder_email(@reminder).deliver
        flash[:notice] = "Reminder has been send"
    end
>>>>>>> d7e93fb40ebf5ecf787d6724fcc3e418e4762625
    private
    
    def reminder_params
        params.require(:reminder)
        params.require(:reminder).permit(:Date,:Name,:Drug,:Amount,:Purpose,:Email)
    end
end
