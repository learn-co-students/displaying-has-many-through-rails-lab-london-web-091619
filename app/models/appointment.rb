class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def format_date_time
        date_time = self.appointment_datetime
        time = date_time.strftime("%H:%M")
        date = date_time.strftime("%B %d, %Y")

        return {:time => time, :date => date }
    end

    def get_doctor_name
        self.doctor.name
    end

    def get_patient_name
        self.patient.name
    end
end
