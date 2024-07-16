require 'spec_helper'
require './lib/vehicle_factory'
require './lib/dmv_data_service'

RSpec.describe VehicleFactory do
  before(:each) do
    @factory = VehicleFactory.new
    @wa_ev_registrations = DmvDataService.new.wa_ev_registrations
  end

  describe '#create_vehicles' do
    it 'creates Vehicle objects from data' do
      vehicles = @factory.create_vehicles(@wa_ev_registrations)

      expect(vehicles).to be_an(Array)
      expect(vehicles.first).to be_a(Vehicle)
      expect(vehicles.first.engine).to eq(:ev)
      expect(vehicles.first.make).to be_a(String)
      expect(vehicles.first.model).to be_a(String)
      expect(vehicles.first.vin).to be_a(String)
      expect(vehicles.first.year).to be_a(String)
    end
  end
end