class Doctor
  attr_reader :name, :specialty, :education, :salary

  def initialize(params)
    @name = params[:name]
    @specialty = params[:specialty]
    @education = params[:education]
    @salary = params[:salary]
  end
end 
