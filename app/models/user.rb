# frozen_string_literal: true

class User < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :comments
  has_many :bank_accounts
  enum role: { admin: 0, member: 1 }
end
