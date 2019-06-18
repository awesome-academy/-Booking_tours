# frozen_string_literal: true

module UsersHelper
  def full_name
    "#{firstname} #{lastname}"
  end
end
