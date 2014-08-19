class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :text

      t.timestamps
    end
  end
end
