class Doctor
  attr_reader :name, :specialty, :salary
  def initialize(doctor_info)
    @name = doctor_info[:name]
    @speciality = doctor_info[:specialty]
    @salary = doctor_info[:salary]
  end


end
