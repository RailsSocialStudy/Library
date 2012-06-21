class CreateBookUsers < ActiveRecord::Migration
  def change
    create_table :book_users do |t|
      t.string :user_id
      t.string :book_id

      t.timestamps
    end
  end
end
