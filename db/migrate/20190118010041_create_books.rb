class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :cover
      t.text :synopsis

      t.timestamps
    end
  end
end
