# frozen_string_literal: true

class Payment < ApplicationRecord
  belongs_to :booking_detail
  belongs_to :bank_account
end
