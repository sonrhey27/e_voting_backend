class CreateVotingCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :voting_counts do |t|
      t.integer :candidate_id
      t.integer :vote

      t.timestamps
    end
  end
end
