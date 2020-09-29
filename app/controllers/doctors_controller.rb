class DoctorsController < ApplicationController
    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
      @doctor = Doctor.new
      @doctor.name.build
    end
   
    def create
      doctor = Doctor.create(doctor_params)
      redirect_to doctor_path(@doctor)
    end
   
    def index
      @doctor = Doctor.all
    end
   
    private
   
    def doctor_params
      params.require(:doctor).permit(
        :name,
        addresses_attributes: [
          :street_address_1,
         
        ]
      )
    end
  end