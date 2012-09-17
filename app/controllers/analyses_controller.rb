class AnalysesController < ApplicationController
  
  before_filter :authenticate, :only => :show

  def index
    @analyses = Analysis.all
  end

  def show
    @analysis = Analysis.find(params[:id])
  end

  private

  def authenticate
    if params[:id] == "critique-of-practical-reason"
      redirect_to analyses_url, :notice => "Dumbass, Philosophy is for Suckers"
    end
  end

end
