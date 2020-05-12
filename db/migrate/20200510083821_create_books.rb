class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :pages
      t.string :name
      t.string :review
      t.string :author
      
      t.belongs_to :user

      t.timestamps
    end
  end
end
