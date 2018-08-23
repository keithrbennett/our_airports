json.extract! country, :id, :oa_id, :code, :name, :continent, :wikipedia_link, :keywords, :created_at, :updated_at
json.url country_url(country, format: :json)
