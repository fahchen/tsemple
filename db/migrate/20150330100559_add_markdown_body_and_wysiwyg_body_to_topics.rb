class AddMarkdownBodyAndWysiwygBodyToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :markdown_body, :text
    add_column :topics, :wysiwyg_body, :text
  end
end
