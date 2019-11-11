class Doctor
  attr_reader :name, :appointments, :patient

  @@all_doc = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
