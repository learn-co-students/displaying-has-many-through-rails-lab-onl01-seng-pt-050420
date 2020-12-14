class DoctorsController < ApplicationController

    def new
      @doctor = doctor.new
    end
  
    def create
      @doctor = doctor.new(doctor_params)
      @doctor.save 
      redirect_to doctor_path(@doctor)
    end
  
    def edit
      @doctor = Doctor.find(params[:id])
    end
  
    def update
      @doctor = Doctor.find(params[:id])
      @doctor.update(doctor_params)
      redirect_to doctor_path(@doctor)
    end
  
    def index
    end
  
    def show
      @doctor = Doctor.find_by(id: params[:id])
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :department, :appointments)
      end
end