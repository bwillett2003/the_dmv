require './lib/facility'

class FacilityFactory
  def create_facilities(data, source)
    case source
    when :ny
      create_ny_facilities(data)
    when :mo
      create_mo_facilities(data)
    # when :co
    #   create_co_facilities(data)
    else
      []
    end
  end

  def create_ny_facilities(data)
    data.map do |facility_data|
      name = facility_data[:office_name]
      address = "#{facility_data[:street_address_line_1]}, #{facility_data[:city]} #{facility_data[:state]} #{facility_data[:zip_code]}"
      phone = facility_data[:public_phone_number]
      Facility.new(name: name, address: address, phone: phone)
    end
  end

  def create_mo_facilities(data)
    data.map do |facility_data|
      name = facility_data[:name]
      address = "#{facility_data[:address1]}, #{facility_data[:city]} #{facility_data[:state]} #{facility_data[:zipcode]}"
      phone = facility_data[:phone]
      Facility.new(name: name, address: address, phone: phone)
    end
  end

#   def create_co_facilities(data)
#     data.map do |facility_data|
#       name = facility_data[:name]
#       address = facility_data[:address]
#       phone = facility_data[:phone]
#       Facility.new(name: name, address: address, phone: phone)
#     end
#   end
end