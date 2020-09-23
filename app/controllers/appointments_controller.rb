class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
    @t = @appointment.appointment_datetime
  end
end
