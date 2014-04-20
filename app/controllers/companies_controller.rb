class CompaniesController < ApplicationController
  
	def index
		@months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
		@company = Company.new
		@companies = Company.all
		@colors = @companies.map { |c| c.color }
		
		@dateAppliedDiffs = @companies.map { |c| (Time.now.to_date - DateTime.strptime(c.dateApplied,'%m/%d/%y')).to_i }
		
		@dateAppliedColors = @dateAppliedDiffs.map { |d|
			level = 7 # every 4 days is a level
			if d < level
				"green1"
			elsif d < level*2
				"yellow1"
			elsif d < level*3
				"orange1"
			elsif d < level*4
				"red1"
			else
				"gray1"
			end
		}
		puts @dateAppliedColors
	end

	def create
		@company = Company.new(company_params)
		@company.save
	end

	def show
		@company = Company.find(params[:id])
	end

	private

	def company_params
		params.require(:company).permit(:name, :dateApplied)
	end

end
