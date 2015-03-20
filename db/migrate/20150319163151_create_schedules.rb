class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.time :star_time
      t.time :term_time
      t.references :directory, index: true

      t.timestamps
    end
  end
end
