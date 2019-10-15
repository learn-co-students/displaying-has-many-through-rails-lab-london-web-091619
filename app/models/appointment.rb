class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def parse_datetime
        "#{appointment_datetime.strftime("%B %d, %Y")} at #{appointment_datetime.strftime("%H:%M")}"
    end

    def patient_name
        patient.name
    end

    def doctor_name
        doctor.name
    end
end
