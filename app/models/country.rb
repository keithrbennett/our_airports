class Country < ApplicationRecord

  def self.from_source_hash(h)
    Country.new(
      oa_id:           h['id'],
      code:            h['code'],
      name:            h['name'],
      continent:       h['continent'],
      wikipedia_link:  h['wikipedia_link'],
      keywords:        h['keywords']
    )
  end


  def to_h
    {
      id:             id,
      oa_id:          oa_id,
      code:           code,
      name:           name,
      continent:      continent,
      wikipedia_link: wikipedia_link,
      keywords:       keywords
    }
  end
end
