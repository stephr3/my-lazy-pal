class AddMediaTypeColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :media_type, :string
  end
end
