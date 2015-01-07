class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  def about
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>There\'s a problem with your quote. </strong> Please enter a quote that is less than 150 characters and greather than 10.'
    end
    redirect_to root_path
  end

  private
    def quote_params
      params.require(:quote).permit(:saying, :author)
    end

end
