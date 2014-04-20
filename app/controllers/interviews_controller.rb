class InterviewsController < ApplicationController

  def index
    @interviews = Interview.all
  end

  def create
    @interview = Interview.new(params[:interview])
    @interview.save
    redirect_to @interview
  end

  def show
    @interview = Interview.find(params[:id])
  end

end
