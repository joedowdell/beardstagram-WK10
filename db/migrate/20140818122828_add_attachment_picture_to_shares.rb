class AddAttachmentPictureToShares < ActiveRecord::Migration
  def self.up
    change_table :shares do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :shares, :picture
  end
end
