require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do
    before(:each) do
        @registrant_1 = Registrant.new({name: 'Bruce', age: 18, permit: true})
        @registrant_2 = Registrant.new({name: 'Penny', age: 15, })
    end
end