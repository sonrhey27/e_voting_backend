class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :uuid
      t.integer :country_id
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
