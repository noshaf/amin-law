class FormsController < ApplicationController
	def case_evaluation
		CaseMailer.case_notification(params).deliver
	end

	def app_submit
		CaseMailer.app_notification(params).deliver
	end
end
