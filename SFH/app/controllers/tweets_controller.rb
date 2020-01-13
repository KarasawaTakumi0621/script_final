class TweetsController < ApplicationController
  before_action :authenticate_user!
  def index
    @tweets = Tweet.all
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.new
    @tweet.title = params[:tweet][:title]
    @tweet.content = params[:tweet][:content]
    @tweet.user = current_user
    @tweet.save
    redirect_to '/tweets/index'
  end
end
