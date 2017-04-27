class AddAttachmentImageToDynimages < ActiveRecord::Migration
  def self.up
    change_table :dyn_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dyn_images, :image
  end
end
