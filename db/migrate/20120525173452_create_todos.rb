class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.integer :position
      t.boolean :done

      t.timestamps
    end
  end
end
