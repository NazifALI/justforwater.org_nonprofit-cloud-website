class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :show]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user,  only: :destroy

  def index
    #Show either user data or sponsor data.
    @users = User.all
    
  end

  def new
    @user = User.new

  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User Deleted"
    redirect_to users_url
  end

  def show
    @user = User.find(params[:id])
    show_sponsors
  end

  #The table sytling is in app/assets/stylesheets/customscss
  def show_sponsors
    @sponsors = Sponsor.all
    @sort = params[:sort] ? params[:sort] : session[:sort]
    if !@sort.nil?
      @sponsors = @sponsors.order(@sort)
    end
    session[:sort] = @sort
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Successfully joined Just 4 Water!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile Updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
