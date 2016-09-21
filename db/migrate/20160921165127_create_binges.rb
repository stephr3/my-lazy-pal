class CreateBinges < ActiveRecord::Migration[5.0]
  def change
    create_table :binges do |t|
      t.datetime :start
      t.datetime :finish
      t.integer :show_id
      t.integer :user_id
    end
  end
end
