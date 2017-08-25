class AddColumnsToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :email_instructions, :string
  end
end
