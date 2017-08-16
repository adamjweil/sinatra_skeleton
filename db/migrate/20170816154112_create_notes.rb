class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id, NULL: false
      t.integer :teacher_id, NULL: false
      t.string :title, NULL: false
      t.string :class, NULL: false
      t.string :content, NULL: false

      t.timestamps(NULL: false)
    end
  end
end
