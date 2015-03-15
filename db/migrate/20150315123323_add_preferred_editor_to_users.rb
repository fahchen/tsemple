class AddPreferredEditorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :preferred_editor, :integer, default: 0
  end
end
