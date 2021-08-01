class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    docs = @hospitals.flat_map do |hospital|
      hospital.doctors
    end

    docs.max_by do |doc|
      doc.salary
    end
  end

  def doctors_by_hospital
    hash = {}
    @hospitals.each do |hospital|
      hash[hospital] = hospital.doctors.map { |doctor| doctor.name }
    end
    hash
  end

  # def specialties
  #   docs = @hospitals.flat_map do |hospital|
  #     hospital.doctors
  #   end
  #
  #   docs.map do |doc|
  #     doc.specialties
  #   end
  # end
end
