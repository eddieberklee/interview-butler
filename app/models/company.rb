class Company < ActiveRecord::Base
	has_many :interviews, dependent: :destroy


end
