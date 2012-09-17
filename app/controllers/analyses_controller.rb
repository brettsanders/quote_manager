class AnalysesController < ApplicationController
  
  respond_to :html, :xml, :json

  def new
    @analysis = quote.analyses.new

    respond_with [quote, @analysis]
  end

  def create
    @analysis = quote.analyses.new(params[:analysis])

    new_was_successful = @analysis.save

    respond_with [quote, @analysis] do |format|
      format.html {
        if new_was_successful
          redirect_to quotes_path, notice: "Analysis Added"
        else
          render 'new'
        end 
      }
    end
  end

  def edit
    @analysis = quote.analyses.find(params[:id])

    respond_with [quote, @analysis]
  end

  def update
    @analysis = quote.analyses.find(params[:id])

    update_was_successful = @analysis.update_attributes(params[:analysis])

    respond_with [quote, @analysis] do |format|
      format.html {
        if update_was_successful
          redirect_to quotes_path, notice: "Analysis Was Updated"
        else
          render 'edit'
        end 
      }
    end
  end

  def destroy
    analysis = quote.analyses.find(params[:id])
    if analysis.destroy
      flash[:notice] = 'The analysis was destroyed'
    else
      flash[:alert] = 'The analysis could not be destroyed'
    end

    respond_with [quote, @analysis] do |format|
      format.html {
        redirect_to quotes_path
      }
    end
  end




  private

  def quote
    Quote.find(params[:quote_id])
  end
  

end
