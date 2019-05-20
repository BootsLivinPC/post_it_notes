class AddBelongsToNotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :notes, :accounts, foreign_key: true
  end
end
