class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
    t.references :category, index: true, foreign_key: true
    t.references :user, index: true, foreign_key: true
    t.timestamps null: false
    end
    add_index :lessons, [:user_id, :category_id]
  end
end
