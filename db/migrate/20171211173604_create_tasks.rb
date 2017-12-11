class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :text, null: false
      t.boolean :current, default: false

      t.timestamps
    end

    create_table :activities do |t|
      t.references :task, foreign_key: true, null: false, index: true

      t.datetime :started_at, null: false
      t.datetime :finished_at

      t.timestamps
    end
  end
end
