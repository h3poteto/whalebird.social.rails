class RemoveHelps < ActiveRecord::Migration[5.2]
  def change
    drop_table :helps
  end
end
