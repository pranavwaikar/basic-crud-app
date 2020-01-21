class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :designation

      t.timestamps null: false
    end
  end
end
