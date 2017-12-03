class UsersController < ApplicationController
    def index
        render "index"
    end
    def create
        User.create(user_params)
        if session[:count] == nil
            session[:count] = 0
        end
        session[:count] += 1
        flash[:success] = "You have submitted this form #{session[:count]} times now"
        redirect_to "/result"
    end
    def show
        @user = User.last
        render "result"
    end

    private
        def user_params
            params.require(:user).permit(:name, :location, :language, :comment)
        end

end
