class SearchesController < ApplicationController

  def index

  end

  def show
    #debugger
    search = SimpleTwitter::Search.new
    invest = SimpleTwitter::Search.new
    @results = invest.search(params[:q])

  end


end
