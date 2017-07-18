class AddColumnsToUsersAndActs < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :organization, :string

    add_column :activities, :new_hire_description, :string
    add_column :contents, :new_hire_description, :string
    
    rename_column :activities, :description, :admin_description
    rename_column :contents, :description, :admin_description
  end
end
