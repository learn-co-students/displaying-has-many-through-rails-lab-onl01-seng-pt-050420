class AppointmentsController < ApplicationController
    def new
      @appointment = Appointment.new
      @appointment.appointment_datetime.build
  
    end
   
    def create
      appointment = Appointment.create(appointment_params)
      redirect_to appointment_path(@appointment)
    end

    def show
        @appointment = Appointment.find(params[:id])
    end
   
    def index
      @appointment = Appointment.all
    end
   
    private
   
    def appointment_params
      params.require(:appointment).permit(
        :name,
        addresses_attributes: [
          :street_address_1,
    
        ]
      )
    end
  end