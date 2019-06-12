# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :booking_detail
  enum status: { put: 0, pending: 1, completed: 2 }
end
