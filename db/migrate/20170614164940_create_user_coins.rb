class CreateUserCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :user_coins do |t|
      t.string :name
      t.decimal :price
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
