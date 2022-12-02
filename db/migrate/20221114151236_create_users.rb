class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :uuid
      t.string :name
      t.integer :country_id
      t.integer :region_id
      t.integer :municipality_id
      t.string :email_adress
      t.string :password_digest

      t.timestamps
    end
  end
end
