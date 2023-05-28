class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :url1,      null: false
      t.string :url2
      t.string :url3
      t.string :url4

      t.timestamps
    end
  end
end
