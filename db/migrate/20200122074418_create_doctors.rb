class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :expertise
      t.text :clinic_address
      t.string :phone

      t.timestamps null: false
    end
  end
end
