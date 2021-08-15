class Item < ApplicationRecord
  def complete?
    completed_at.present?
  end
end
