class CreateShowsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :shows_tables do |t|
      t.string :name
      t.string :description
      t.string :category
    end
  end
end
