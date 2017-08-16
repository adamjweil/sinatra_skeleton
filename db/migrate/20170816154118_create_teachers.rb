class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name, NULL: false
      t.string :last_name, NULL: false
      t.string :username, NULL: false
      t.string :email, NULL: false
      t.string :password_digest, NULL: false

      t.timestamps(NULL: false)
    end
  end
end
