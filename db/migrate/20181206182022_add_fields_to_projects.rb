class AddFieldsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :description, :text
    add_column :projects, :website, :string
  end
end
