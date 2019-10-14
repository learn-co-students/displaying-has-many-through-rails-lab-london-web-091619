class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    
    def datetime
        appointment_datetime
        #No clue why the tests want this
    end

    def format_datetime
        "#{datetime.strftime('%B %d, %Y')} at #{datetime.strftime('%H:%M')}"
    end

    def patient_name
        patient.name
    end

    def doctor_name
        doctor.name
    end

end
