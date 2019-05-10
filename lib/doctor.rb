class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @appointments << appointment
      end
    end
    @appointment
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
