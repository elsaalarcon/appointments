class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.string :comments
      t.references :notes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
