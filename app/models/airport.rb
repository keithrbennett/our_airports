require 'normalize_country'

class Airport < ApplicationRecord


  def self.from_source_hash(h)
    Airport.new(
        oa_id:           h['id'],
        ident:           h['ident'],
        airport_type:    h['type'],
        name:            h['name'],
        lat:             h['latitude_deg'].to_f,
        long:            h['longitude_deg'].to_f,
        elevation_ft:    h['elevation_ft'],
        continent:       h['continent'],
        iso_country:     h['iso_country'],
        iso_region:      h['iso_region'],
        municipality:    h['municipality'],
        scheduled_service: h['scheduled_service'] == 'yes',
        gps_code:        h['gps_code'],
        iata_code:       h['iata_code'],
        local_code:      h['local_code'],
        home_link:       h['home_link'],
        wikipedia_link:  h['wikipedia_link'],
        keywords:        h['keywords']
    )
  end


  def to_h
    {
        id:                id,
        oa_id:             oa_id,
        ident:             ident,
        airport_type:      airport_type,
        name:              name,
        lat:               lat,
        long:              long,
        elevation_ft:      elevation_ft,
        continent:         continent,
        iso_country:       iso_country,
        iso_region:        iso_region,
        municipality:      municipality,
        scheduled_service: scheduled_service,
        gps_code:          gps_code,
        iata_code:         iata_code,
        local_code:        local_code,
        home_link:         home_link,
        wikipedia_link:    wikipedia_link,
        keywords:          keywords
    }
  end


  def country_name
    NormalizeCountry.convert(iso_country)
  end


  def lat_long_valid?
    lat != 0.0 || long != 0.0
  end


  def has_home_link?
    home_link && home_link.size > 0
  end


  # URL for this location on Google Maps. The map is of the lat/long coordinates only so
  # the airport might not be labelled. In addition, because we are not searching for the
  # place name, we need to zoom in quite a bit to guarantee that the airport is visible.
  # Reference: https://developers.google.com/maps/documentation/urls/guide
  def map_link
    "https://www.google.com/maps/@?api=1&map_action=map&zoom=14&center=#{lat},#{long}"
  end


  def flight_radar_24_link
    if iata_code
      "https://www.flightradar24.com/airport/#{iata_code.downcase}"
    elsif lat_long_valid?
      "https://www.flightradar24.com/#{lat},#{long}/8"
    else
      nil
    end
  end
end


=begin
- id: '323361'
  ident: 00AA
  type: small_airport
  name: Aero B Ranch Airport
  latitude_deg: '38.704022'
  longitude_deg: "-101.473911"
  elevation_ft: '3435'
  continent: NA
  iso_country: US
  iso_region: US-KS
  municipality: Leoti
  scheduled_service: 'no'
  gps_code: 00AA
  iata_code:
  local_code: 00AA
  home_link:
  wikipedia_link:
  keywords:
=end
