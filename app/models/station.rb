class Station
  def initialize(attributes)
    @name = attributes["station_name"]
    @fuel_type = attributes[:fuel_type_code]
    @street_address = attributes[:street_address]
    @city = attributes[:city]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @fuel_type = attributes[:fuel_type_code]
    @distance = attributes[:distance]
  end
end
