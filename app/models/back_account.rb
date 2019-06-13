# frozen_string_literal: true

class BackAccount < ApplicationRecord
  belongs_to :user
  has_many :payments
end
