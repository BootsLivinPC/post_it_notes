class AddAuthorToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :author, :string
  end
end
