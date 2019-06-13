# frozen_string_literal: true

class CreateBackAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :back_accounts do |t|
      t.references :user, foreign_key: true
      t.integer :bank_name

      t.timestamps
    end
  end
end
