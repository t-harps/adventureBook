class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :activity_type_id
      t.integer :outlet_id
      t.timestamps
    end
  end
end
