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

  def doctors_by_specialty
    by_specialites = Hash.new { |h, k| h[k] = [] }

    @hospitals.select do |hospital|
      hospital.doctors.select do |doctor|
        by_specialites[doctor.specialty] << doctor.name
      end
    end
    by_specialites
  end

  def average_doctors_salary
    network_salary = @hospitals.sum { |hospital| hospital.total_salary }

    total_doctors = @hospitals.sum do |hospital|
      hospital.doctors.count
    end

    network_salary.to_f / total_doctors
  end
end
