class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.date :date
      t.references :member1
      t.references :member2

      t.timestamps
    end
  end
end
