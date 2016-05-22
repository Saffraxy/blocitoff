class UsersController < ApplicationController

  def show
      @user = current_user
## Not sure how to address this requirement
###Modify UsersController to provide the requisite instance variable to users#show
    #  @items = @user.items
    #  @items = Item.all
      @items = @user.items
  end
end
