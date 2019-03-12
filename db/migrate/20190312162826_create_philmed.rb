class CreatePhilmed < ActiveRecord::Migration[5.0]
  def change
    create_table :philmeds do |t|
      t.text :upset1
      t.text :upset2
      t.text :upset3
      t.timestamps
    end
  end
end
