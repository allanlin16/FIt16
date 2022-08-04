class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :exercise
      t.integer :set
      t.integer :rep
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
