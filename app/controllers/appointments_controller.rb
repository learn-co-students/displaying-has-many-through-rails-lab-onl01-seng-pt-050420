class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find_by(id:params[:id])
        @patient = @appointment.patient
        @doctor = @appointment.doctor
    end
end