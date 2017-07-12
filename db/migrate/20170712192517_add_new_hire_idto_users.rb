class AddNewHireIdtoUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :new_hire_id, :integer
  end
end
