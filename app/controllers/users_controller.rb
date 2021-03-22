class UsersController < ApplicationController
    before_action :authenticate, only: [:show, :update, :destroy]

    def show
        render json: @current_user
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            
            token = JWT.encode({ user_id: user.id }, 'my$ecretK3y', 'HS256')
            render json: {user: UserSerializer.new(user), token: token}
          else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
          end
        
    end

    def signup
        user = User.create(user_params)
        if user.valid?
            token = JWT.encode({ user_id: user.id }, 'my$ecretK3y', 'HS256')
        render json: {user: UserSerializer.new(user), token: token}, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        @current_user.update(name: params[:name], bio: params[:bio], image: params[:image], purpose: params[:purpose])
    end

    def destroy
        @current_user.destroy
    end

    private

    def user_params
        params.permit(:name, :username, :password, :bio, :image, :purpose)
    end

end
