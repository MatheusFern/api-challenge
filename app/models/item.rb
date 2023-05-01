class Item < ApplicationRecord
  include Sortable



  # validates :title, presence: true
  # validates :desc, presence: true
  # validates :is_active, presence: true

  def self.sort_by
    %w[id title desc is_active]
  end

  private_class_method :sort_by
end
