class CreateTotals < ActiveRecord::Migration[7.0]
  def change
    create_table :totals do |t|
      t.string :total_title,    null: false
      t.text :content,        null: false

      t.timestamps
    end
  end
end
