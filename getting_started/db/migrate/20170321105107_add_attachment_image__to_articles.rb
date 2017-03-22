class AddAttachmentImageToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image_
    end
  end

  def self.down
    remove_attachment :articles, :image_
  end
end
