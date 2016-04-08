class AddDeleteColumnPhone < ActiveRecord::Migration
  def change
    remove_column :phones, :quantity, :integer
  end
end
