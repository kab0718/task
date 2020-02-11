class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, limit: 30, null: false
      t.text :description

      t.timestamps
      t.index :name, unique: true
    end
  end
end
