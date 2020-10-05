class DoctorsController < ApplicationController
    def index
        @doctor = Doctor.all 
    end 

    

    def show
        @doctor = Doctor.find(params[:id])
    end 

    private
    def doctor_params
        params.require(:doctor).permit(:name, :deparment)
    end 
end 