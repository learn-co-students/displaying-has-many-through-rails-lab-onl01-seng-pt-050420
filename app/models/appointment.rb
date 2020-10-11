class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def format_time
        strftime("%B %d, %Y") 
    end 
end
