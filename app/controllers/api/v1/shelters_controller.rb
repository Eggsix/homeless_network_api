class Api::V1::SheltersController < ApplicationController

  def index
    @shelters = Shelter.all.order(:id).reverse
    respond_with @shelters
  end

  def show
    @shelter = Shelter.find(params[:id])
    respond_with @shelter
  end

  def create
    print "these are the shelter params" 
    print :shelter
    @shelter = Shelter.new(shelter_params)
    # if @shelter.save
    #   render json: @shelter, status: 201
    # else
    #   render json: { errors: @shelter.errors.full_messages }, status: 422
    # end
  end


  private

    def shelter_params
      params.require(:shelter).permit(:name, :address, :phone, :beds)
    end

end