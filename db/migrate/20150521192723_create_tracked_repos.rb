class CreateTrackedRepos < ActiveRecord::Migration
  def change
    create_table :tracked_repos do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
