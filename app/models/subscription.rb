class Subscription < ActiveRecord::Base
  attr_accessible :email
  before_validation :downcase_email
  validates :email, :presence => true, :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

	private

	def downcase_email
  		self.email = self.email.downcase if self.email.present?
	end
	
end
