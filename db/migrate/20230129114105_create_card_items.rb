class CreateCardItems < ActiveRecord::Migration[7.0]
  def change
    create_table :card_items do |t|
      t.references :card, null: false, foreign_key: true
      t.boolean :is_correct, default: false

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
