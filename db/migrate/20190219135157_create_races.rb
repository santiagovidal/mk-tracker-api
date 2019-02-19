class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.references :championship, foreign_key: true
      t.references :track, foreign_key: true
      t.timestamps
    end
  end
end
