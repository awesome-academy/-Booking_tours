# frozen_string_literal: true

class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :image
      t.integer :num_people
      t.string :food
      t.string :place
      t.datetime :tour_date
      t.integer :status
      t.integer :category

      t.timestamps
    end
  end
end
