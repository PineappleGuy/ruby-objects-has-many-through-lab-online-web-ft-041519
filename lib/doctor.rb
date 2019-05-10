class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new( patient, self, date)
  end

  def appointments
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @appointments << appointment
      end
    end
    @appointments
  end

  def patients
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @patients << appointment.patient
      end
    end
    @patients
  end

end
