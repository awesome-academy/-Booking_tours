# frozen_string_literal: true

class Review < ApplicationRecord
  has_many :comments
  belongs_to :user
  belongs_to :tour
end
