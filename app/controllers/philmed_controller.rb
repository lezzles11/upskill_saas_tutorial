class PhilmedController < ApplicationController
  def new
    @philmed = Philmed.new
  end
#Saves the contact in contact_params; if the contact saved... or else... show them that there was an error 
  def create
    @philmed = Philmed.new(philmed_params) #{name: 'asdf', email: 'asdf', comments: 'asdf'}
    if @philmed.save #when you do .save, the whole thing gets saved into database 
       flash[:success] = "Done!" 
       redirect_to new_philmed_path #if save is successful, redirect them back to the new contact path 
    else #otherwise... 
       flash[:danger] = @philmed.errors.full_messages.join(", ") 
       redirect_to new_philmed_path #otherwise, redirect them back to the blank form. 
    end
  end

#Privatizes the contact 
  private
    def philmed_params
       params.require(:philmed).permit(:upset1, :upset2, :upset3)
    end
end
