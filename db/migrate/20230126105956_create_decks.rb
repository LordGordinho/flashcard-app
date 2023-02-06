class CreateDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.string :description

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
