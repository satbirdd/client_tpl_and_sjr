class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :status
      t.text :description

      t.timestamps null: false
    end
  end
end
