class Api::V1::UsersController < ApiController

  def index
    @users = User.all

    render json: { users: @users }, status: :ok
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      render json: { user_id: @user.id }, status: :ok
    else
      render json: { error: @user.errors.full_messages.join(', ') }
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end