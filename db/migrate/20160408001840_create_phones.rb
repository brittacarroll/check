class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.belongs_to :operating_system, null: false
      t.string :manufacturer, null: false
      t.string :screen_size, null: false
      t.string :charging_port, null: false
      t.string :name, null: false
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
