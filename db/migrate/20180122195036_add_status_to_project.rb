class AddStatusToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :status, :integer, default: 0
  end
end
