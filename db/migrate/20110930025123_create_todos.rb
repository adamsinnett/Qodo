class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :body
      t.text :desc
      t.boolean :done
      t.datetime :deadline

      t.timestamps
    end
  end
end
