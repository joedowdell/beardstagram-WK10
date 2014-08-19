class CreateJoinTableClipsShares < ActiveRecord::Migration
  def change
    create_join_table :clips, :shares do |t|
      # t.index [:clip_id, :share_id]
      # t.index [:share_id, :clip_id]
    end
  end
end
