require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do
    before(:each) do
        @registrant_1 = Registrant.new({name: 'Bruce', age: 18, permit: true})
        @registrant_2 = Registrant.new({name: 'Penny', age: 15, })
    end

    it 'initialize name' do
        expect(@registrant_1.name).to eq('Bruce')
        expect(@registrant_2.name).to eq('Penny')
    end

    it 'initialize age' do
        expect(@registrant_1.age).to eq(18)
        expect(@registrant_2.age).to eq(15)
    end
end