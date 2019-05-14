class AddColumnToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :title, :string
    add_column :notes, :body, :text
  end
end
