module Api
    class UsersController < ApplicationController
        def create 
            @user = User.create(user_params)

            if @user.save
                UserMailer.welcome_mail(@user).deliver
                render json: @user, status: :created
            else
                render json: @user.errors.messages
            end
            

        end
        def update 
            @user = User.find(params[:id])
            if @user.update(user_params)
                render json: @user
            else
                head(:unauthorized)
            end

        end
        private
        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number)
        end
end
end
