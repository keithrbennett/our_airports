class Region < ApplicationRecord
  def self.from_source_hash(h)
    Region.new(
        oa_id:           h['id'],
        code:            h['code'],
        local_code:      h['local_code'],
        name:            h['name'],
        continent:       h['continent'],
        iso_country:     h['iso_country'],
        wikipedia_link:  h['wikipedia_link'],
        keywords:        h['keywords']
    )
  end


  def to_h
    {
        id:             id,
        oa_id:          oa_id,
        code:           code,
        local_code:     local_code,
        name:           name,
        continent:      continent,
        iso_country:    iso_country,
        wikipedia_link: wikipedia_link,
        keywords:       keywords
    }
  end

end
