class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		begin
			@user = User.find(params[:id])
			@items = @user.items.page(params[:page]).reverse_order

		rescue => e
			redirect_to root_path
		end

	end
	def edit
		@user = User.find(params[:id])
	end

	def update
        user = User.find(params[:id])
        user.update(user_params)
        redirect_to user_path(user.id)
	end




  private
  def user_params
  	params.require(:user).permit(:name, :email, :car_model, :profile_image, :introduction)
  end


end
