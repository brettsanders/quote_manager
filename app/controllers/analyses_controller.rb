class AnalysesController < ApplicationController
  
  before_filter :authenticate, :only => :show

  def index
    @analyses = [
      "critique-of-pure-reason",
      "critique-of-practical-reason"
    ]
  end

  def show
    @analysis = params[:id]
  end

  private

  def authenticate
    if params[:id] == "critique-of-practical-reason"
      redirect_to analyses_url, :notice => "Dumbass, Philosophy is for Suckers"
    end
  end

end
