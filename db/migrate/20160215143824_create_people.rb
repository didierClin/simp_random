class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nom
      t.string :email
      t.integer :tel
      t.integer :group_id
      t.boolean :sensei

      t.timestamps null: false
    end
  end
end
