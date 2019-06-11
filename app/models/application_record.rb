# frozen_string_literal: true

# Run tests in parallel with specified workers
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
