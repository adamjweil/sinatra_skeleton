class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id, NULL: false
      t.integer :teacher_id, NULL: false
      t.string :title
      t.string :class
      t.string :note, NULL: false

      t.timestamps(NULL: false)
    end
  end
end
