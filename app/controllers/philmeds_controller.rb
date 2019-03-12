class PhilmedsController < ApplicationController
  def new 
     @philmed = Philmed.new
  end
  
  def create
      @philmed = Philmed.new(philmed_params)
      if @philmed.save
        upset1 = params[:philmed][:upset1]
        upset2 = params[:philmed][:upset2]
        upset3 = params[:philmed][:upset3]
        PhilmedMailer.philmed_email(upset1, upset2, upset3).deliver
        flash[:success] = "Message sent."
        redirect_to new_philmed_path, notice: "Message sent."
      else
        flash[:danger] = @philmed.errors.full_messages.join(", ") 
        redirect_to new_philmed_path, notice: "Error occured."       
    end
  end
      
private
    def philmed_params
        params.require(:philmed).permit(:upset1, :upset2, :upset3)
    end    
end


