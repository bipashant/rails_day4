class AddColumnArticleIdToTag1 < ActiveRecord::Migration
  def change
    add_column :tags, :article_id, :integer
  end
end
