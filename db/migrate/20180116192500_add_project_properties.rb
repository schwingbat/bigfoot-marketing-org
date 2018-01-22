class AddProjectProperties < ActiveRecord::Migration[5.1]
  def change
    # Projects are owned by one user
    add_reference :projects, :user
    add_foreign_key :projects, :users

    # Projects have many formats
    add_reference :projects, :format
    add_foreign_key :projects, :formats

    # Projects have many attachments
    add_reference :projects, :attachment
    add_foreign_key :projects, :attachments

    add_column :projects, :organization, :string
    add_column :projects, :location, :string
    add_column :projects, :when, :datetime
    add_column :projects, :due, :datetime
  end
end
