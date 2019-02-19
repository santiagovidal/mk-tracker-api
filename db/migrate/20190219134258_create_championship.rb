class CreateChampionship < ActiveRecord::Migration[5.2]
  def change
    create_table :championships do |t|
      t.integer :races_count
      t.timestamps
    end
  end
end
