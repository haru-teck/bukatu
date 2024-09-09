class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.string :goal,              null: false
      t.date :entry_date,          null: false
      t.integer :content_id,       null: false
      t.text :review,              null: false
      t.integer :goal_completion,  null: false

      t.timestamps
    end
  end
end