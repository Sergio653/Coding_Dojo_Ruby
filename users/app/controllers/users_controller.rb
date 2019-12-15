class UsersController < ApplicationController
    def index
        render json: User.all
    end
    def new 
        
    end
    def show
        id = params[:id] 
    end

    def edit
        id = params[:id]
        @user = User.find(id)
        render 'edit'
    end

    def create
        @user = User.new (user_params)
        
        redirect_to "vagrant s/users"
    end
    def total
        @total_users = User.count
		render text: "There are a total of #{@total_users} users"
    end

    private
        def user_params
            params.require(:user).permit(:first_name,:last_name,:email_address)
        end
end
