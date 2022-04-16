class UsersController < ApplicationController
    protect_from_forgery

    def index
        # displays all users data
        render json: User.all
    end

    def create
        render json: params
    end

    def show
        render json: params
    end

end