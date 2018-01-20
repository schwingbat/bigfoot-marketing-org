class CreateProjectFormats < ActiveRecord::Migration[5.1]
  def change
    create_table :project_formats do |t|
      t.references :project
      t.references :format
      t.integer :quantity

      t.timestamps
    end
  end
end
