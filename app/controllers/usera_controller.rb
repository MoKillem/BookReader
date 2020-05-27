class UseraController < ApplicationController
    before_action :set_user, only: [:show]
    before_action :authenticate_user!
    def show
        @current_book = @user.books.where(current_book: true)[0]
    end
    private 
    def set_user
        @user = User.find(params[:id])
    end
end
