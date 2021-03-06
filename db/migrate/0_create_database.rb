class CreateDatabase < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false
      t.string :password_digest
      t.string :role, default: "user"

      t.timestamps
    end

    create_table :tasks do |t|
      t.references :user, foreign_key: true, index: true, null: false

      t.string :text, null: false
      t.text :briefing, null: false, default: ''

      t.string :status, null: false, default: 'frozen'

      t.timestamps
    end

    create_table :activities do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :task, foreign_key: true, null: false, index: true

      t.datetime :started_at, null: false
      t.datetime :finished_at

      t.timestamps
    end

    create_table :remarks do |t|
      t.references :activity, foreign_key: true
      t.references :user, foreign_key: true
      t.text :text, null: false

      t.timestamps
    end
  end
end
