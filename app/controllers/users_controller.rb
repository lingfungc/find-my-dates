class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def follow
    # raise
    redirect_to users_path if current_user.follow(@user.id)
      # respond_to do |format|
      #   format.html { redirect_to root_path }
      #   format.js
      # end
    # end
  end

  def unfollow
    redirect_to users_path if current_user.unfollow(@user.id)
    #   respond_to do |format|
    #     format.html { redirect_to root_path }
    #     # format.js { render action: :follow }
    #   end
    # end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
