class Doctor
attr_accessor :name, :appointment, :patients
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.find_all {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map do |appointment| appointment.patient
    end
  end


end
