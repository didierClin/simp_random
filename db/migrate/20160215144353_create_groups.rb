class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :nom
      t.string :salle
      t.string :tache

      t.timestamps null: false
    end
  end
end
