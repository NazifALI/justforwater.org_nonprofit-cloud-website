class SponsorsController < ApplicationController
  def new
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
    if @sponsor.save
      flash[:success] = "Thanks for your interest in Just 4 Water!"
      redirect_to sponsors_url
    else
      render 'new'
    end
  end

  def show
    @sponsor = sponsor.find(params[:id])
  end

  private

    def sponsor_params
      params.require(:sponsor).permit(:name, :email, :phone)
    end

end
