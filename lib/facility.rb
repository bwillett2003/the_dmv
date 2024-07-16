class Facility
  attr_reader :name,
              :address,
              :phone, 
              :services, 
              :registered_vehicles, 
              :collected_fees

  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    if vehicle.engine == :ice
      if vehicle.antique?
          @collected_fees += 25
          vehicle.plate_type = :antique
        else
          @collected_fees += 100
          vehicle.plate_type = :regular
        end
      elsif vehicle.engine == :ev
       @collected_fees += 200
        vehicle.plate_type = :ev
      else
        @collected_fees += 100
        vehicle.plate_type = :regular
      end
    
    vehicle.registration_date = Date.today
    @registered_vehicles << vehicle
  end

  def administer_written_test(registrant)
    if @services.include?('Written Test') && registrant.permit? && registrant.age >= 16
      registrant.license_data[:written] = true
      true
    else
      false
    end
  end

  def administer_road_test(registrant)
    if @services.include?('Road Test') && registrant.license_data[:written]
      registrant.license_data[:license] = true
      true
    else
      false
    end
  end

  def renew_license(registrant)
    if @services.include?('Renew License') && registrant.license_data[:license]
      registrant.license_data[:renewed] = true
      true
    else
      false
    end
  end

  def renew_drivers_license(registrant)
    renew_license(registrant)
  end
end
