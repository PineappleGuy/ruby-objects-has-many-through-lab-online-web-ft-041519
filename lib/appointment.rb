require 'pry'
class Appointment
attr_accessor :date, :patient, :doctor

@@all = []

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @patient.appointments << self
    @doctor.appointments << self
    @@all << self
  end

  def self.all
    @@all
  end

end
