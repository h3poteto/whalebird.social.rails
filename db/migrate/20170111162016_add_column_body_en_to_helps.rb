class AddColumnBodyEnToHelps < ActiveRecord::Migration[4.2]
  def up
    remove_column :helps, :body
    remove_column :helps, :title
    add_column :helps, :title_en, :text, after: :id
    add_column :helps, :title_ja, :text, after: :title_en
    add_column :helps, :body_en, :text, after: :title_ja
    add_column :helps, :body_ja, :text, after: :body_en
  end

  def down
    remove_column :helps, :title_en
    remove_column :helps, :title_ja
    remove_column :helps, :body_en
    remove_column :helps, :body_ja
    add_column :helps, :title, :text, after: :id
    add_column :helps, :body, :text, after: :title
  end
end
