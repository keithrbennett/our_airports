class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :oa_id
      t.string :ident
      t.string :type
      t.string :name
      t.decimal :lat
      t.decimal :long
      t.integer :elevation_ft
      t.string :continent
      t.string :iso_country
      t.string :iso_region
      t.string :municipality
      t.boolean :scheduled_service
      t.string :gps_code
      t.string :iata_code
      t.string :home_link
      t.string :wikipedia_link
      t.string :keywords

      t.timestamps
    end
  end
end
