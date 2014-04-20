class Company < ActiveRecord::Base
	has_many :interviews, dependent: :destroy

	def color
		interviews = self.interviews
		numInterviews = interviews.length

		if numInterviews == 0
			return "green1"
		elsif numInterviews == 1
			return "yellow1"
		elsif numInterviews == 2
			return "yellow2"
		elsif numInterviews == 3
			return "orange"
		elsif numInterviews == 4
			return "red"
		end
		# red if offer extended
		# orange if on-site
		# yellow if 2nd round
		# green if 1st round
	end

end
