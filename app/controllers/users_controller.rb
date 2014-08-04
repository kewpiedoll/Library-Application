class UsersController < ApplicationController

	def index
		@user = User.all

		@headings = [
                  :user_id,
                  :name,
                  :email,
    ].map{|h| User.human_attribute_name(h)}

	end

	def new
	end

	def edit
	end

	def create
		@user = User.new(user_params)

		@user.save
		redirect_to @user
	end

	def show
		@user = User.find(params[:id])
	end

private
  def user_params
   params.require(:user).permit(:name, :email)
  end
end
