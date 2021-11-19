class CreateEmployeeApps < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_apps do |t|
      t.string :employee_name
      t.integer :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
