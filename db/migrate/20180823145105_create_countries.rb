class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :oa_id
      t.string :code
      t.string :name
      t.string :continent
      t.string :wikipedia_link
      t.string :keywords

      t.timestamps
    end
  end
end
