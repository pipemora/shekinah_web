class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :mes
      t.string :dia
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
