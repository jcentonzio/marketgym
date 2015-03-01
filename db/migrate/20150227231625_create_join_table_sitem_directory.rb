class CreateJoinTableSitemDirectory < ActiveRecord::Migration
  def change
    create_join_table :sitems, :directories do |t|
      # t.index [:sitem_id, :directory_id]
      # t.index [:directory_id, :sitem_id]
    end
  end
end
