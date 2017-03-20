class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #debugger
  end

  #The table sytling is in app/assets/stylesheets/customscss
  def show_sponsors
    @sponsors = Sponsor.all

  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully joined Just 4 Water!"
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
