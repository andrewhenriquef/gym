class CreateClientWorkouts < ActiveRecord::Migration
  def change
    create_table :client_workouts do |t|
      t.string :client_name
      t.string :trainer
      t.integer :duration_mins
      t.date :data_of_workout
      t.decimal :paid_amount

      t.timestamps null: false
    end
  end
end
