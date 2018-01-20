class CreateFormats < ActiveRecord::Migration[5.1]
  def change
    create_table :formats do |t|
      t.string :name
      t.string :description
      t.string :finish
      t.boolean :printable
      t.string :warning

      t.timestamps
    end
  end
end
