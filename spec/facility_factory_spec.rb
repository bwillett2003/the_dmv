require 'spec_helper'
require './lib/facility_factory'
require './lib/dmv_data_service'

RSpec.describe FacilityFactory do
  before(:each) do
    @factory = FacilityFactory.new
    @dmv_service = DmvDataService.new
    # @wa_facilities = @dmv_service.wa_dmv_office_locations
    @ny_facilities = @dmv_service.ny_dmv_office_locations
    @mo_facilities = @dmv_service.mo_dmv_office_locations
  end

  describe '#create_facilities' do
    # it 'creates Facility objects from CO data' do
    #   facilities = @factory.create_facilities(@co_facilities, :co)

    #   expect(facilities).to be_an(Array)
    #   expect(facilities.first).to be_a(Facility)
    #   expect(facilities.first.name).to be_a(String)
    #   expect(facilities.first.address).to be_a(String)
    #   expect(facilities.first.phone).to be_a(String)
    # end

    it 'creates Facility objects from NY data' do
      facilities = @factory.create_facilities(@ny_facilities, :ny)

      expect(facilities).to be_an(Array)
      expect(facilities.first).to be_a(Facility)
      expect(facilities.first.name).to be_a(String)
      expect(facilities.first.address).to be_a(String)
      expect(facilities.first.phone).to be_a(String)
    end

    it 'creates Facility objects from MO data' do
      facilities = @factory.create_facilities(@mo_facilities, :mo)

      expect(facilities).to be_an(Array)
      expect(facilities.first).to be_a(Facility)
      expect(facilities.first.name).to be_a(String)
      expect(facilities.first.address).to be_a(String)
      expect(facilities.first.phone).to be_a(String)
    end

    it 'returns an empty array for unsupported sources' do
      facilities = @factory.create_facilities([], :unsupported)

      expect(facilities).to eq([])
    end
  end
end
