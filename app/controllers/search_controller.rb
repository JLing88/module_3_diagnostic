class SearchController < ApplicationController
  def index
    zip = params[:q]
    conn = Faraday.new(url: "https://developer.nrel.gov/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["api_key"]
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{zip}&radius=6.0")
    results = JSON.parse(response.body, symbolize_names: true)
    @stations = results[:fuel_stations].map do |result|
      Station.new(result)
    end
    binding.pry
  end
end
