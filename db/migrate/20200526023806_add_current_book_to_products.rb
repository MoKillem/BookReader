class AddCurrentBookToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :books,:current_book, :boolean, default: false
  end
end
