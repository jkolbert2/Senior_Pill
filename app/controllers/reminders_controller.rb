class RemindersController < ApplicationController
    
    def index
        @reminders = current_user.reminders.page(params[:page]).per_page(5)
    end
    
    def new
        #@reminder = Reminder.new()
        @user = User.find(params[:user_id])
        @reminder = Reminder.new()
    end
    
    def create
        #@reminder = Reminder.create(reminder_params)
        #redirect_to reminders_path
        @user = User.find(params[:user_id]);
        @reminder = @user.reminders.create(reminder_params);
        if @reminder.save
            flash[:success] = "Reminder Successfully Created!"
            redirect_to "/users/#{@user.id}"
        else
            flash[:failure] = "Reminder not Successfully Created. Try Again!"
            render 'new'
        end
    end
    
    def show
        @user = User.find(params[:user_id]);
        @reminder = @user.reminders.find(params[:id]);
    end
    
    def edit
        @user = User.find(params[:user_id]);
        @reminder = @user.reminders.find(params[:id]);
    end

    def update
        @user = User.find(params[:user_id]);
        @reminder = Reminder.find params[:id];
        @reminder.update_attributes!(reminder_params);
        redirect_to "/users/#{@user.id}"
    end
    
    def destroy
        @reminder = Reminder.find params[:id]
        @reminder.destroy
        redirect_to reminders_path
    end
    
    def send_reminder
        @reminder = Reminder.find(params[:id])
        
        ReminderMailer.reminder_email(@reminder).deliver
        flash[:notice] = "Reminder has been send"
        
        redirect_to reminders_path
    end
    
    private
    
    def reminder_params
        params.require(:reminder)
        params.require(:reminder).permit(:Date,:Drug,:Amount,:Purpose,:Email,:frequency,:Active,:user_id)
    end
end