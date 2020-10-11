class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
        @time = @appointment.appointment_datetime
    end

end
