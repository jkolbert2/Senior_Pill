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
    
    private
    
    def reminder_params
        params.require(:reminder)
        params.require(:reminder).permit(:Date,:Name,:Drug,:Amount,:Purpose)
    end
end
