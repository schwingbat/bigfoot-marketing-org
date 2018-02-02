class AddContactInfoToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :contact_name, :string
    add_column :projects, :contact_email, :string
    add_column :projects, :contact_phone, :string

    remove_column :projects, :user_id
    remove_column :projects, :format_id
    remove_column :projects, :attachment_id
  end
end
