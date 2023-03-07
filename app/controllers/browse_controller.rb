class BrowseController < ApplicationController

  def browse
    @users = User.where.not(id: current_user.id)
  end

  def approve
    # User swipes left
  end

  def decline
    # User swipes right
  end
end
