# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address
      t.datetime :create_at
      t.datetime :update_at
      t.integer :role

      t.timestamps
    end
  end
end
