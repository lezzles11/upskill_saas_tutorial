class PhilmedsController < ApplicationController
  def new 
     @philmed = Philmed.new
  end
  
  def create
      @philmed = Philmed.new(philmed_params)
      if @philmed.save
        idea1 = params[:philmed][:idea1]
        idea2 = params[:philmed][:idea2]
        idea3 = params[:philmed][:idea3]
        idea4 = params[:philmed][:idea4]
        anxious1 = params[:philmed][:anxious1]
        anxious2 = params[:philmed][:anxious2]
        anxious3 = params[:philmed][:anxious3]
        anxious4 = params[:philmed][:anxious4]
        anxious5 = params[:philmed][:anxious5]
        anxious6 = params[:philmed][:anxious6]
        anxious7 = params[:philmed][:anxious7]
        anxious8 = params[:philmed][:anxious8]
        upset1 = params[:philmed][:upset1]
        upset2 = params[:philmed][:upset2]
        upset3 = params[:philmed][:upset3]
        upset4 = params[:philmed][:upset4]
        upset5 = params[:philmed][:upset5]
        upset6 = params[:philmed][:upset6]
        upset7 = params[:philmed][:upset7]
        upset8 = params[:philmed][:upset8]
        upset9 = params[:philmed][:upset9]
        excited1 = params[:philmed][:excited1]
        excited2 = params[:philmed][:excited2]
        excited3 = params[:philmed][:excited3]
        excited4 = params[:philmed][:excited4]
        excited5 = params[:philmed][:excited5]
        excited6 = params[:philmed][:excited6]
        PhilmedMailer.philmed_email(idea1, idea2, idea3, idea4, anxious1, anxious2, anxious3, anxious4, anxious5, anxious6, anxious7, anxious8, upset1, upset2, upset3, upset4, upset5, upset6, upset7, upset8, upset9, excited1, excited2, excited3, excited4, excited5, excited6).deliver
        flash[:success] = "Message sent."
        redirect_to new_philmed_path, notice: "Message sent."
      else
        flash[:danger] = @philmed.errors.full_messages.join(", ") 
        redirect_to new_philmed_path, notice: "Error occured."       
    end
  end
      
private
    def philmed_params
        params.require(:philmed).permit(:idea1, :idea2, :idea3, :idea4, :anxious1, :anxious2, :anxious3, :anxious4, :anxious5, :anxious6, :anxious7, :anxious8, :upset1, :upset2, :upset3, :upset4, :upset5, :upset6, :upset7, :upset8, :upset9, :excited1, :excited2, :excited3, :excited4, :excited5, :excited6)
    end    
end


