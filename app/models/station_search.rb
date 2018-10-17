class StationSearch
  def initialize
    @conn = Faraday.new(url: "https://developer.nrel.gov/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["api_key"]
      faraday.adapter Faraday.default_adapter
    end
  end
end
