class PhilmedMailer < ActionMailer::Base #WATCH THE CAPITALIZATION 
  default to: 'lesley.yc@gmail.com'
  def philmed_email(upset1, upset2, upset3)
    @upset1 = upset1 #needs to correspond with the three above 
    @upset2 = upset2
    @upset3 = upset3
    
    mail(subject: 'Philosophical Meditation') 
  end
end