class Task < ApplicationRecord
  include Sortable
  # validates :name, presence: true
  # validates :body, presence: true
  # validates :is_completed, presence: true



  def self.sort_by
    %w[id name body is_completed]
  end

  private_class_method :sort_by
end
