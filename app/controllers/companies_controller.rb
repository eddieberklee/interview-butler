class CompaniesController < ApplicationController
  
	def index
		@company = Company.new
		@companies = Company.all
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
