class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(:username => params[:username])
    # @user = Hash.new
    # if params[:username] == 'Fox'
    #   @user[:name] = 'Fox McCloud'
    #   @user[:username] = 'fox'
    #   @user[:location] = 'Tokyo, Japan'
    #   @user[:about] = 'Fighter.'
    # elsif params[:username] == 'Falco'
    #   @user[:name] = 'Falco Lombardi'
    #   @user[:username] = 'falco'
    #   @user[:location] = 'Chiba, Japan'
    #   @user[:about] = 'Meteor.'
    # end
  end
end
