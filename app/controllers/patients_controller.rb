class PatientsController < ApplicationController

    def new
      @patient = Patient.new
    end
  
    def create
      @patient = Patient.new(patient_params)
      @patient.save 
      redirect_to patient_path(@patient)
    end
  
    def edit
      @patient = Patient.find(params[:id])
    end
  
    def update
      @patient = Patient.find(params[:id])
      @patient.update(patient_params)
      redirect_to patient_path(@patient)
    end
  
    def index
        @patients = Patient.all
    end
  
    def show
      @patient = Patient.find_by(id: params[:id])
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :age, :appointments)
      end

end