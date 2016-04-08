class Phone < ActiveRecord::Base
  belongs_to :operating_system

  validates :manufacturer, presence: true
  validates :screen_size, presence: true
  validates :operating_system, presence: true
  validates :charging_port, presence: true
  validates :name, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def in_stock?
    quantity > 0 && !quantity.blank?
  end
end
