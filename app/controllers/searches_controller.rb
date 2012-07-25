class SearchesController < ApplicationController
  def index

  end

  def show
    search = SimpleTwitter::Search.new
    invest = SimpelTwitter::Search.new
    @results = search.search(params[:q])

  end
end
