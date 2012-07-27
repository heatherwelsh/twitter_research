class CategoriesController < ApplicationController


  def index
    @categories = Category.order(:title).limit(50)
  end

  #############################################################

  def show
    @categories = Category.includes(:tweets).
      order('tweets.tweeted_at desc').find(params[:id])
    respond_with(@category)
  end

  #############################################################
  #show a form for a new category

  def new
    @categories = Category.new
    respond_with(@category)

  end

  ############################################################
  # Actually create the category
  def create
    @categories = Category.create(params[:category])
    respond_with(@category)
  end

  #############################################################
  def destroy
    @category = Category.find(params[:id])

  end
end
