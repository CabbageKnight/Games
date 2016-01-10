class AddAttachmentImageToCabbages < ActiveRecord::Migration
  def self.up
    change_table :cabbages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cabbages, :image
  end
end
