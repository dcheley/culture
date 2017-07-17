class AddContactstoTracker < ActiveRecord::Migration[5.1]
  def change
    rename_column :trackers, :contact, :contact_one

    add_column :trackers, :contact_two, :string
    add_column :trackers, :contact_three, :string
    add_column :trackers, :contact_four, :string
    add_column :trackers, :contact_five, :string
  end
end
