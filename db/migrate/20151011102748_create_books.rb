class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :author
      t.string :publisher
      t.date :published_date
      t.text :description
      t.text :isbns
      t.integer :page_count
      t.string :print_type
      t.string :category
      t.string :language
      t.image :book_image

      t.timestamps null: false
    end
  end
end
