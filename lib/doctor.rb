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
    @appointments
  end

  def patients
    @appointments.each do |appointment|
      @patients << appointment.patient
    end
  @patients
  end

end
