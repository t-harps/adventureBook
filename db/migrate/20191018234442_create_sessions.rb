class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.references :offer, null: false, foreign_key: true
      t.datetime :date
      t.integer :spaces

      t.timestamps
    end
  end
end
