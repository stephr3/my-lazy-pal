class RenameShowsTables < ActiveRecord::Migration[5.0]
  def change
    rename_table :shows_tables, :shows
  end
end
