class Hospital
  attr_reader(:name, :chief_of_surgery, :doctors)
  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary(salary)
    @doctors.each do
      doctor[:salary].sum
      return salary
    end
  end

  def specialties
    @doctors[doctor[:salary]]


end
