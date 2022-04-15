class UsersController < ApplicationController
    protect_from_forgery

    def index
        render plain: "I'm in the index action!"
    end

    def create
        render json: params
    end

    def show
        render json: params
    end

end