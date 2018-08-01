class CreateWalkers < ActiveRecord::Migration[5.0]
  def change
    create_table :walkers do |t|
      t.string :name
      t.string :schedule
      t.integer :price
    end 
  end
end
