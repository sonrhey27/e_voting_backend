class CreateMunicipalities < ActiveRecord::Migration[6.1]
  def change
    create_table :municipalities do |t|
      t.string :uuid
      t.integer :region_id
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
