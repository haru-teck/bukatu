class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.bigint :total_id, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :response_content, null: false

      t.timestamps
    end

    add_foreign_key :responses, :totals, column: :total_id
  end
end
