require 'rspec'
require 'parcels'

describe Parcel do
  it 'is initialized with its measurements' do
    test_parcel = Parcel.new(4, 5, 6, 7)
    test_parcel.should be_an_instance_of Parcel
  end
  it "gives volume based on its measurements" do
    test_parcel = Parcel.new(1, 2, 3, 4)
    test_parcel.volume.should eq 24
  end
  it "gives cost to ship based on its measurements" do
    test_parcel = Parcel.new(1, 2, 3, 4)
    test_parcel.cost_to_ship.should eq 62.5
  end
end
