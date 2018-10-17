class SearchController < ApplicationController
  def index
    zip = params[:q]
    @conn = Faraday.new(url: "https://developer.nrel.gov/") do |faraday|
      faraday.headers["api_key"] = ENV["api_key"]
      faraday.adapter Faraday.default_adapter
      binding.pry
    end

    response = @conn.get("/api/alt-fuel-stations/v1/nearest.json")
    results = JSON.parse(response.body, symbolize_names: true)[:results]
    
    @stations = results.map do |result|
      Member.new(result)
    end
  end
end
