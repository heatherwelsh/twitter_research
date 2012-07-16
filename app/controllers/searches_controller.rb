class SearchesController < ApplicationController
  def index
   # @message = "RUBY ROCKS!!!!!"
  end

  def show
    search = SimpleTwitter::Search.new
    @results = search.search(params[:q])

  end
end
