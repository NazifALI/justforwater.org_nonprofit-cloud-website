class ApplicationSponsorsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :show]
  before_action :set_application_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /application_sponsors
  # GET /application_sponsors.json
  def index
    @application_sponsors = ApplicationSponsor.all
  end

  # GET /application_sponsors/1
  # GET /application_sponsors/1.json
  def show
  end

  # GET /application_sponsors/new
  def new
    @application_sponsor = ApplicationSponsor.new
  end

  # GET /application_sponsors/1/edit
  def edit
  end

  # POST /application_sponsors
  # POST /application_sponsors.json
  def create
    @application_sponsor = ApplicationSponsor.new(application_sponsor_params)

    respond_to do |format|
      if @application_sponsor.save
        format.html { redirect_to @application_sponsor, notice: 'Application sponsor was successfully created.' }
        format.json { render :show, status: :created, location: @application_sponsor }
      else
        format.html { render :new }
        format.json { render json: @application_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_sponsors/1
  # PATCH/PUT /application_sponsors/1.json
  def update
    respond_to do |format|
      if @application_sponsor.update(application_sponsor_params)
        format.html { redirect_to @application_sponsor, notice: 'Application sponsor was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_sponsor }
      else
        format.html { render :edit }
        format.json { render json: @application_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_sponsors/1
  # DELETE /application_sponsors/1.json
  def destroy
    @application_sponsor.destroy
    flash[:success] = "Sponsor information removed successfully."
  end

  private
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def admin_user
      unless current_user.admin?
        flash[:danger] = "You require administrator privileges to do this."
        redirect_to(application_sponsors_url)
      end
    end
    # Use call  backs to share common setup or constraints between actions.
    def set_application_sponsor
      @application_sponsor = ApplicationSponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_sponsor_params
      params.require(:application_sponsor).permit(:name, :description, :icon)
    end
end
