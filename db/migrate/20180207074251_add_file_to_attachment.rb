class AddFileToAttachment < ActiveRecord::Migration[5.1]
  def change
    add_attachment :attachments, :file
  end
end
