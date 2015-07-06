class AddDescriptionColumnToProjectsTable < ActiveRecord::Migration
  def change
    add_column :projects, :descrition, :text
  end
end
