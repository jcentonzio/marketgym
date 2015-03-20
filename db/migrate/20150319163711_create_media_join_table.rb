class CreateMediaJoinTable < ActiveRecord::Migration
  def change
    create_join_table :periods, :schedules do |t|
      # t.index [:period_id, :schedule_id]
      # t.index [:schedule_id, :period_id]
    end
  end
end
