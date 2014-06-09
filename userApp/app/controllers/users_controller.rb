class UsersController < ApplicationController
  def new
	@user = User.new
  end
  def create
     @user = User.new(params[:user])
     if @user.save
      	flash[:notice] = "Saved successfully"
	flash[:color]= "valid"
     else
	flash[:notice] = "Error while saving"
	flash[:color]= "invalid"
     end	
     redirect_to(:controller=>"sessions",:action => "login")
  end
end
