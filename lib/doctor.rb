class Doctor
  attr_reader :name

  @@all_doc = []
  def initialize(name)
    @name = name
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end
end
