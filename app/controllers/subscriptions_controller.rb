class SubscriptionsController < ApplicationController
  def send_case
  	# puts "hello"
  	# CaseMailer.case_notification(@subscription).deliver
  end

  def create
  	@subscription = Subscription.new()
    @subscription.email = params[:email]
  	if @subscription.save
      respond_to do |format|
    		format.js { render :json => 'success', :status => 'success' }
      end
  	else
      respond_to do |format|
    		format.js { render :json => 'error', :status => 'fail' }
      end
  	end
  end
end
