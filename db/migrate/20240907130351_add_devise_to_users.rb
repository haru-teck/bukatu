# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.0]
  def self.up
    change_table :users, bulk: true do |t|
      ## Database authenticatable
      t.string :name, null: false
      t.string :encrypted_password, null: false, default: ""
      t.integer :role_id, null: false
      t.string :telephone, null: false

      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    add_index :users, :telephone, unique: true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end