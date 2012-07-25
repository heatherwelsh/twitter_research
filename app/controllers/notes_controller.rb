class NotesController < ApplicationController

  before_filter(:fetch_tweet)
  before_filter(:fetch_note, except: [:index, :new, :create])
  ###############################################################################
  private

  ###############################################################################
  def index
    @notes = @tweets.notes.order('created_at desc')
    respond_with([@tweet, @note], location: tweet_url(@tweet))
  end
  ###############################################################################
  def show
    @note = @tweet.notes.find(params[:id])
    respond_with([@tweet, @note], location: tweet_url(@tweet))
  end
  ###############################################################################
  def new
    @note = @tweet.notes.build
    repsond_with([@tweet, @note])
  end
  ###############################################################################
  def create
    @note = @tweet.notes.create(params[:note])
    repsond_with([@tweet, @note], location: tweet_url(@tweet))
  end
  ###############################################################################
  def edit
   # @note = @tweet.notes.find(params[:id])
    respond_with([@tweet, @note])
  end
  ###############################################################################
  def update
   # @note = @tweet.notes.find(param[:id])
    @note.update_attributes(params[:note])
    repsond_with([@tweet, @note])
  end
  ###############################################################################
  def destroy
   # @note = @tweet.find(params[:id])
    @note.destory
    respond_with([@tweet, @note])
  end
  ###############################################################################
  def fetch_tweet
    @tweet = current_user.tweet.find(params[:tweet_id])
  end
  ###############################################################################
  def fetch_note
    @note = @tweet.note.find(params[:id])
  end
end



