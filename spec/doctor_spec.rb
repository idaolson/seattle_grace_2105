require './lib/doctor'

RSpec.describe Doctor do
  context "it's a doctor" do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    it "exists" do
      expect(meredith).to be_a(Doctor)
    end

    it "has attributes" do
      expect(meredith.name).to eq("Meredith Gray")
      expect(meredith.specialty).to eq("General Surgery")
      expect(meredith.education).to eq("Harvard University")
      expect(meredith.salary).to eq(100000)
    end
  end
end
