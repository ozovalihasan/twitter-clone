# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @whiistle = Whiistle.new
    @whiistles = @user.whiistles
    @followers = @user.followers
  end
end
