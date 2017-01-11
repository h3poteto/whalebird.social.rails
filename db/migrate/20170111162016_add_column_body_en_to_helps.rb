class AddColumnBodyEnToHelps < ActiveRecord::Migration
  def up
    remove_column :helps, :body
    add_column :helps, :body_en, :text, after: :title
    add_column :helps, :body_ja, :text, after: :body_en
  end

  def down
    remove_column :helps, :body_en
    remove_column :helps, :body_ja
    add_column :helps, :body, :text, after: :title
  end
end
