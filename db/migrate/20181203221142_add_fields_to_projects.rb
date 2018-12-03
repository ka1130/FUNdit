class AddFieldsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :website, :string
    add_column :projects, :pledging_ends_on, :date
  end
end
