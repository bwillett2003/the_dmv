require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do
    before(:each) do
        @registrant_1 = Registrant.new('Bruce', 18, true)
        @registrant_2 = Registrant.new('Penny', 16)
        @registrant_3 = Registrant.new('Tucker', 15)
    end

    it 'initialize name' do
        expect(@registrant_1.name).to eq('Bruce')
        expect(@registrant_2.name).to eq('Penny')
        expect(@registrant_3.name).to eq('Tucker')
    end

    it 'initialize age' do
        expect(@registrant_1.age).to eq(18)
        expect(@registrant_2.age).to eq(16)
        expect(@registrant_3.age).to eq(15)
    end

    it 'initialize permit' do
        expect(@registrant_1.permit?).to eq(true)
        expect(@registrant_2.permit?).to eq(false)
        expect(@registrant_3.permit?).to eq(false)
    end

    it 'initialize license_data' do
        expect(@registrant_1.license_data).to eq({ written: false, license: false, renewed: false })
        expect(@registrant_2.license_data).to eq({ written: false, license: false, renewed: false })
        expect(@registrant_3.license_data).to eq({ written: false, license: false, renewed: false })
    end
end