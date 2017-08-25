class AddEmailInstructionsToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :email_instructions, :string
  end
end
