class CreateBooksShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :books_shelves, :id => false do |t|
      t.integer :book_id
      t.integer :shelf_id
    end
  end
end
