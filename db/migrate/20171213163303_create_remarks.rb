class CreateRemarks < ActiveRecord::Migration[5.1]
  def change
    create_table :remarks do |t|
      t.references :activity, foreign_key: true
      t.references :user, foreign_key: true
      t.text :text, null: false

      t.timestamps
    end
  end
end
