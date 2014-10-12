class CaseMailer < ActionMailer::Base
  default from: "CaseEvaluations@anlegalfim.com"

  def case_notification(form_info)
    mail(:to => 'noshaf@gmail.com', :subject => "You have recieved a case evaluation")
  end

end
