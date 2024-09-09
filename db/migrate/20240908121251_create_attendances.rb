class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :event, null: false, foreign_key: true  # 外部キー制約を追加
      t.references :user, null: false, foreign_key: true  # 外部キー制約を追加
      t.text :check, null: false
      t.text :detail, null: false 

      t.timestamps
    end
  end
end
