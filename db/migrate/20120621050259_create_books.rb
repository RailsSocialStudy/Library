class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :book_id
      t.string :isbn

      t.timestamps
    end
  end
end
