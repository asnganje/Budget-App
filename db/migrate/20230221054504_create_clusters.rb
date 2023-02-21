class CreateClusters < ActiveRecord::Migration[7.0]
  def change
    create_table :clusters do |t|
      t.string :name
      t.text :icon
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
