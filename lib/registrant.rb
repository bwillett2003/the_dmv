class Registrant
    attr_reader :name, 
                :age, 
                :permit,
                :license_data

    def initialize(name, age, permit = false)
        @name = name
        @age = age
        @permit = permit
        @license_data = { 
            written: false, 
            license: false, 
            renewed: false
        }
    end

    def permit?
        @permit
    end

    def earn_permit
        @permit = true
        return
    end

    def has_permit?
        permit?
    end
    
    def passed_tests?
        @license_data[:written] && @license_data[:license]
     end
    
    def renew_license
        @license_data[:license] = true
        @license_data[:renewed] = true
    end
end