# frozen_string_literal: true

class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.references :customer, index: true, foreign_key: true
      t.boolean :paid
      t.decimal :amount
      t.integer :currency
      t.boolean :refunded

      t.timestamps null: false
    end
  end
end
