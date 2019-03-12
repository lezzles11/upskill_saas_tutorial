class PhilmedMailer < ActionMailer::Base #WATCH THE CAPITALIZATION 
  default to: 'lesley.yc@gmail.com'
  def philmed_email(idea1, idea2, idea3, idea4, anxious1, anxious2, anxious3, anxious4, anxious5, anxious6, anxious7, anxious8, upset1, upset2, upset3, upset4, upset5, upset6, upset7, upset8, upset9, excited1, excited2, excited3, excited4, excited5, excited6) #needs to correspond with the three above 
    @idea1 = idea1 
    @idea2 = idea2
    @idea3 = idea3
    @idea4 = idea4
    @anxious1 = anxious1 
    @anxious2 = anxious2
    @anxious3 = anxious3
    @anxious4 = anxious4
    @anxious5 = anxious5
    @anxious6 = anxious6
    @anxious7 = anxious7
    @anxious8 = anxious8
    @upset1 = upset1 
    @upset2 = upset2
    @upset3 = upset3
    @upset4 = upset4
    @upset5 = upset5
    @upset6 = upset6
    @upset7 = upset7
    @upset8 = upset8
    @upset9 = upset9
    @excited1 = excited1 
    @excited2 = excited2
    @excited3 = excited3
    @excited4 = excited4
    @excited5 = excited5
    @excited6 = excited6
    mail(subject: 'Philosophical Meditation') 
  end
end