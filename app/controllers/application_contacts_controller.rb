class ApplicationContactsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :show]
  before_action :set_application_contact, only: [:show, :edit, :update, :destroy]

  # GET /application_contacts
  # GET /application_contacts.json
  def index
    @application_contacts = ApplicationContact.all
  end

  # GET /application_contacts/1
  # GET /application_contacts/1.json
  def show
  end

  # GET /application_contacts/new
  def new
    if params.has_key?(:email) then @data = params[:email] else @data = nil end
    @application_contact = ApplicationContact.new
  end

  # GET /application_contacts/1/edit
  def edit
  end

  # POST /application_contacts
  # POST /application_contacts.json
  def create
    @application_contact = ApplicationContact.new(application_contact_params)

    respond_to do |format|
      if @application_contact.save
        format.html { redirect_to new_application_contact_url, notice: 'Contact information was submitted successfully.' }
        #format.json { render json: @application_contact_new.errors, status: :unprocessable_entity }
      else
        format.html { render :new }
        format.json { render json: @application_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_contacts/1
  # PATCH/PUT /application_contacts/1.json
  def update
    respond_to do |format|
      if @application_contact.update(application_contact_params)
        format.html { redirect_to @application_contact, notice: 'Application contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_contact }
      else
        format.html { render :edit }
        format.json { render json: @application_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_contacts/1
  # DELETE /application_contacts/1.json
  def destroy
    @application_contact.destroy
    respond_to do |format|
      format.html { redirect_to application_contacts_url, notice: 'Application contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_contact
      @application_contact = ApplicationContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_contact_params
      params.require(:application_contact).permit(:name, :email, :phone, :description)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def admin_user
      unless current_user.admin?
        flash[:danger] = "You require administrator privileges to do this."
        redirect_to(application_contacts_url)
      end
    end
end
