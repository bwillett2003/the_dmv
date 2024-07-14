class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicle, :collected_fees

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
    case vehicle.type
    when :antique
      @collected_fees += 25
    when :ev
      @collected_fees += 200
    else
      @collected_fees += 100
    end
  end
end
