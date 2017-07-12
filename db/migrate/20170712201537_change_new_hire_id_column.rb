class ChangeNewHireIdColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :new_hire_id

    add_column :users, :new_hire_email, :string
  end
end
