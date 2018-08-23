json.extract! airport, :id, :oa_id, :ident, :type, :name, :lat, :long, :elevation_ft, :continent, :iso_country, :iso_region, :municipality, :scheduled_service, :gps_code, :iata_code, :home_link, :wikipedia_link, :keywords, :created_at, :updated_at
json.url airport_url(airport, format: :json)
