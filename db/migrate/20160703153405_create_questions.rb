class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    t.string :name
    t.references :category, index: true, foreign_key: true
    t.timestamps null: false
    end
  end
  add_index :questions, [:category_id]
end
