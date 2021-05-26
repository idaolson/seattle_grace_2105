require 'rspec'
require './lib/doctor'

RSpec.describe do
  before do
    @meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
  end

  it 'exists' do
    expect(@meredith).to be_a(Doctor)
  end

  it 'has attributes' do
    expect(@meredith.name).to eq("Meredith Grey")
  end
end
