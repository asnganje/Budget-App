class CreateAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :associations do |t|
      t.references :start, foreign_key: { to_table: :starts }, null: false
      t.references :cluster, foreign_key: { to_table: :clusters }, null: false

      t.timestamps
    end
  end
end
