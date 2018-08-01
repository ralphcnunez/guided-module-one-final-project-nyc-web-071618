class CreateDogWalkers < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_walkers do |t|
      t.integer :dog_id
      t.integer :walker_id
    end
  end
end
