class UsersController < ApplicationController
    # added to get around a "Missing Authentication Token" error
    protect_from_forgery

    def index
        # displays all users data
        render json: User.all
    end

    def create
        # makes a new user given name and email nested under user
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
private

    def user_params
        #holds the rules for params given to user
        params.require(:user).permit(:name, :email)
    end

end