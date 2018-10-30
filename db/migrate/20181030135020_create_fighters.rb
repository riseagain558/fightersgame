class CreateFighters < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
