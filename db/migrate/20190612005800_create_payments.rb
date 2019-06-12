# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :bookdetails, foreign_key: true
      t.integer :payment_amount
      t.datetime :payment_day
      t.references :back, foreign_key: true

      t.timestamps
    end
  end
end
