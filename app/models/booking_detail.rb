# frozen_string_literal: true

class BookingDetail < ApplicationRecord
  belongs_to :tour
  belongs_to :booking
  belongs_to :payment
end
