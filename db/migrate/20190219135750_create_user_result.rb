class CreateUserResult < ActiveRecord::Migration[5.2]
  def change
    create_table :user_results do |t|
      t.references :user, foreign_key: true
      t.references :track, foreign_key: true
      t.references :championship, foreign_key: true
      t.integer :position
      t.timestamps
    end
  end
end
