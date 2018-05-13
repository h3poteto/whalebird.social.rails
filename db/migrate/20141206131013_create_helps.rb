class CreateHelps < ActiveRecord::Migration[4.2]
  def change
    create_table :helps do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
