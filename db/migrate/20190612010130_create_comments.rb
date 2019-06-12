# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.integer :reply_id
      t.string :content
      t.string :type

      t.timestamps
    end
  end
end
