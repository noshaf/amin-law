class FormsController < ApplicationController
	def case_evaluation
		CaseMailer.case_notification(params).deliver
	end
end
