class Api::V1::UsersController < ApiController

  def index
    @users = User.all

    render json: { users: @users}, s tatus: :ok
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end

end
