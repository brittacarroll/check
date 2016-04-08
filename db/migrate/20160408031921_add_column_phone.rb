class AddColumnPhone < ActiveRecord::Migration
  def change
    add_column :phones, :quantity, :integer, numericality: { greater_than_or_equal_to: 0 }
  end
end
