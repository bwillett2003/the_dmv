class Registrant
    attr_reader :name, :age, :permit, :license_data

    def initialize(registrant_details)
        @name = registrant_details[:name]
        @age = registrant_details[:age]
        @permit = registrant_details(:permit, false)
        @license_data = registrant_details[:license_data]
    end

    def earn_permit
        @permit = true
    end
end