class CreateOutlets < ActiveRecord::Migration[6.0]
  def change
    create_table :outlets do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phonenumber
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :outlets, :email, unique: true
  end
end
