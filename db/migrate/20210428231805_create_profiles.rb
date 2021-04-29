class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :birth
      t.boolean :gender
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :license
      t.string :driver_license
      t.references :user, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
