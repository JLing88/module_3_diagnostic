class Station
  attr_reader :name,
              :fuel_type,
              :street_address,
              :city,
              :state,
              :zip,
              :fuel_type,
              :distance,
              :access_days_time

  def initialize(attributes)
    @name = attributes[:station_name]
    @fuel_type = attributes[:fuel_type_code]
    @street_address = attributes[:street_address]
    @city = attributes[:city]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @fuel_type = attributes[:fuel_type_code]
    @distance = attributes[:distance]
    @access_days_time = attributes[:access_days_time]
  end
end
