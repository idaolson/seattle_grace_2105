require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  context "it's a hospital" do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

    it "exists" do
      expect(seattle_grace).to be_a(Hospital)
    end

    it "has attributes" do
      expect(seattle_grace.name).to eq("Seattle Grace")
      expect(seattle_grace.chief_of_surgery).to eq("Richard Webber")
      expect(seattle_grace.doctors).to eq([meredith, alex])
    end

    it "calculates the total salary" do
      expect(seattle_grace.total_salary).to eq(190000)
    end

    it "returns the lowest paid doctor's name" do
      expect(seattle_grace.lowest_paid_doctor).to eq("Alex Karev")
    end

    it "returns the highest paid doctor" do
      expect(seattle_grace.highest_paid_doctor).to eq(meredith)
    end
    
    it "returns an array of specialties" do
      expect(seattle_grace.specialties).to eq(["General Surgery", "Pediatric Surgery"])
    end
  end
end
