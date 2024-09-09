class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.text :result_event,     null: false
      t.date :entry_date,       null: false
      t.text :score,            null: false
   
      t.timestamps
    end
  end
end
