class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :creature
      t.string :name
      t.string :state
      t.string :sport

      t.timestamps null: false
    end
  end
end
