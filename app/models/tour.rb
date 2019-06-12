# frozen_string_literal: true

class Tour < ApplicationRecord
  has_many :reviews
  has_many :booking_details
  enum status: { notavailable: 0, available: 1 }
end
