class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, limit: 30
      t.text :description

      t.timestamps null: false
      t.index :name, unique: true
    end
  end
end
