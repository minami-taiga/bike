class UsersController < ApplicationController
	def index
		@users = User.all
	end






  private
  def user_params
  	params.require(:user).permit(:name, :car_model, :profile_image)
  end


end
