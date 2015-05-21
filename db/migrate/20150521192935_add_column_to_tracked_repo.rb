class AddColumnToTrackedRepo < ActiveRecord::Migration
  def change
    add_column :tracked_repos, :organization_name, :string
    add_column :tracked_repos, :repository_name, :string
  end
end
