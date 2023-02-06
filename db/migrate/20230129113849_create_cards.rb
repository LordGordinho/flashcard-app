class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :deck, null: false, foreign_key: true
      t.string :content_front
      t.string :content_back
      t.integer :position

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
