class AppointmentsController < ApplicationController

    def new
      @appointment = Appointment.new
    end
  
    def create
      @appointment = Appointment.new(appointment_params)
      @appointment.save 
      redirect_to appointment_path(@appointment)
    end
  
    def edit
      @appointment = Appointment.find(params[:id])
    end
  
    def update
      @appointment = Appointment.find(params[:id])
      @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    end
  
    def index
    end
  
    def show
      @appointment = Appointment.find(params[:id])
    end

    private

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
      end

end