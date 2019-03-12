class PhilmedMailer < ActionMailer::Base
  default to: 'lesley.yc@gmail.com'
  def contact_email(upset1, upset2, upset3)
    @upset1 = upset1
    @upset2 = upset2
    @upset3 = upset3
    mail(from: email, subject: 'Phil Med')
  end
end