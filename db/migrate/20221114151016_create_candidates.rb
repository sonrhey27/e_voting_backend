class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :uuid
      t.integer :position_id
      t.string :name

      t.timestamps
    end
  end
end
