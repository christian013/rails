class AddDatePublishedToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :date_published, :date
  end
end
