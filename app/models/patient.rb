class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def num_appointments
    appointments.count
  end
end
