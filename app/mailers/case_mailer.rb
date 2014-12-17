class CaseMailer < ActionMailer::Base
  default from: "CaseEvaluations@anlegalfirm.com"

  def case_notification(form)
  	@name = form[:name]
  	@phone = form[:phone]
  	@email = form[:email]
  	@message = form[:message]
    mail(:to => 'noshaf@gmail.com', :subject => "You have recieved a case evaluation")
  end

  def app_notification(form)
  	@info = form
  	mail(:to => 'noshaf@gmail.com', :subject => "You have recieved a attorney appearance request")
  end
end
