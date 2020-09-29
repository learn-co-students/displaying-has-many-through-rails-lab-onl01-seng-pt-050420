class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def doctor_name
        self.doctor.name
    end

    def patient_name
        self.patient.name
    end

    def convert_datetime_to_long_format
        self.appointment_datetime.to_formatted_s(:long)
    end

    def convert_datetime_to_readable
        self.convert_datetime_to_long_format.split.insert(3,"at").join(" ")
    end
end
