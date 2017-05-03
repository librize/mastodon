class AddExtraToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :statuses, :extra, :jsonb
    add_index :statuses, :extra, using: :gin
  end
end
