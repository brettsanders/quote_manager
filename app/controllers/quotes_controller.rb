class QuotesController < ApplicationController

  respond_to :html, :xml, :json

  # GET /quotes
  # GET /quotes.json

  def index
    @quotes = Quote.all

    respond_with @quotes
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    @quote = Quote.find(params[:id])

    respond_with @quote
  end

  # GET /quotes/new
  # GET /quotes/new.json
  def new
    @quote = Quote.new

    respond_with @quote
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.create(params[:quote])

    respond_with @quote
  end

  # PUT /quotes/1
  # PUT /quotes/1.json
  def update
    @quote = Quote.find(params[:id])
    update_was_successful = @quote.update_attributes(params[:quote])

    respond_with @quote do |format|
      format.html {
        if update_was_successful
          redirect_to(quotes_path, notice: "Update successful!")
        else
          render 'edit'
        end
      }
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    respond_with @quote
  end
end
