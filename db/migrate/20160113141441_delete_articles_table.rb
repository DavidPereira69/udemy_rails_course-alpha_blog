class DeleteArticlesTable < ActiveRecord::Migration
  def up
    drop_table :articles_tables
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
