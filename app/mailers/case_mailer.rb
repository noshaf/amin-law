class CaseMailer < ActionMailer::Base
  default from: "CaseEvaluations@anlegalfim.com"

  def case_notification(form)
  	@name = form[:name]
  	@phone = form[:phone]
  	@email = form[:email]
  	@message = form[:message]
    mail(:to => 'noshaf@gmail.com', :subject => "You have recieved a case evaluation")
  end

end
