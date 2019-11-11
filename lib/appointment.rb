class Appointment
  attr_reader :date, :patient, :doctor

  @@all = []
  def initialize(patient ="", doctor = "", date = "")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end
end
