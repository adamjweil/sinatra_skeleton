class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title, NULL: false
      t.string :description, NULL: false
      t.string :user_id, foreign_key: true, NULL: false

      t.timestamps(NULL: false)
    end
  end
end
