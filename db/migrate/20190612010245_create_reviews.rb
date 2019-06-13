# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.integer :rating
      t.references :tour, foreign_key: true
      t.references :comment, foreign_key: true
      t.datetime :review_day

      t.timestamps
    end
  end
end
