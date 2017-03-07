class Api::V1::SessionsController < ApiController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      remember user
      render json: { user_id: user.id }, status: :ok
    else
      render json: { error: 'Incorrect login or password' }, status: :unauthorized
    end
  end
  
  def destroy
    log_out
    render json: { message: 'Logged out.' }, status: :ok
  end
end