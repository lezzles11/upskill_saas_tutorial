class CreatePhilmeds < ActiveRecord::Migration[5.0]
  def change
    create_table :philmeds do |t|
      t.text :idea1
      t.text :idea2
      t.text :idea3
      t.text :idea4
      t.text :anxious1
      t.text :anxious2
      t.text :anxious3
      t.text :anxious4
      t.text :anxious5
      t.text :anxious6
      t.text :anxious7
      t.text :anxious8
      t.text :upset1
      t.text :upset2
      t.text :upset3
      t.text :upset4
      t.text :upset5
      t.text :upset6
      t.text :upset7
      t.text :upset8
      t.text :upset9
      t.text :excited1
      t.text :excited2
      t.text :excited3
      t.text :excited4
      t.text :excited5
      t.text :excited6
      t.timestamps
    end
  end
end
