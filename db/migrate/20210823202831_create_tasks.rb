class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :priority
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
