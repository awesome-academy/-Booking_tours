# frozen_string_literal: true

class CreateBookingDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_details do |t|
      t.references :booking, foreign_key: true
      t.references :tour, foreign_key: true
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
