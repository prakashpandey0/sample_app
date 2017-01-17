class UsersController < ApplicationController
  def show
    @user  = User.find(params[:id])
    #debugger used for debug in console
  end

  def new
    @user =   User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save                     #calling the user_params
      log_in @user  # Logging in the user upon signup.
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

    private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end


end
