class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :calendar, null: false, foreign_key: true
      t.string :event_title, null: false
      t.string :explanation, null: false

      t.timestamps
    end
  end
end
