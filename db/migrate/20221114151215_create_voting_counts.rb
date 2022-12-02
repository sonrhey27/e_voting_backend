class CreateVotingCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :voting_counts do |t|
      t.string :uuid
      t.integer :candidate_id
      t.integer :vote
      t.integer :country_id
      t.integer :region_id
      t.integer :municipality_id
      t.integer :user_id
      t.integer :position_id

      t.timestamps
    end
  end
end
