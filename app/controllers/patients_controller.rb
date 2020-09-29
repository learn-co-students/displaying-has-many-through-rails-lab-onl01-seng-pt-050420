class PatientsController < ApplicationController
    def show
        @patient = Patient.find(params[:id])
    end

    def new
      @patient = Patient.new
      @patient.apointments.build
    end
   
    def create
      patient = Patient.create(patient_params)
      redirect_to patient_path(@patient)
    end
   
    def index
      @patients = Patient.all
    end
   
    private
   
    def patient_params
      params.require(:patient).permit(
        :name,
        addresses_attributes: [
          :street_address_1,
          
        ]
      )
    end
  end