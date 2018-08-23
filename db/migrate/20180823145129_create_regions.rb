class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :oa_id
      t.string :code
      t.string :local_code
      t.string :name
      t.string :continent
      t.string :iso_country
      t.string :wikipedia_link
      t.string :keywords

      t.timestamps
    end
  end
end
