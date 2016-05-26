class UsersController < ApplicationController

before_filter :current_only

  def show
      @user = current_user
###Modify UsersController to provide the requisite instance variable to users#show
      @items = @user.items
  end
end
