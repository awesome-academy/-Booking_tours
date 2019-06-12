# frozen_string_literal: true

class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.integer :status
      t.datetime :booking_date

      t.timestamps
    end
  end
end
