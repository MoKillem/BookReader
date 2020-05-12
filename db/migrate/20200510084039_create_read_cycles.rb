class CreateReadCycles < ActiveRecord::Migration[6.0]
  def change
    create_table :read_cycles do |t|
      t.string :pagesGoal
      
      t.belongs_to :user
      t.timestamps
    end
  end
end
